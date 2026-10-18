/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004106d3 */


/* Library Function - Single Match
    _atexit
   
   Library: Visual Studio 2003 Release */

int __cdecl _atexit(_func_4879 *param_1)

{
  int iVar1;
  
  iVar1 = __onexit(param_1);
  return (iVar1 != 0) - 1;
}

