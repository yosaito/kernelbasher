"""Execute isolated original patch/scanner machine code in Unicorn.

No Windows installer/application is launched. CRT file calls operate on in-memory
byte streams. The original GUI prefix and BIOS packing suffix are excluded.
"""
import io,json,struct,sys,subprocess,time,hashlib,re,random
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'tools/pylib'))
import pefile
from unicorn import Uc,UC_ARCH_X86,UC_MODE_32,UC_HOOK_CODE
from unicorn.x86_const import *
PE=pefile.PE(str(ROOT/'original/extracted/KernelBasher.exe'))
IMAGE=PE.get_memory_mapped_image()
OUT=ROOT/'evidence/differential';OUT.mkdir(exist_ok=True)

def patterns():
 text=(ROOT/'evidence/ghidra/functions/00402420_FUN_00402420.c').read_text()
 records=[]
 for m in re.finditer(r'while \(iVar1 != -1\) \{',text):
  start=m.end();p=start;depth=1
  while depth:
   depth+=(text[p]=='{')-(text[p]=='}');p+=1
  block=text[start:p-1]
  bs=[int(x,0) for x in re.findall(r'iVar1 == (0x[0-9a-f]+|\d+)\b',block)]
  glob=re.search(r'_?DAT_([0-9a-f]{8}) = (?:ftell\(DAT_0041fee8\)|lVar2( \+ -\d+)?);',block)
  if not glob: raise RuntimeError(block)
  adjust=int(glob[2].replace(' + ','')) if glob[2] else 0
  records.append({'pattern':bytes(bs).hex(),'global':int(glob[1],16),'adjust':adjust})
 return records

def fixture():
 # Spacious non-overlapping signature islands; includes both family variants.
 b=bytearray(b'\xa5'*0xc000)
 pats=patterns();pos=0x200
 for i,p in enumerate(pats):
  sig=bytes.fromhex(p['pattern']); b[pos:pos+len(sig)]=sig
  pos+=0x600
 return bytes(b)

def settings(seed=0):
 b=bytearray(0xe00);rng=random.Random(seed)
 for a in [0xd68,0xd6c,0xd70,0xd74,0xd78,0xd7c,0xd80,0xd84,0xd88,0xd8c,0xd90,0xd94,0xd98,0xd9c,0xda0,0xda4,0xda8,0xdac,0xdb0,0xdb4,0xdb8,0xdbc,0xdc0]:struct.pack_into('<I',b,a,rng.randrange(256))
 struct.pack_into('<f',b,0xdcc,3.25 if seed==0 else 1.375)
 return b

def original(data,kind,opts,camera,flags,logo=None,scan_only=False):
 u=Uc(UC_ARCH_X86,UC_MODE_32);u.mem_map(0x400000,(len(IMAGE)+0xfff)&~0xfff);u.mem_write(0x400000,IMAGE)
 u.mem_map(0x10000000,0x100000);u.mem_map(0x20000000,0x10000);u.mem_map(0x30000000,0x20000)
 u.mem_write(0x20000000,bytes(opts));u.mem_write(0x421500,struct.pack('<I',kind));u.mem_write(0x41fee8,struct.pack('<I',1));u.mem_write(0x4214f0,struct.pack('<I',2));u.mem_write(0x4214fc,struct.pack('<I',flags))
 streams={1:io.BytesIO(data),2:io.BytesIO()};stubs={}
 for dll in PE.DIRECTORY_ENTRY_IMPORT:
  for imp in dll.imports:
   addr=0x30000100+len(stubs)*16
   stubs[addr]=(dll.dll.decode(),imp.name.decode() if imp.name else '#'+str(imp.ordinal),imp.address)
   u.mem_write(imp.address,struct.pack('<I',addr));u.mem_write(addr,b'\xc3')
 def read32(a):return struct.unpack('<I',u.mem_read(a,4))[0]
 def cstring(a):
  out=bytearray()
  while len(out)<256:
   c=bytes(u.mem_read(a+len(out),1))
   if c==b'\0':return out.decode('ascii')
   out+=c
  raise RuntimeError('String exceeds bound')
 def hook(uc,addr,size,_):
  dll,name,iat=stubs[addr];esp=uc.reg_read(UC_X86_REG_ESP);args=lambda n:read32(esp+4+n*4);value=0;pop=0
  if name=='fgetc':
   b=streams[args(0)].read(1);value=b[0] if b else -1
  elif name=='fputc':streams[args(1)].write(bytes([args(0)&255]));value=args(0)&255
  elif name=='ftell':value=streams[args(0)].tell()
  elif name=='fseek':streams[args(0)].seek(struct.unpack('<i',struct.pack('<I',args(1)))[0],args(2))
  elif name=='sprintf':
   fmt=cstring(args(1));val=struct.unpack('<d',uc.mem_read(esp+12,8))[0]
   assert fmt=='%f',fmt
   s=('%f'%val).encode();uc.mem_write(args(0),s+b'\0');value=len(s)
  elif name=='atof':
   val=float(cstring(args(0)));uc.mem_write(0x30018000,struct.pack('<d',val))
   # Let the emulated x87 execute FLD qword and RET with the real return stack.
   uc.reg_write(UC_X86_REG_EIP,0x30018100);return
  elif name=='SendMessageA':pop=16
  elif name=='printf':value=0
  elif iat==0x412248:value=ord('0')+camera;pop=4
  else:raise RuntimeError(f'Unexpected import {dll} {name} at {iat:x}')
  uc.reg_write(UC_X86_REG_EAX,value&0xffffffff);uc.reg_write(UC_X86_REG_EIP,read32(esp));uc.reg_write(UC_X86_REG_ESP,esp+4+pop)
 u.mem_write(0x30018100,b'\xdd\x05\x00\x80\x01\x30\xc3')
 u.hook_add(UC_HOOK_CODE,hook,begin=min(stubs),end=max(stubs))
 sp=0x10080000;u.mem_write(sp,struct.pack('<I',0x30010000));u.reg_write(UC_X86_REG_ESP,sp)
 u.emu_start(0x402420,0x30010000,count=100_000_000)
 sites=list(struct.unpack('<20i',u.mem_read(0x41fef8,80)))
 if scan_only:return sites
 if logo:
  text=logo.read_text();start=re.search(r'\bMesh\s*(?:[A-Za-z_][A-Za-z_0-9]*)?\s*\{',text).end()
  numbers=iter(re.findall(r'-?\d+(?:\.\d*)?(?:[eE][+-]?\d+)?',text[start:]))
  nv=int(next(numbers));vertices=[float(next(numbers)) for _ in range(nv*3)]
  nf=int(next(numbers));indices=[]
  for _ in range(nf):
   assert int(next(numbers))==3
   indices.extend(int(next(numbers)) for _ in range(3))
  u.mem_write(0x41e230,struct.pack('<469f',*(vertices+[0.]*(469-len(vertices)))))
  u.mem_write(0x41ff48,struct.pack('<1395i',*(indices+[0]*(1395-len(indices)))))
  u.reg_write(UC_X86_REG_ESP,sp);u.mem_write(sp,struct.pack('<I',0x30010000))
  u.emu_start(0x402380,0x30010000,count=1_000_000)
  u.mem_write(0x4214f0,struct.pack('<I',2))
  u.mem_write(0x421500,struct.pack('<I',kind))
 u.reg_write(UC_X86_REG_ESP,sp-0x1000);u.reg_write(UC_X86_REG_EBP,0x20000000);u.reg_write(UC_X86_REG_ESI,0)
 u.emu_start(0x4053db,0x408ddb,count=100_000_000)
 if u.reg_read(UC_X86_REG_EIP)!=0x408ddb:raise RuntimeError('Original did not finish within instruction bound')
 return streams[2].getvalue(),sites

def main():
 data=fixture();(OUT/'fixture.img').write_bytes(data);results=[]
 cases=[(1,1,0),(2,2,0),(3,7,0),(4,8,0),(1,3,1),(4,4,1),(1,7,0),(4,8,0)]
 for i,(kind,cam,all_flags) in enumerate(cases):
  if '--logo-only' in sys.argv and i<6:continue
  options=settings(i)
  logo=ROOT/'original/extracted/xfiles/xbmc-real.x' if i>=6 else None
  if logo:struct.pack_into('<I',options,0xd48,1)
  if all_flags:
   for a in [0xd34,0xdc4,0xdd0,0xdd8,0xddc]:struct.pack_into('<I',options,a,1)
  opt_path=OUT/f'options-{i}.bin';opt_path.write_bytes(options)
  start=time.monotonic();expected,sites=original(data,kind,options,cam,all_flags,logo)
  expect=OUT/f'original-{i}.img';expect.write_bytes(expected)
  actual=OUT/f'rebuilt-{i}.img'
  if actual.exists():actual.unlink()
  r=subprocess.run([str(ROOT/'build/KernelBasher-cli.exe'),'test-kernel',str(OUT/'fixture.img'),str(actual),str(kind),str(opt_path),str(cam)]+([str(logo)] if logo else []),capture_output=True,text=True)
  if r.returncode:raise RuntimeError(r.stderr)
  got=actual.read_bytes();diff=[j for j,(a,b) in enumerate(zip(expected,got)) if a!=b]
  result={'case':i,'kind':kind,'camera':cam,'all_flags':all_flags,'match':expected==got,'original_bytes':len(expected),'rebuilt_bytes':len(got),'differences':len(diff),'first_differences':diff[:24],'seconds':round(time.monotonic()-start,2),'sites':sites,'sha256':hashlib.sha256(got).hexdigest()}
  results.append(result);print(json.dumps(result),flush=True)
  (OUT/('logo-results.json' if '--logo-only' in sys.argv else 'results.json')).write_text(json.dumps(results,indent=2)+'\n')
 if not all(x['match'] for x in results):raise SystemExit(1)

if __name__=='__main__':main()
