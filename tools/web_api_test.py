"""Exercise real HTTP downloads against the Windows engine using synthetic data.

No Microsoft BIOS is required or included. The generated file is deliberately
non-bootable: signature islands in a minimal PE wrapped in an M8 container.
"""
from pathlib import Path
import hashlib
import json
import os
import struct
import subprocess
import sys
import urllib.error
import urllib.request

ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'build/web-tests'
OUT.mkdir(parents=True,exist_ok=True)
EXE=ROOT/'build/KernelBasher-cli.exe'
BASE=sys.argv[1] if len(sys.argv)>1 else 'http://127.0.0.1:4505/kernelbasher/api'
RESULTS=[]

def call(*args):
    result=subprocess.run([str(EXE),*map(str,args)],capture_output=True,text=True,timeout=30)
    assert result.returncode==0,result.stderr
    return result.stdout

def fresh(name):
    path=OUT/name
    path.unlink(missing_ok=True)
    return path

def fixture():
    rom=bytearray(b'\xff'*262144)
    # Legacy text checksum, without CR/LF/EOF bytes; the packed kernel is near
    # the end of the ROM and never overlaps this recogniser fixture.
    q,r=divmod(0x4a0c2,8000)
    rom[:8000]=bytes([q+1])*r+bytes([q])*(8000-r)
    footer=len(rom)-64
    rom[footer:footer+10]=b'$EvoxRom$\0'
    struct.pack_into('<I',rom,footer+10,1024)
    kernel=bytearray((ROOT/'evidence/differential/fixture.img').read_bytes())+bytearray(16384)
    kernel[:512]=bytes(512)
    kernel[:2]=b'MZ'
    struct.pack_into('<I',kernel,0x3c,0x80)
    kernel[0x80:0x84]=b'PE\0\0'
    struct.pack_into('<H',kernel,0x86,1)
    struct.pack_into('<H',kernel,0x94,0xe0)
    section=0x178
    kernel[section:section+8]=b'.data\0\0\0'
    struct.pack_into('<IIII',kernel,section+8,4096,0xc000,4096,0xc000)
    kernel[0xc000:0xc200]=bytes(range(256))*2
    rp,kp=OUT/'synthetic-rom.bin',OUT/'synthetic-kernel.img'
    rp.write_bytes(rom);kp.write_bytes(kernel)
    bios=fresh('synthetic-m8.bin')
    call('test-m8-pack',rp,kp,bios)
    assert 'kind=4' in call('identify',bios)
    call('unpack',bios,fresh('unpacked.img'))
    return bios

def encode(s):
    flags=sum(int(s[key])<<bit for bit,key in enumerate(('whiteSplash','whiteAnimation','keepMachinery','replaceLogo','random','wire','torn')))
    return b'KBO1'+bytes(s['colours'])+b'\0'+struct.pack('<fIII',s['radius'],s['camera'],flags,s['outputSize'])

def request(bios,settings,logo=None,origin=None,raw=None):
    boundary='----KernelBasherTestBoundary'
    chunks=[]
    def part(name,data,filename=None):
        header=f'--{boundary}\r\nContent-Disposition: form-data; name="{name}"'
        if filename:header+=f'; filename="{filename}"'
        chunks.extend([header.encode()+b'\r\n\r\n',data,b'\r\n'])
    part('settings',json.dumps(settings).encode() if raw is None else raw)
    part('bios',bios,'synthetic-m8.bin')
    if logo is not None:part('logo',logo,'test.x')
    chunks.append(f'--{boundary}--\r\n'.encode())
    headers={'Content-Type':f'multipart/form-data; boundary={boundary}'}
    if origin:headers['Origin']=origin
    req=urllib.request.Request(BASE+'/patch',data=b''.join(chunks),headers=headers)
    try:
        with urllib.request.urlopen(req,timeout=40) as response:
            return response.status,dict(response.headers),response.read()
    except urllib.error.HTTPError as response:
        return response.code,dict(response.headers),response.read()

def record(name,**fields):
    entry={'test':name,'passed':True,**fields}
    RESULTS.append(entry);print(json.dumps(entry),flush=True)

def main():
    bios=fixture()
    default={'colours':[25,255,70]*6+[255],'radius':3.25,'camera':1,'outputSize':262144,
             **dict.fromkeys(('whiteSplash','whiteAnimation','keepMachinery','replaceLogo','random','wire','torn'),0)}
    logo=ROOT/'original/extracted/xfiles/xbmc-real.x'
    cases=[default,{**default,'colours':[(i*31)%256 for i in range(19)],'radius':1.375,'camera':8,'random':1,'wire':1},
           {**default,'replaceLogo':1,'radius':6.375,'camera':7,'outputSize':1048576}]
    for i,settings in enumerate(cases):
        options=OUT/f'options-{i}.bin';options.write_bytes(encode(settings))
        expected=fresh(f'windows-{i}.bin')
        call('patch-options',bios,expected,options,*([logo] if settings['replaceLogo'] else []))
        status,headers,actual=request(bios.read_bytes(),settings,logo.read_bytes() if settings['replaceLogo'] else None)
        assert status==200,(status,actual[:300])
        assert actual==expected.read_bytes(),f'HTTP download differs from Windows, case {i}'
        assert len(actual)==262144,'M8 preserves the input size'
        digest=hashlib.sha256(actual).hexdigest()
        assert {k.lower():v for k,v in headers.items()}.get('x-output-sha256')==digest,headers
        (OUT/f'http-{i}.bin').write_bytes(actual)
        # Independently map settings into the original DDX structure. This
        # checks KBO1 field ordering as well as Windows/Wine parity.
        members=[0xd88,0xd84,0xd80,0xd7c,0xd78,0xd74,0xd70,0xd6c,0xd68,0xd98,0xd94,0xd90,0xda4,0xda0,0xd9c,0xdb4,0xdb0,0xdac,0xda8]
        ddx=bytearray(0xe00)
        for member,value in zip(members,settings['colours']):struct.pack_into('<I',ddx,member,value)
        struct.pack_into('<I',ddx,0xd8c,255)
        struct.pack_into('<f',ddx,0xdcc,settings['radius'])
        for member,key in zip([0xdc4,0xd34,0xd30,0xd48,0xdd0,0xdd8,0xddc],('whiteSplash','whiteAnimation','keepMachinery','replaceLogo','random','wire','torn')):struct.pack_into('<I',ddx,member,settings[key])
        dp=OUT/f'ddx-{i}.bin';dp.write_bytes(ddx)
        kernel=fresh(f'ddx-{i}.img')
        call('test-kernel',OUT/'unpacked.img',kernel,4,dp,settings['camera'],*([logo] if settings['replaceLogo'] else []))
        packed=fresh(f'ddx-{i}-packed.bin');call('test-m8-pack',bios,kernel,packed)
        assert actual==packed.read_bytes(),'Full settings differ from independent legacy DDX mapping'
        record('HTTP / Windows / legacy settings produce identical BIOS',case=i,bytes=len(actual),sha256=digest)
    tests=[('wrong BIOS size',b'bad',default,None,400),('unrecognised BIOS',bytes(262144),default,None,400),
           ('invalid colour count',bios.read_bytes(),{**default,'colours':[1]},None,400),
           ('invalid radius',bios.read_bytes(),{**default,'radius':7},None,400),
           ('invalid flag',bios.read_bytes(),{**default,'wire':'yes'},None,400),
           ('missing X file',bios.read_bytes(),{**default,'replaceLogo':1},None,400),
           ('malformed X file',bios.read_bytes(),{**default,'replaceLogo':1},b'xof 0303txt 0032\nMesh {157;',400)]
    for name,data,settings,mesh,expected_status in tests:
        status,_,body=request(data,settings,mesh)
        assert status==expected_status,(name,status,body)
        assert isinstance(json.loads(body)['error'],str)
        record('reject '+name,status=status)
    status,_,body=request(bios.read_bytes(),default,origin='https://unrelated.invalid')
    assert status==403,(status,body);record('reject foreign origin',status=status)
    status,_,body=request(bios.read_bytes(),default,raw=b'not-json')
    assert status==400,(status,body);record('reject malformed JSON',status=status)
    (ROOT/'evidence/web-api-tests.json').write_text(json.dumps({'base':BASE,'passed':True,'checks':RESULTS},indent=2)+'\n')

if __name__=='__main__':main()
