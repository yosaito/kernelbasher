/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004106ad */


/* Library Function - Single Match
    __onexit
   
   Library: Visual Studio 2003 Release */

void __onexit(undefined4 param_1)

{
  if (DAT_01a215c8 == -1) {
                    /* WARNING: Could not recover jumptable at 0x004106b6. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    _onexit();
    return;
  }
  __dllonexit(param_1,&DAT_01a215c8,&DAT_01a215c4);
  return;
}

