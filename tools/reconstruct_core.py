"""Reproducible initial C++ translation; manual semantic fixes are documented here.

Inputs are Ghidra output plus the immutable release. The output is real compiled
C++, not a runtime PE loader. Original addresses remain as provenance anchors.
"""
import re, sys, json, struct
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'pylib'))
import pefile
ROOT=Path(__file__).resolve().parents[1]
SRC=ROOT/'src'; E=ROOT/'evidence/ghidra/functions'
pe=pefile.PE(str(ROOT/'original/extracted/KernelBasher.exe'))
image=pe.get_memory_mapped_image()

def emit_array(name,data):
    return 'const unsigned char '+name+'[] = {\n'+''.join('  '+','.join(f'0x{x:02x}' for x in data[i:i+24])+',\n' for i in range(0,len(data),24))+'};\n'

data=next(s for s in pe.sections if s.Name.startswith(b'.data')).get_data()
rdata=next(s for s in pe.sections if s.Name.startswith(b'.rdata')).get_data()
(SRC/'original_tables.inc').write_text('// Exact initialized data recovered from the release; see evidence/download.json.\n'+emit_array('initial_data',data)+emit_array('initial_rdata',rdata))

scanner=(E/'00402420_FUN_00402420.c').read_text()
scanner=scanner[scanner.index('void FUN_00402420'):]
# Recover a data-driven scanner. Preserve short-circuit consumption: a failed
# prefix consumes its mismatching byte, and the LAST match wins.
patterns=[]
for m in re.finditer(r'while \(iVar1 != -1\) \{',scanner):
    start=m.end();p=start;depth=1
    while depth:
        depth+=(scanner[p]=='{')-(scanner[p]=='}');p+=1
    block=scanner[start:p-1]
    values=[int(x,0) for x in re.findall(r'iVar1 == (0x[0-9a-f]+|\d+)\b',block)]
    g=re.search(r'_?DAT_([0-9a-f]{8}) = (?:ftell\(DAT_0041fee8\)|lVar2( \+ -\d+)?);',block)
    assert g and values,block
    adjust=int(g[2].replace(' + ','')) if g[2] else 0
    # These are the only conditional scans: M8 and non-M8 scene variants.
    kind=4 if values==[0x2f,0xfe,0xff,0xd9,5] else -4 if values==[0x2e,0xfe,0xff,0xd9,5] else 0
    patterns.append('    {0x'+g[1]+','+str(adjust)+','+str(kind)+',{' + ','.join(hex(v) for v in values)+'}},')
assert len(patterns)==21
scanner='''namespace {
struct Signature {
    unsigned destination;
    int adjustment;
    int family; // 0: all, 4: M8 only, -4: everything except M8
    std::vector<uint8_t> bytes;
};
const Signature signatures[] = {
'''+ '\n'.join(patterns)+'''
};
}

void locate_patch_sites(const std::vector<uint8_t>& input, int bios_kind) {
    for(unsigned address=0x41fef8;address<=0x41ff48;address+=4)word(address)=-1;
    for(const auto& signature:signatures){
        if((signature.family==4&&bios_kind!=4)||(signature.family==-4&&bios_kind==4))continue;
        size_t cursor=0;
        while(cursor<input.size()){
            const auto* found=static_cast<const uint8_t*>(
                std::memchr(input.data()+cursor,signature.bytes[0],input.size()-cursor));
            if(!found)break;
            size_t start=static_cast<size_t>(found-input.data());
            if(signature.bytes.size()<=input.size()-start&&
               std::memcmp(found,signature.bytes.data(),signature.bytes.size())==0){
                cursor=start+signature.bytes.size();
                word(signature.destination)=static_cast<int32_t>(cursor)+signature.adjustment;
            }else{
                // Match the original sequential reads, including a mismatching
                // byte and EOF. A generic overlapping search changes its result.
                cursor=start+1;
                for(size_t i=1;i<signature.bytes.size()&&cursor<input.size();++i)
                    if(input[cursor++]!=signature.bytes[i])break;
            }
        }
    }
}
'''

save=(E/'00405320_FUN_00405320.c').read_text()
decls=save[save.index('  char cVar1;'):save.index('  CFileDialog local_1e4')]
decls='\n'.join(l for l in decls.splitlines() if not any(t in l for t in ['CStringT','CWnd','CFileDialog','WPARAM']))
decls=decls.replace('  int *local_518;', '  int *local_518;').replace('  int *local_514;','  int *local_514;')
start=save.index('  fseek(DAT_0041fee8,0,0);')
end=save.index('  fclose(DAT_0041fee8);',start)
body=save[start:end]
body=re.sub(r'\s*SendMessageA\([^;]+;', '', body)
body=re.sub(r'\s*local_510 = local_510 \+ 8;', '',body)
body=body.replace('DAT_0041fee8','input').replace('DAT_004214f0','output').replace('DAT_00421500','bios_kind')
body=re.sub(r'ATL::CSimpleStringT<char,1>::operator\[\]\s*\(\(CSimpleStringT<char,1> \*\)\(param_1 \+ 0xd2c\),0\)', 'camera_character',body)
# Ghidra renders raw float bit extraction as numerical casts. Restore bit casts.
float_locals=set(re.findall(r'float (local_[0-9a-f]+)',decls))
body=re.sub(r'\(uint\)(local_[0-9a-f]+)',lambda m:'float_bits('+m[1]+')' if m[1] in float_locals else m[0],body)
body=body.replace('(int *)(float)dVar8','(int *)float_bits((float)dVar8)')
body=re.sub(r'SUB41\((local_[0-9a-f]+|fVar5),0\)',r'(float_bits(\1) & 255)',body)
# The original uses a 4-byte global as an overflowing sprintf scratch buffer.
body=body.replace('&DAT_0041feec','decimal_buffer')
# Member offsets are recovered DDX bindings; retain names in the editable header.
body=re.sub(r'\*\(int \*\)\(param_1 \+ (0x[0-9a-f]+)\)',r'options.at(\1)',body)
body=body.replace('*(float *)(param_1 + 0xdcc)','options.radius')

def translate(text):
    text=text.replace('undefined4','int32_t').replace('uint','uint32_t')
    text=re.sub(r'(_?DAT_)([0-9a-f]{8})',lambda m: ('read_float' if m[2]=='0041341c' else 'word')+'(0x'+m[2]+')',text)
    # Every absolute endpoint in these loops is a data address, not a count.
    text=re.sub(r'(?<![\w])0x(41[0-9a-f]{4}|420[0-9a-f]{3})(?![\w])',lambda m:'(intptr_t)data_address(0x'+m[1]+')',text)
    # Above deliberately only matches six-digit loop endpoints; DAT anchors have eight digits.
    text=re.sub(r'\bprintf\(', 'diagnostic_printf(',text)
    return text

body=translate(body)
decls=translate(decls)
# Memory reads retain look-ahead only inside replacement ranges. The outer loop
# jumps across untouched spans in the output's initial memcpy, without byte I/O.
body=body.replace('  fseek(input,0,0);\n','')
body=body.replace('fgetc(input)','memory.read()').replace('ftell(input)','memory.position()')
body=re.sub(r'\b(?:fputc|putc)\(([^;\n]+),output\);',r'memory.write(\1);',body)
body=body.replace('  while (local_514 != (int *)0xffffffff) {','''  while (local_514 != (int *)0xffffffff) {
    int current_byte=static_cast<int>(reinterpret_cast<intptr_t>(local_514));
    if(!memory.next_patch(current_byte))break;
    local_514=reinterpret_cast<int*>(current_byte);''')
assert not re.search(r'\b(?:fgetc|fputc|getc|putc|fseek|ftell|FILE|output)\b',body)
out='''// Reconstructed from KernelBasher 1.1 VA 0x402420 and 0x405320.
// Generated by tools/reconstruct_core.py. Memory-only; original patch order retained.
// See core.hpp for named settings and core.cpp for validation and file handling.
#include "core_internal.hpp"
#include "patch_memory.hpp"

'''+scanner+'\nstd::vector<uint8_t> patch_buffer(const std::vector<uint8_t>& input, int bios_kind, const Options& options) {\n'+decls+'''
  std::array<int32_t,20> sites{};
  for(size_t i=0;i<sites.size();++i)sites[i]=word(0x41fef8+unsigned(i)*4);
  MemoryPatch memory(input,sites);
  char decimal_buffer[64]{};
  const char camera_character = char('0' + options.camera);
'''+body+'\n  return memory.finish();\n}\n'
out='\n'.join(line.rstrip() for line in out.splitlines()).rstrip()+'\n'
(SRC/'patch_engine.cpp').write_text(out)
print('Generated',len(out),'characters of reconstructed core C++')
