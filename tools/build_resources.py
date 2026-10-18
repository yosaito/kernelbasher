"""Build a standard Win32 .res from recovered, independently editable payloads."""
from pathlib import Path
import json,struct
ROOT=Path(__file__).resolve().parents[1]
def ident(x):return struct.pack('<HH',0xffff,x) if isinstance(x,int) else x.encode('utf-16-le')+b'\0\0'
def entry(typ,name,lang,data):
    ids=ident(typ)+ident(name);ids+=b'\0'*((-len(ids))%4)
    header=struct.pack('<II',len(data),8+len(ids)+16)+ids+struct.pack('<IHHII',0,0x1030,lang,0,0)
    return header+data+b'\0'*((-len(data))%4)
out=entry(0,0,0,b'')
for r in json.loads((ROOT/'src/resources/manifest.json').read_text()):
    if r['type']!=5:out+=entry(r['type'],r['id'],r['language'],(ROOT/'src/resources'/r['file']).read_bytes())
(ROOT/'build/original_resources.res').write_bytes(out)
