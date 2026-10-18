"""Fetch the observed KernelBasher release via xbins' normal bot login."""
import datetime, ftplib, hashlib, io, json, sys, zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT.parent / 'xbox_open_bios/reverse_engineering/scripts'))
from xbins_catalog import login_details

host, port, user, password = login_details()
remote_dir = '/XBOX/PC Based Applications/bios tools/KernelBasher'
remote_file = remote_dir + '/KernelBasherV1.1.zip'
data = io.BytesIO()
with ftplib.FTP(timeout=30, encoding='latin-1') as ftp:
    ftp.connect(host, port)
    ftp.login(user, password)
    rows = []
    ftp.retrlines('LIST ' + remote_dir, rows.append)
    print(json.dumps({'listing': rows}), flush=True)
    def receive(chunk):
        if data.tell() + len(chunk) > 10_000_000:
            raise ValueError('Archive exceeds expected bounded size')
        data.write(chunk)
    ftp.retrbinary('RETR ' + remote_file, receive)
blob = data.getvalue()
archive = ROOT / 'original/KernelBasherV1.1.zip'
archive.write_bytes(blob)
manifest = {'retrieved_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
            'source': 'xbins FTP', 'remote_path': remote_file, 'listing': rows,
            'bytes': len(blob), 'sha256': hashlib.sha256(blob).hexdigest(), 'members': []}
with zipfile.ZipFile(io.BytesIO(blob)) as z:
    for entry in z.infolist():
        dest = (ROOT / 'original' / entry.filename).resolve()
        if not dest.is_relative_to((ROOT / 'original').resolve()):
            raise ValueError('Unsafe archive path')
        if entry.is_dir():
            dest.mkdir(parents=True, exist_ok=True)
            continue
        if entry.file_size > 20_000_000:
            raise ValueError('Member exceeds limit')
        content = z.read(entry)
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_bytes(content)
        manifest['members'].append({'name': entry.filename, 'bytes': len(content),
                                    'sha256': hashlib.sha256(content).hexdigest()})
(ROOT / 'evidence/download.json').write_text(json.dumps(manifest, indent=2) + '\n')
print(json.dumps(manifest, indent=2))
