"""Run the existing original-output comparisons and core checks inside Wine."""
from pathlib import Path
import io
import json
import subprocess
import tarfile

ROOT=Path(__file__).resolve().parents[1]
CONTAINER='kernelbasher-worker-check'
files=[ROOT/'tools/regression_test.py',ROOT/'tools/replay_comparisons.py']
for folder in ('evidence/differential','original/extracted/Presets','original/extracted/xfiles'):
    files.extend(p for p in (ROOT/folder).rglob('*') if p.is_file())
buffer=io.BytesIO()
with tarfile.open(fileobj=buffer,mode='w') as archive:
    for path in files:archive.add(path,arcname=path.relative_to(ROOT).as_posix())
subprocess.run(['docker','exec',CONTAINER,'mkdir','-p','/tmp/kb-tests'],check=True)
subprocess.run(['docker','exec','-i',CONTAINER,'tar','--no-same-owner','-xf','-','-C','/tmp/kb-tests'],input=buffer.getvalue(),check=True)
for script,report in [('regression_test.py','regression-results.json'),('replay_comparisons.py','final-replay-results.json')]:
    subprocess.run(['docker','exec','-e','KB_EXE=/app/engine/KernelBasher-cli.exe','-e','KB_RUNNER=["wine"]',CONTAINER,'python3','/tmp/kb-tests/tools/'+script],check=True)
    data=subprocess.check_output(['docker','exec',CONTAINER,'cat','/tmp/kb-tests/evidence/'+report])
    json.loads(data)
    (ROOT/'evidence'/('wine-'+report)).write_bytes(data)
subprocess.run(['docker','exec',CONTAINER,'rm','-rf','/tmp/kb-tests'],check=True)
