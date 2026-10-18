"""Recover relocatable MASM source for the original M8/LZX codec.

The instruction mnemonics are reassembled by ml.exe; the application does not
load or call the old EXE. CRT imports are rebound to the current build runtime.
"""
import csv,json,re,struct,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'tools/pylib'))
import pefile
import capstone
pe=pefile.PE(str(ROOT/'original/extracted/KernelBasher.exe'))
image=pe.get_memory_mapped_image()
lo,hi=0x409dc0,0x41026a
rows=list(csv.DictReader((ROOT/'evidence/ghidra/instructions.tsv').open(),delimiter='\t'))
insns={int(x['address'],16):bytes.fromhex(x['bytes']) for x in rows if lo<=int(x['address'],16)<hi}
md=capstone.Cs(capstone.CS_ARCH_X86,capstone.CS_MODE_32); md.detail=True
funcs=json.loads((ROOT/'evidence/ghidra/functions.json').read_text())
imports={int(x['va'],16):x['name'] for x in funcs if x['thunk'] and x['name'] in ['free','malloc','fseek','ftell','fclose','fopen','fwrite','fread','memcpy','strncmp','memcmp','memset']}
iat={x.address:x.name.decode() for d in pe.DIRECTORY_ENTRY_IMPORT if d.dll.lower()==b'msvcr71.dll' for x in d.imports if x.name}
used=set()
globals_seen=set()
for f in funcs:
 if lo<=int(f['va'],16)<hi and f.get('pseudocode_file'):
  txt=(ROOT/'evidence/ghidra'/f['pseudocode_file']).read_text()
  globals_seen.update(int(x,16) for x in re.findall(r'(?:DAT_|s_\w+_)([0-9a-f]{8})\b',txt))
globals_seen.update([0x421518,0x42151c,0x421520,0x421580,0xc215a0,0x12215a0,0x12215a4,0x12215c0])

def label(addr): return f'L_{addr:08x}'
def data_expr(addr):
 if 0x412000<=addr<0x415000: return f'_kb_rdata + {addr-0x412000}'
 if 0x415000<=addr<0x1a215cc: return f'_kb_memory + {addr-0x415000}'
 raise ValueError(f'Unsupported data address {addr:x}')

lines=['; Reconstructed M8/LZX x86 code, original VAs in labels.',
       '; Original author attribution must be preserved; see README.md.',
       '.686p','.model flat','.xmm','option casemap:none',
       'EXTERN _kb_memory:BYTE','EXTERN _kb_rdata:BYTE']
body=['.code', 'PUBLIC _kb_m8_pack, _kb_m8_unpack, _kb_lzx_compress, _kb_lzx_decompress']
aliases={0x409ff0:'_kb_m8_pack',0x40e0b0:'_kb_m8_unpack',0x409ea0:'_kb_lzx_compress',0x40dfd0:'_kb_lzx_decompress'}
a=lo
while a<hi:
 if a in aliases: body += [aliases[a]+' LABEL NEAR']
 body += [label(a)+':']
 if a in insns:
  raw=insns[a]; decoded=list(md.disasm(raw,a))
  if len(decoded)!=1 or decoded[0].size!=len(raw): raise ValueError(f'Instruction mismatch {a:x}')
  ins=decoded[0]; mnemonic=ins.mnemonic; ops=ins.op_str
  if mnemonic in ['call','jmp'] or mnemonic.startswith('j') or mnemonic.startswith('loop'):
   if ins.operands and ins.operands[0].type==capstone.CS_OP_IMM:
    target=ins.operands[0].imm
    if target in imports: ops='_'+imports[target]; used.add(imports[target])
    elif lo<=target<hi: ops=label(target)
    else: raise ValueError(f'External transfer {a:x} -> {target:x}')
  # Resolve absolute addressing in memory operands, with symbolic relocation.
  for op in ins.operands:
   if op.type==capstone.CS_OP_MEM and op.mem.disp>=0x400000:
    addr=op.mem.disp
    if addr in iat:
     # Call via current CRT symbol rather than the release's IAT.
     if mnemonic!='call': raise ValueError('Non-call IAT reference')
     ops='_'+iat[addr]; used.add(iat[addr])
    else:
     expr=label(addr) if lo<=addr<hi else data_expr(addr)
     ops=ops.replace(hex(addr),expr)
   elif op.type==capstone.CS_OP_IMM and not (mnemonic.startswith('j') or mnemonic in ['call','loop']):
    addr=op.imm
    if lo<=addr<hi: ops=ops.replace(hex(addr),'OFFSET '+label(addr))
    elif addr in globals_seen: ops=ops.replace(hex(addr),'OFFSET '+data_expr(addr))
  # MASM hex literal syntax; movsd's implicit operands and REP spelling.
  ops=re.sub(r'0x([0-9a-f]+)',lambda m:'0'+m[1]+'h',ops)
  if mnemonic.split()[-1] in ('movsb','movsw','movsd','stosb','stosw','stosd') and 'ptr' in ops: ops=''
  if mnemonic=='ret': mnemonic='retn'
  body += ['    '+mnemonic+' '+ops+f' ; {a:08x}']
  a+=len(raw)
 else:
  # Inline jump tables contain absolute code pointers and must be relocated.
  val=struct.unpack_from('<I',image,a-0x400000)[0] if a+4<=hi else 0
  if val in insns and not any(a+i in insns for i in range(1,4)):
   body += ['    dd OFFSET '+label(val)]; a+=4
  else:
   body += [f'    db 0{image[a-0x400000]:02x}h']; a+=1
lines += ['EXTERN _'+x+':PROC' for x in sorted(used)]
lines+=body+['END']
(ROOT/'src/m8_codec.asm').write_text('\n'.join(lines)+'\n')
(ROOT/'evidence/codec-reconstruction.json').write_text(json.dumps({'start':hex(lo),'end':hex(hi),'instruction_count':len(insns),'crt_imports':sorted(used),'assembly_source':'src/m8_codec.asm'},indent=2))
print('Recovered',len(insns),'codec instructions;',len(used),'CRT dependencies')
