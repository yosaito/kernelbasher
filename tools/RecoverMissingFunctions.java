//@category KernelBasher
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import java.nio.file.*;
public class RecoverMissingFunctions extends GhidraScript {
 public void run() throws Exception {
  DecompInterface d=new DecompInterface(); d.openProgram(currentProgram);
  for(String spec:new String[]{"401a90:DoDataExchange","404290:OnLogoToggle","404450:OnVScroll","4043c0:OnWhiteSplashToggle","403fe0:OnWhiteAnimationToggle","405280:OnOptionUpdate","405290:OnSceneryMod"}) {
   String[] parts=spec.split(":"); var a=toAddr(Long.parseLong(parts[0],16));
   Function f=getFunctionAt(a); if(f==null) f=createFunction(a,parts[1]);
   if(f==null) {println("Could not define "+spec);continue;}
   var r=d.decompileFunction(f,60,monitor);
   if(r.decompileCompleted()) Files.writeString(Path.of(getScriptArgs()[0],parts[1]+".c"),r.getDecompiledFunction().getC());
  }
  d.dispose();
 }
}
