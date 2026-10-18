"""Package the editable reconstruction and a separate portable Windows build."""
from pathlib import Path
import hashlib,json,zipfile
ROOT=Path(__file__).resolve().parents[1]
DIST=ROOT/'dist';DIST.mkdir(exist_ok=True)
source=[]
for name in ['README.md','build.cmd','.gitignore','.gitattributes']:
 source.append(ROOT/name)
for folder in ['src','docs','original']:
 source.extend(p for p in (ROOT/folder).rglob('*') if p.is_file())
source.extend(p for p in (ROOT/'tools').iterdir() if p.is_file() and p.suffix in ['.py','.java','.txt'])
for folder in ['evidence/ghidra','evidence/differential']:
 source.extend(p for p in (ROOT/folder).rglob('*') if p.is_file())
source.extend(p for p in (ROOT/'evidence').iterdir() if p.is_file() and not p.name.startswith('consult-'))
source=sorted(set(source))
manifest={'files':[{'path':str(p.relative_to(ROOT)).replace('\\','/'),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in source]}
with zipfile.ZipFile(DIST/'KernelBasher-reconstructed-source.zip','w',zipfile.ZIP_DEFLATED,compresslevel=9) as z:
 for p in source:z.write(p,'KernelBasher-source/'+str(p.relative_to(ROOT)).replace('\\','/'))
 z.writestr('KernelBasher-source/MANIFEST.json',json.dumps(manifest,indent=2)+'\n')
with zipfile.ZipFile(DIST/'KernelBasher-reconstructed-Windows.zip','w',zipfile.ZIP_DEFLATED,compresslevel=9) as z:
 for file in ['KernelBasher.exe','KernelBasher-cli.exe','xbflash.dll','msvcr71.dll','config.ini']:
  z.write(ROOT/'build'/file,'KernelBasher/'+file)
 z.write(ROOT/'README.md','KernelBasher/README-source-project.md')
 z.writestr('KernelBasher/START-HERE.txt','KernelBasher 1.1 reconstructed build\n\nRun KernelBasher.exe in this folder. Keep both DLLs and config.ini beside it.\nOriginal presets and .x meshes are included. The source is in the separate source archive.\n\nUse an unmodified supported BIOS and save to a NEW filename. This application\ndoes not flash hardware. No hardware or real-BIOS boot verification was performed.\nM8 preserves input ROM size. Read the source-project README for test scope.\n')
 for folder in ['Presets','xfiles']:
  for p in (ROOT/'original/extracted'/folder).rglob('*'):
   if p.is_file():z.write(p,'KernelBasher/'+str(p.relative_to(ROOT/'original/extracted')).replace('\\','/'))
 for file in ['README.TXT','XBOX TEXT TUTORIAL.pdf']:
  z.write(ROOT/'original/extracted'/file,'KernelBasher/original-documentation/'+file)
outputs=[]
for p in sorted(DIST.glob('*.zip')):
 with zipfile.ZipFile(p) as z:assert z.testzip() is None
 outputs.append({'file':p.name,'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
(DIST/'SHA256SUMS.json').write_text(json.dumps(outputs,indent=2)+'\n')
print(json.dumps(outputs,indent=2))
