"""Assemble the static web editor and a small, reproducible worker context."""
from pathlib import Path
import shutil
import subprocess
import sys

ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'build/web'
subprocess.run([sys.executable,str(ROOT/'tools/build_preview.py')],check=True)
shutil.copytree(ROOT/'web/client',OUT,dirs_exist_ok=True)
shutil.copytree(ROOT/'build/preview',OUT/'preview',dirs_exist_ok=True)
for original,target in [('Presets','presets'),('xfiles','xfiles')]:
    shutil.copytree(ROOT/'original/extracted'/original,OUT/target,dirs_exist_ok=True)
worker=ROOT/'build/web-worker'
worker.mkdir(parents=True,exist_ok=True)
for source in (ROOT/'web/worker').iterdir():
    if source.is_file():(worker/source.name).write_bytes(source.read_bytes().replace(b'\r\n',b'\n'))
(worker/'engine').mkdir(exist_ok=True)
for name in ('KernelBasher-cli.exe','xbflash.dll','msvcr71.dll','config.ini'):
    shutil.copy2(ROOT/'build'/name,worker/'engine'/name)
print('Static web editor:',OUT)
print('Worker context:',worker)
