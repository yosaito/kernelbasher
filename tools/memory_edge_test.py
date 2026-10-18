"""Compare scanner corner cases with the ORIGINAL x86 code, plus patch overlaps."""
from pathlib import Path
import json,random,struct,subprocess,tempfile
from differential_test import ROOT,patterns,original,settings,fixture
EXE=ROOT/'build/KernelBasher-cli.exe'
results=[]
def run(*args,success=True):
 r=subprocess.run([str(EXE),*map(str,args)],capture_output=True,text=True,timeout=30)
 if (r.returncode==0)!=success:raise AssertionError((args,r.returncode,r.stderr))
 return r
with tempfile.TemporaryDirectory(prefix='kernelbasher-memory-') as temp:
 p=Path(temp);signatures=[bytes.fromhex(x['pattern']) for x in patterns()]
 # Include a complete second match, leading repeated prefixes, false starts that
 # consume another candidate's first byte, and every possible truncated suffix.
 crowded=bytearray()
 for sig in signatures:
  crowded+=b'\xa5'*16+sig+b'\xa5'*16+sig[:2]+sig+b'\xa5'*16+sig+b'\xa5'*16
 rng=random.Random(180026)
 cases=[('empty',b''),('all-zero',b'\0'*128),('all-ff',b'\xff'*128),
        ('dense-overlaps',bytes(crowded)),('random',rng.randbytes(1536))]
 for i,sig in enumerate(signatures):
  for length in range(1,len(sig)+1):
   cases.append((f'pattern-{i}-eof-{length}',b'\xa5'*32+sig[:length]))
 for kind in (1,4):
  for name,data in cases:
   inp=p/'scanner.bin';inp.write_bytes(data)
   expected=original(data,kind,settings(),1,0,scan_only=True)
   actual=json.loads(run('test-scanner',inp,kind).stdout)
   assert expected==actual,(kind,name,expected,actual)
  results.append(dict(test='scanner versus original x86',kind=kind,cases=len(cases),passed=True))
 # The unchanged input must survive both calls inside test-kernel. Large patch
 # spans consume subsequent sites in reversed layout; preserve this old behavior.
 for kind in (1,4):
  data=bytearray(b'\xa5'*0x10000)
  for i,sig in enumerate(reversed(signatures)):
   offset=0x200+i*0x600;data[offset:offset+len(sig)]=sig
  opts=settings(44)
  for a in (0xd34,0xdc4,0xdd0,0xdd8,0xddc):struct.pack_into('<I',opts,a,1)
  inp=p/'kernel.img';inp.write_bytes(data);op=p/'options.bin';op.write_bytes(opts)
  expected,sites=original(bytes(data),kind,opts,8,1)
  out=p/f'kernel-{kind}.img';run('test-kernel',inp,out,kind,op,8)
  assert expected==out.read_bytes()
  results.append(dict(test='reordered and consumed patch sites',kind=kind,bytes=len(data),passed=True))
 # A signature at the end would cause the legacy stream writer to grow output.
 # The new writer rejects it within the original buffer and creates no output.
 tail=bytearray(b'\xa5'*128);tail[-5:]=signatures[0];inp=p/'short.img';inp.write_bytes(tail)
 op=p/'zero-options.bin';op.write_bytes(settings())
 out=p/'should-not-exist.img';r=run('test-kernel',inp,out,1,op,1,success=False)
 assert 'exceeds kernel buffer' in r.stderr and not out.exists()
 assert inp.read_bytes()==tail
 results.append(dict(test='reject patch extending beyond EOF, preserve input',passed=True))
 # Kernel patching must work even when there is no usable temporary-file path.
 data=fixture();inp=p/'fixture.img';inp.write_bytes(data);op.write_bytes(settings())
 import os
 env=os.environ.copy();env['TMP']=str(p/'absent'/'temp');env['TEMP']=env['TMP']
 out=p/'without-temp.img'
 r=subprocess.run([str(EXE),'test-kernel',str(inp),str(out),'1',str(op),'1'],env=env,capture_output=True,text=True,timeout=30)
 assert r.returncode==0,r.stderr
 expected,_=original(data,1,settings(),1,0)
 assert out.read_bytes()==expected
 results.append(dict(test='patch without a usable temporary directory',passed=True))
(ROOT/'evidence/memory-edge-results.json').write_text(json.dumps(results,indent=2)+'\n')
print(json.dumps(results,indent=2))
