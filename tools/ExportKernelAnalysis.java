// Export all recovered functions and their decompiler output for local research.
// Decompiled C is an analysis aid, not original or verified compilable source.
//@category Xbox
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.symbol.*;
import ghidra.program.model.mem.*;
import com.google.gson.*;
import java.nio.file.*;
import java.nio.charset.StandardCharsets;
import java.io.*;
import java.util.*;

public class ExportKernelAnalysis extends GhidraScript {
    public void run() throws Exception {
        String[] args=getScriptArgs();
        if (args.length!=1) throw new IllegalArgumentException("Expected output directory");
        Path out=Path.of(args[0]); Files.createDirectories(out);
        // Keep the public API name primary when the export TSV also preserves
        // a synthetic ordinal alias. This changes labels, never input bytes.
        Path labels=out.getParent().resolve("kernel-symbols.tsv");
        if(Files.exists(labels)) {
            List<String> rows=Files.readAllLines(labels);
            Set<String> namedAddresses=new HashSet<>();
            for(String line:rows.subList(1,rows.size())) {
                if(line.isBlank()) continue;
                String[] row=line.split("\t",-1);
                if(row.length<5 || row[1].isBlank() || row[1].matches("ordinal_[0-9]+")) continue;
                if(!namedAddresses.add(row[0])) {createLabel(toAddr(row[0]),row[1],false,SourceType.USER_DEFINED);continue;}
                createLabel(toAddr(row[0]),row[1],true,SourceType.USER_DEFINED);
                Function function=getFunctionAt(toAddr(row[0]));
                if(function!=null && row[2].equals("function")) function.setName(row[1],SourceType.USER_DEFINED);
            }
        }
        Path code=out.resolve("functions"); Files.createDirectories(code);
        Gson gson=new GsonBuilder().setPrettyPrinting().create();
        List<Map<String,Object>> functions=new ArrayList<>();
        List<Map<String,Object>> blocks=new ArrayList<>();
        for (MemoryBlock b:currentProgram.getMemory().getBlocks()) {
            Map<String,Object> row=new LinkedHashMap<>();
            row.put("name",b.getName());row.put("start",b.getStart().toString());row.put("end",b.getEnd().toString());
            row.put("size",b.getSize());row.put("execute",b.isExecute());row.put("initialized",b.isInitialized());blocks.add(row);
        }
        DecompInterface decompiler=new DecompInterface();
        if (!decompiler.openProgram(currentProgram)) throw new IOException("Decompiler could not open program");
        int ok=0,fail=0,index=0;
        try (PrintWriter calls=new PrintWriter(Files.newBufferedWriter(out.resolve("call-edges.tsv"),StandardCharsets.UTF_8));
             PrintWriter asm=new PrintWriter(Files.newBufferedWriter(out.resolve("instructions.tsv"),StandardCharsets.UTF_8));
             PrintWriter strings=new PrintWriter(Files.newBufferedWriter(out.resolve("defined-strings.tsv"),StandardCharsets.UTF_8))) {
            calls.println("caller_va\tcaller_name\tcall_site\ttarget_va\ttarget_name\treference_type");
            asm.println("address\tbytes\tinstruction");
            InstructionIterator instructions=currentProgram.getListing().getInstructions(true);
            while(instructions.hasNext()&&!monitor.isCancelled()) {
                Instruction ins=instructions.next(); StringBuilder hex=new StringBuilder();
                for(byte b:ins.getBytes()) hex.append(String.format("%02x",b&255));
                asm.println(ins.getAddress()+"\t"+hex+"\t"+ins.toString().replace('\t',' '));
                for(Reference ref:ins.getReferencesFrom()) {
                    if(!ref.getReferenceType().isCall()) continue;
                    Function caller=getFunctionContaining(ins.getAddress()),target=getFunctionAt(ref.getToAddress());
                    calls.println((caller==null?"":caller.getEntryPoint())+"\t"+(caller==null?"":caller.getName())+"\t"+ins.getAddress()+"\t"+ref.getToAddress()+"\t"+(target==null?"":target.getName())+"\t"+ref.getReferenceType());
                }
            }
            strings.println("address\tlength\tvalue");
            DataIterator dit=currentProgram.getListing().getDefinedData(true);
            while(dit.hasNext()) { Data d=dit.next(); if(d.hasStringValue()) strings.println(d.getAddress()+"\t"+d.getLength()+"\t"+gson.toJson(d.getValue().toString())); }
            FunctionIterator iter=currentProgram.getFunctionManager().getFunctions(true);
            while(iter.hasNext()&&!monitor.isCancelled()) {
                Function f=iter.next(); if(f.isExternal()) continue;
                Map<String,Object> row=new LinkedHashMap<>();
                row.put("va",f.getEntryPoint().toString());row.put("name",f.getName());
                row.put("body_bytes",f.getBody().getNumAddresses());row.put("calling_convention",f.getCallingConventionName());
                row.put("signature",f.getPrototypeString(false,false));row.put("thunk",f.isThunk());
                row.put("name_source",f.getSymbol().getSource().toString());
                int refs=0; ReferenceIterator ri=currentProgram.getReferenceManager().getReferencesTo(f.getEntryPoint());while(ri.hasNext()){ri.next();refs++;}
                row.put("incoming_reference_count",refs);
                DecompileResults result=decompiler.decompileFunction(f,15,monitor);
                boolean success=result.decompileCompleted()&&result.getDecompiledFunction()!=null;
                row.put("decompile_success",success);
                if(success) {
                    String filename=f.getEntryPoint()+"_"+f.getName().replaceAll("[^A-Za-z0-9_.-]","_")+".c";
                    String heading="/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.\n * Program: "+currentProgram.getName()+"; VA: "+f.getEntryPoint()+" */\n\n";
                    Files.writeString(code.resolve(filename),heading+result.getDecompiledFunction().getC(),StandardCharsets.UTF_8);
                    row.put("pseudocode_file","functions/"+filename);ok++;
                } else {row.put("decompile_error",result.getErrorMessage());fail++;}
                functions.add(row);index++;
                if(index%100==0) {println("Exported "+index+" functions; success="+ok+", failure="+fail);Files.writeString(out.resolve("functions.json"),gson.toJson(functions));}
            }
        } finally {decompiler.dispose();}
        Files.writeString(out.resolve("functions.json"),gson.toJson(functions));
        Files.writeString(out.resolve("memory-blocks.json"),gson.toJson(blocks));
        Map<String,Object> summary=new LinkedHashMap<>();
        summary.put("program",currentProgram.getName());summary.put("image_base",currentProgram.getImageBase().toString());
        summary.put("language",currentProgram.getLanguageID().toString());summary.put("compiler_spec",currentProgram.getCompilerSpec().getCompilerSpecID().toString());
        summary.put("function_count",functions.size());summary.put("decompiled",ok);summary.put("failed",fail);summary.put("cancelled",monitor.isCancelled());
        summary.put("limitations","Static auto-analysis and machine pseudocode only; no target execution, behavioral validation, or proof that all functions were discovered. Indirect call edges may be unresolved.");
        Files.writeString(out.resolve("summary.json"),gson.toJson(summary));
        println("Kernel export completed: "+gson.toJson(summary));
    }
}
