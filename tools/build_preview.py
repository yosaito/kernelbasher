"""Assemble offline assets. --recompile rebuilds the bundled WASM with LLVM clang.

Upstream sources stay unmodified; the sole C adapter makes Blob.c's radius a
runtime value. Prebuilt WASM is hash checked, so ordinary Windows builds need
only MSVC and Python. Set XBOOT_CLANG to rebuild with another clang installation.
"""
from pathlib import Path
import hashlib, importlib.util, json, os, re, shutil, struct, subprocess, sys

ROOT=Path(__file__).resolve().parents[1]
UP=ROOT/'third_party/xbox-boot-re'
PRE=ROOT/'src/preview'
OUT=ROOT/'build/preview'

def digest(p): return hashlib.sha256(p.read_bytes()).hexdigest()

def rebuild():
    clang=os.environ.get('XBOOT_CLANG',str(ROOT/'build/preview-tools/clang.exe'))
    spec=importlib.util.spec_from_file_location('upstream_build',UP/'core/build.py')
    mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
    work=ROOT/'build/preview-core';work.mkdir(parents=True,exist_ok=True)
    blob=(UP/'core/src/Blob.c').read_text()
    assert '#define B_RADIUS    2.3f' in blob
    blob=blob.replace('#define B_RADIUS    2.3f','extern float kb_radius;\n#define B_RADIUS    kb_radius')
    (work/'Blob.c').write_text(blob)
    (work/'radius.c').write_text('float kb_radius = 2.3f;\nvoid kb_set_radius(float radius) { kb_radius = radius > 0.000001f ? radius : 0.000001f; }\n')
    sources=[str(work/'Blob.c') if p=='core/src/Blob.c' else p for p in mod.CORE]
    wasm=PRE/'xboot.wasm'
    cmd=[clang]+mod.WASM+['-Icore/src','-mbulk-memory','-Wl,--export=kb_set_radius']+sources+[str(work/'radius.c'),'-o',str(wasm)]
    subprocess.run(cmd,cwd=UP,check=True)
    assert mod.wasm_imports(wasm)==0
    (PRE/'xboot.wasm.sha256').write_text(digest(wasm)+'\n')

def torn_meshes():
    # Exact Torn-X replacement from patch_engine.cpp, into the same logo
    # block used by the reference core. Keep original counts/unused vertices.
    data=(ROOT/'src/original_tables.inc').read_text().split('};',1)[0]
    data=bytes(int(x,16) for x in re.findall(r'0x([0-9a-fA-F]{2})',data))
    # initial_data starts at the original PE .data VA 0x415000.
    def bytewords(a,b): return bytes(struct.unpack_from('<I',data,n-0x415000)[0]&255 for n in range(a,b,4))
    logo=bytearray((UP/'data/logo/logo.bin').read_bytes())
    payload=bytes(0x1a98)+bytewords(0x41a6e8,0x41bae8)+bytes(0x338)+bytewords(0x41bae8,0x41d6f8)
    logo[:len(payload)]=payload
    meshes=[]
    for va,nv,ia,ni in [(0x72aa0,210,0x732d8,336),(0x735f0,77,0x738f8,225),(0x73428,34,0x73580,105),(0x71008,501,0x723a0,1008)]:
        v=[]
        f32=lambda x:struct.unpack('<f',struct.pack('<f',x))[0]
        for i in range(nv):
            for a in range(5):
                q=struct.unpack_from('<h',logo,va-0x71008+10*i+2*a)[0]
                v.append(f32(q*f32(0.00987599976 if a<3 else 5.80000014e-05)+f32(161.715363 if a<3 else 0.947660983)))
        if va==0x73428:
            for i in range(nv):
                if abs(f32(v[5*i+4]-1))<=f32(0.01):v[5*i+4]=-1
        idx=[];p=ia-0x71008;n=0
        for i in range(ni):
            if logo[p]==0x7e:n=(n+int.from_bytes(logo[p+1:p+3],'big'))&65535;p+=3
            else:n=(n+struct.unpack_from('b',logo,p)[0])&65535;p+=1
            assert n<nv,(va,i,n,nv)
            idx.append(n)
        meshes.append({'floats':5,'vertices':v,'indices':idx})
    return meshes

def main():
    PRE.mkdir(parents=True,exist_ok=True)
    if '--recompile' in sys.argv:rebuild()
    wasm=PRE/'xboot.wasm'
    if not wasm.exists():raise SystemExit('Run python tools/build_preview.py --recompile with XBOOT_CLANG set to clang.exe first.')
    assert digest(wasm)==(PRE/'xboot.wasm.sha256').read_text().strip(),'Bundled WASM hash mismatch'
    OUT.mkdir(parents=True,exist_ok=True)
    subprocess.run([sys.executable,str(UP/'tools/pack/pack.py'),'--check'],check=True,cwd=UP)
    shutil.copy2(UP/'out/pack/xboot.pak',OUT/'xboot.pak')
    for p in PRE.iterdir():
        if p.is_file():shutil.copy2(p,OUT/p.name)
    shutil.copytree(UP/'hosts/web/src',OUT/'upstream',dirs_exist_ok=True)
    shutil.copy2(UP/'hosts/web/layout.json',OUT/'layout.json')
    shutil.copy2(UP/'LICENSE',OUT/'LICENSE-xbox-boot-re.txt')
    shutil.copy2(UP/'docs/provenance.md',OUT/'upstream-provenance.md')
    (OUT/'torn.json').write_text(json.dumps(torn_meshes(),separators=(',',':')))
    print('Offline preview assets:',OUT)

if __name__=='__main__':main()
