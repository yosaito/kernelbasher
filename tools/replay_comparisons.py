"""Fast final-build check against the saved ORIGINAL x86 output fixtures."""
from pathlib import Path
import hashlib,json,os,subprocess,tempfile
ROOT=Path(__file__).resolve().parents[1]
EVIDENCE=ROOT/'evidence/differential'
cases=json.loads((EVIDENCE/'results.json').read_text())
assert len(cases)==8 and all(case['match'] for case in cases)
results=[]
with tempfile.TemporaryDirectory(prefix='kernelbasher-replay-') as temp:
 for case in cases:
  i=case['case'];out=Path(temp)/f'case-{i}.img'
  args=[*json.loads(os.environ.get('KB_RUNNER','[]')),os.environ.get('KB_EXE',str(ROOT/'build/KernelBasher-cli.exe')),'test-kernel',
        str(EVIDENCE/'fixture.img'),str(out),str(case['kind']),
        str(EVIDENCE/f'options-{i}.bin'),str(case['camera'])]
  if i>=6:args.append(str(ROOT/'original/extracted/xfiles/xbmc-real.x'))
  r=subprocess.run(args,capture_output=True,text=True,timeout=30)
  assert r.returncode==0,r.stderr
  expected=(EVIDENCE/f'original-{i}.img').read_bytes();actual=out.read_bytes()
  assert actual==expected,f'Original output differs in case {i}'
  results.append(dict(case=i,bytes=len(actual),match=True,sha256=hashlib.sha256(actual).hexdigest()))
(ROOT/'evidence/final-replay-results.json').write_text(json.dumps(results,indent=2)+'\n')
print(f'{len(results)} final-build comparisons match saved original x86 outputs')
