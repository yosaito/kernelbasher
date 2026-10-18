"""Small HTTP adapter for the unchanged x86 patch engine, running under Wine.

Only this fixed command is callable. Uploads use generated paths in a temporary
directory, are never executed, and are removed before the response is sent.
"""
import hashlib
import json
import math
import os
from pathlib import Path
import re
import signal
import struct
import subprocess
import tempfile
import threading

from flask import Flask, jsonify, request, Response
from werkzeug.exceptions import RequestEntityTooLarge

app = Flask(__name__)
app.config['MAX_CONTENT_LENGTH'] = 2 * 1024 * 1024
LOCK = threading.Lock()
ENGINE = os.environ.get('KB_ENGINE', '/app/engine/KernelBasher-cli.exe')
ORIGIN = os.environ.get('KB_ORIGIN', 'https://mather.click')


def options_bytes(s):
    if not isinstance(s, dict):
        raise ValueError('Settings must be an object.')
    colours = s.get('colours')
    if not isinstance(colours, list) or len(colours) != 19 or any(type(n) is not int or not 0 <= n <= 255 for n in colours):
        raise ValueError('Provide 19 colour channels between 0 and 255.')
    radius, camera, size = s.get('radius'), s.get('camera'), s.get('outputSize')
    if type(radius) not in (int, float) or not math.isfinite(radius) or not 0 <= radius <= 6.375:
        raise ValueError('Radius must be between 0 and 6.375.')
    if type(camera) is not int or not 1 <= camera <= 8:
        raise ValueError('Camera must be between 1 and 8.')
    if type(size) is not int or size not in (262144, 524288, 1048576):
        raise ValueError('Choose a supported output size.')
    flags = 0
    for bit, key in enumerate(('whiteSplash', 'whiteAnimation', 'keepMachinery', 'replaceLogo', 'random', 'wire', 'torn')):
        value = s.get(key)
        if type(value) not in (int, bool) or value not in (0, 1):
            raise ValueError('Invalid option: ' + key)
        flags |= int(value) << bit
    return b'KBO1' + bytes(colours) + b'\0' + struct.pack('<fIII', radius, camera, flags, size)


def run_engine(args, work):
    command = [ENGINE, *args] if os.name == 'nt' else ['wine', ENGINE, *args]
    # Put the native packer's own scratch directory inside the same disposable
    # job. Even a crash/timeout must not leave BIOS data in the Wine prefix.
    temporary = str(work) if os.name == 'nt' else 'Z:' + str(work).replace('/', '\\')
    env = {**os.environ, 'TEMP': temporary, 'TMP': temporary}
    process = subprocess.Popen(command, env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE, start_new_session=os.name != 'nt')
    try:
        stdout, stderr = process.communicate(timeout=20)
    except subprocess.TimeoutExpired:
        if os.name == 'nt':
            process.kill()
        else:
            os.killpg(process.pid, signal.SIGKILL)
            subprocess.run(['wineserver', '-k'], timeout=5, check=False, capture_output=True)
        process.communicate()
        raise ValueError('Patching timed out. Check that this is an unmodified supported BIOS.')
    if process.returncode:
        message = stderr.decode('utf-8', errors='replace').strip()
        # Only expose the application's bounded diagnostic, never Wine paths/logs.
        match = re.search(r'^Error: ([^\r\n]{1,250})', message, re.M)
        raise ValueError(match.group(1) if match else 'The patcher could not process this file.')


def error(message, status=400):
    return jsonify(error=message), status


@app.before_request
def same_origin():
    if request.method == 'POST' and request.headers.get('Origin') not in (None, ORIGIN):
        return error('Use this application from its own website.', 403)


@app.after_request
def headers(response):
    response.headers['Cache-Control'] = 'no-store'
    response.headers['X-Content-Type-Options'] = 'nosniff'
    return response


@app.errorhandler(RequestEntityTooLarge)
def too_large(_):
    return error('The upload exceeds 2 MiB.', 413)


@app.get('/health')
def health():
    return jsonify(status='ok', engine='KernelBasher 1.1', maxBiosBytes=1048576)


@app.post('/patch')
def patch():
    if not LOCK.acquire(blocking=False):
        response = jsonify(error='The patcher is busy. Please try again in a moment.')
        response.status_code = 429
        response.headers['Retry-After'] = '3'
        return response
    try:
        upload = request.files.get('bios')
        if upload is None:
            raise ValueError('Choose a BIOS file first.')
        bios = upload.read(1048577)
        if len(bios) not in (262144, 524288, 1048576):
            raise ValueError('A BIOS must be exactly 256 KiB, 512 KiB or 1 MiB.')
        raw = request.form.get('settings', '')
        if len(raw) > 4096:
            raise ValueError('Settings are too large.')
        try:
            settings = json.loads(raw)
        except (ValueError, TypeError):
            raise ValueError('Settings are not valid JSON.') from None
        encoded = options_bytes(settings)
        with tempfile.TemporaryDirectory(prefix='kb-') as job:
            work = Path(job)
            source, output, options = work/'bios.bin', work/'patched.bin', work/'options.bin'
            source.write_bytes(bios)
            options.write_bytes(encoded)
            args = ['patch-options', str(source), str(output), str(options)]
            if settings['replaceLogo']:
                logo = request.files.get('logo')
                if logo is None:
                    raise ValueError('Choose an X file or turn off custom lettering.')
                data = logo.read(262145)
                if len(data) > 262144 or not data.startswith(b'xof '):
                    raise ValueError('Choose a text DirectX X file under 256 KiB.')
                path = work/'logo.x'
                path.write_bytes(data)
                args.append(str(path))
            run_engine(args, work)
            result = output.read_bytes()
            if len(result) not in (262144, 524288, 1048576):
                raise ValueError('Unexpected output size; no download was produced.')
        stem = re.sub(r'[^a-zA-Z0-9_-]+', '-', Path(upload.filename or 'bios').stem).strip('-')[:70] or 'bios'
        response = Response(result, mimetype='application/octet-stream')
        response.headers['Content-Disposition'] = f'attachment; filename="{stem}-kernelbasher.bin"'
        response.headers['X-Input-SHA256'] = hashlib.sha256(bios).hexdigest()
        response.headers['X-Output-SHA256'] = hashlib.sha256(result).hexdigest()
        return response
    except ValueError as exc:
        return error(str(exc))
    except (OSError, subprocess.SubprocessError):
        app.logger.exception('Patcher worker failure')
        return error('The patcher is temporarily unavailable. Please try again.', 503)
    finally:
        LOCK.release()
