"""Portable tests using generated data and the supplied presets/meshes, no BIOS needed."""
from pathlib import Path
import hashlib,json,os,random,struct,subprocess,tempfile
ROOT=Path(__file__).resolve().parents[1]
EXE=os.environ.get('KB_EXE',str(ROOT/'build/KernelBasher-cli.exe'))
RUNNER=json.loads(os.environ.get('KB_RUNNER','[]'))
results=[]
def call(*args,success=True):
 r=subprocess.run([*RUNNER,str(EXE),*map(str,args)],capture_output=True,text=True,timeout=45)
 if (r.returncode==0)!=success:raise AssertionError((args,r.returncode,r.stdout,r.stderr))
 return r
def record(name,**fields):
 results.append(dict(test=name,passed=True,**fields));print(json.dumps(results[-1]),flush=True)
with tempfile.TemporaryDirectory(prefix='kernelbasher-tests-') as temp:
 p=Path(temp)
 call('test-dependencies','.');record('xbflash DLL load, ABI exports and config')
 for file in sorted((ROOT/'original/extracted/Presets').glob('*.kbp')):
  out=p/(file.stem+'.kbp');call('test-preset-roundtrip',file,out)
  assert out.read_bytes()[:80]==file.read_bytes()[:80]
  record('preset slider round trip',file=file.name)
 for file in sorted((ROOT/'original/extracted/xfiles').glob('*.x')):
  r=call('logo-info',file);record('shipped mesh parser',file=file.name,counts=r.stdout.strip())
 rng=random.Random(20261018)
 for name,raw in [('small',b'KernelBasher recovery\0'*23),('block-boundary',rng.randbytes(32769)),('multi-block',rng.randbytes(100003)),('repetitive',b'ABCD'*65536)]:
  src=p/(name+'.raw');packed=p/(name+'.lzx');out=p/(name+'.decoded');src.write_bytes(raw)
  call('test-codec',src,packed);call('test-decode',packed,out,len(raw))
  assert out.read_bytes()==raw
  # The original immediate at 0040a488 is 12,000,000. This guards against
  # mistaking Ghidra's DAT label for a relocatable address under Windows/Wine.
  bits=''.join(f'{word:016b}' for word in struct.unpack('<3H',packed.read_bytes()[4:10]))
  assert bits[0]=='1' and int(bits[1:33],2)==12000000
  record('LZX round trip',fixture=name,input_bytes=len(raw),compressed_bytes=packed.stat().st_size,sha256=hashlib.sha256(raw).hexdigest())
 # Synthetic PE/.data and Evox ROM fixture: exercises container layout independently
 # of recognition checks. Contains no Microsoft Xbox kernel or bootable BIOS.
 rom=bytearray(b'\xff'*0x40000);footer=len(rom)-64;rom[footer:footer+10]=b'$EvoxRom$\0';struct.pack_into('<I',rom,footer+10,1024)
 kernel=bytearray(65536);kernel[:2]=b'MZ';struct.pack_into('<I',kernel,0x3c,0x80);kernel[0x80:0x84]=b'PE\0\0';struct.pack_into('<H',kernel,0x86,1);struct.pack_into('<H',kernel,0x94,0xe0)
 s=0x178;kernel[s:s+8]=b'.data\0\0\0';struct.pack_into('<IIII',kernel,s+8,4096,0x4000,4096,0x4000);kernel[0x4000:0x4200]=rng.randbytes(512)
 rp=p/'synthetic-rom.bin';kp=p/'synthetic-kernel.img';rp.write_bytes(rom);kp.write_bytes(kernel)
 rebuilt=p/'m8-new.bin';original=p/'m8-original-code.bin'
 call('test-m8-pack',rp,kp,rebuilt);call('test-original-m8-pack',rp,kp,original)
 assert rebuilt.read_bytes()==original.read_bytes()
 record('M8 C++ container matches recovered assembly',bytes=len(rom),sha256=hashlib.sha256(rebuilt.read_bytes()).hexdigest())
 decoded=p/'m8-kernel.img';call('test-m8-unpack',rebuilt,decoded)
 expected=bytearray(kernel);expected[0x28:0x3c]=decoded.read_bytes()[0x28:0x3c]
 assert decoded.read_bytes()==expected
 record('M8 container round trip',kernel_bytes=len(kernel),metadata_changed='DOS-header M8 fields 0x28..0x3b')
 bad=p/'bad.kbp';bad.write_bytes(b'broken');call('preset-info',bad,success=False);record('reject truncated preset')
 badmesh=p/'bad.x';badmesh.write_text('xof 0303txt 0032\nMesh {157;');call('logo-info',badmesh,success=False);record('reject excessive vertex count')
 malformed=bytearray(rebuilt.read_bytes());struct.pack_into('<I',malformed,footer+18,0xffffffff);badrom=p/'bad-rom.bin';badrom.write_bytes(malformed)
 call('test-m8-unpack',badrom,p/'should-not-exist.img',success=False);assert not (p/'should-not-exist.img').exists();record('reject out-of-bounds M8 frame region')
 sentinel=p/'keep.kbp';sentinel.write_bytes(b'preserve me');preset=next((ROOT/'original/extracted/Presets').glob('*.kbp'))
 call('preset-copy',preset,sentinel,success=False);assert sentinel.read_bytes()==b'preserve me';record('preserve existing output')
(ROOT/'evidence/regression-results.json').write_text(json.dumps(results,indent=2)+'\n')
print(f'{len(results)} regression checks passed')
