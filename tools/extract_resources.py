"""Recover editable Win32 dialogs and exact resource payloads from the release."""
import hashlib, json, struct, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent / 'pylib'))
import pefile
ROOT = Path(__file__).resolve().parents[1]

class Reader:
    def __init__(self, data): self.data, self.pos = data, 0
    def read(self, fmt):
        values = struct.unpack_from('<' + fmt, self.data, self.pos)
        self.pos += struct.calcsize('<' + fmt)
        return values[0] if len(values) == 1 else values
    def align(self): self.pos = (self.pos + 3) & ~3
    def string(self):
        first = self.read('H')
        if first == 0xffff: return {'ordinal': self.read('H')}
        text = []
        while first:
            text.append(first); first = self.read('H')
        return struct.pack('<' + 'H' * len(text), *text).decode('utf-16-le')

def dialog(data):
    r = Reader(data)
    extended = data[:4] == b'\x01\x00\xff\xff'
    if extended:
        _, _, help_id, exstyle, style, count = r.read('HHIIIH')
    else:
        style, exstyle, count = r.read('IIH'); help_id = 0
    x,y,w,h = r.read('hhhh')
    result = dict(extended=extended, help_id=help_id, style=style, exstyle=exstyle,
                  x=x,y=y,width=w,height=h,menu=r.string(),window_class=r.string(),title=r.string())
    if style & 0x40:
        size = r.read('H')
        weight, italic, charset = r.read('HBB') if extended else (400,0,1)
        result['font'] = dict(size=size, weight=weight, italic=italic, charset=charset, name=r.string())
    result['controls'] = []
    for _ in range(count):
        r.align()
        if extended: help_id,exstyle,style = r.read('III')
        else: style,exstyle = r.read('II'); help_id=0
        x,y,w,h = r.read('hhhh'); ident = r.read('I' if extended else 'H')
        cls, title = r.string(), r.string()
        extra = r.read('H')
        if extra: r.pos += extra - 2
        result['controls'].append(dict(id=ident,help_id=help_id,exstyle=exstyle,style=style,
                                       x=x,y=y,width=w,height=h,window_class=cls,title=title))
    return result

def q(text):
    if isinstance(text, dict): return str(text['ordinal'])
    return '"' + text.replace('"','""').replace('\r','\\r').replace('\n','\\n') + '"'

def main():
    exe = ROOT / 'original/extracted/KernelBasher.exe'
    pe = pefile.PE(str(exe))
    out = ROOT / 'src/resources'; out.mkdir(parents=True, exist_ok=True)
    records, dialogs, lines = [], {}, ['// Recovered from KernelBasher 1.1. Dialogs are editable.', '#include <windows.h>', '']
    classes = {0x80:'Button',0x81:'Edit',0x82:'Static',0x83:'ListBox',0x84:'ScrollBar',0x85:'ComboBox'}
    for typ in pe.DIRECTORY_ENTRY_RESOURCE.entries:
        for name in typ.directory.entries:
            for language in name.directory.entries:
                t = str(typ.name) if typ.name else typ.id
                n = str(name.name) if name.name else name.id
                l = language.id
                data = pe.get_data(language.data.struct.OffsetToData, language.data.struct.Size)
                file = f'{t}_{n}_{l}.bin'; (out / file).write_bytes(data)
                records.append(dict(type=t,id=n,language=l,bytes=len(data),file=file,sha256=hashlib.sha256(data).hexdigest()))
                lines += [f'LANGUAGE {l & 1023}, {l >> 10}']
                if t == 5:
                    d = dialog(data); dialogs[str(n)] = d
                    lines += [f'{n} DIALOGEX {d["x"]}, {d["y"]}, {d["width"]}, {d["height"]}',
                              f'STYLE 0x{d["style"]:08x}', f'EXSTYLE 0x{(d["exstyle"] & ~0x80) if n==102 else d["exstyle"]:08x}', f'CAPTION {q(d["title"])}']
                    if 'font' in d:
                        f=d['font']; lines += [f'FONT {f["size"]}, {q(f["name"])}, {f["weight"]}, {f["italic"]}, {f["charset"]}']
                    lines += ['BEGIN']
                    for c in d['controls']:
                        cls=c['window_class']; cls=classes.get(cls['ordinal'], '#'+str(cls['ordinal'])) if isinstance(cls,dict) else cls
                        ident=-1 if c['id'] in (0xffff,0xffffffff) else c['id']
                        style=c['style'] & ~0x100 if ident==1006 else c['style']
                        visible='' if style & 0x10000000 else ' | NOT WS_VISIBLE'
                        lines += [f'    CONTROL {q(c["title"])}, {ident}, {q(cls)}, 0x{style:08x}{visible}, {c["x"]}, {c["y"]}, {c["width"]}, {c["height"]}, 0x{c["exstyle"]:08x}']
                    lines += ['END', '']
                else:
                    ns=q(n) if isinstance(n,str) else n
                    ts=q(t) if isinstance(t,str) else t
                    lines += [f'// Exact resource {ns}, type {ts}: resources/{file} (linked through original_resources.res)', '']
    (ROOT/'src/KernelBasher.rc').write_text('\n'.join(lines)+'\n',encoding='utf-8')
    (ROOT/'evidence/resources.json').write_text(json.dumps(records,indent=2)+'\n')
    (ROOT/'src/resources/manifest.json').write_text(json.dumps(records,indent=2)+'\n')
    (ROOT/'evidence/dialogs.json').write_text(json.dumps(dialogs,indent=2)+'\n')
    imports = {imp.dll.decode():[{'name': x.name.decode() if x.name else None,'ordinal':x.ordinal,'iat':hex(x.address)} for x in imp.imports] for imp in pe.DIRECTORY_ENTRY_IMPORT}
    (ROOT/'evidence/imports.json').write_text(json.dumps(imports,indent=2)+'\n')
    print(json.dumps({'resources':len(records),'dialogs':{k:len(v['controls']) for k,v in dialogs.items()}, 'imports':{k:len(v) for k,v in imports.items()}},indent=2))
    for key,d in dialogs.items():
        print('DIALOG',key,d['title'])
        for c in d['controls']: print(c['id'], c['window_class'], c['title'])

if __name__ == '__main__': main()
