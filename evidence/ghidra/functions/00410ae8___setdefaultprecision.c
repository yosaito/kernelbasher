/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00410ae8 */


/* Library Function - Single Match
    __setdefaultprecision
   
   Library: Visual Studio 2003 Release */

void __setdefaultprecision(void)

{
  _controlfp(0x10000,0x30000);
  return;
}

