//@category KernelBasher
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import java.nio.file.*;
public class ExportSaveHandler extends GhidraScript {
    public void run() throws Exception {
        DecompInterface d = new DecompInterface();
        d.openProgram(currentProgram);
        DecompileResults r = d.decompileFunction(getFunctionAt(toAddr(0x405320)), 180, monitor);
        if (!r.decompileCompleted()) throw new RuntimeException(r.getErrorMessage());
        Files.writeString(Path.of(getScriptArgs()[0]), r.getDecompiledFunction().getC());
        d.dispose();
    }
}
