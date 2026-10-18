/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00410a5a */


/* WARNING: Function: __SEH_prolog replaced with injection: SEH_prolog */
/* WARNING: Function: __SEH_epilog replaced with injection: EH_epilog3 */
/* Library Function - Single Match
    __RTC_Initialize
   
   Library: Visual Studio 2003 Release */

void __RTC_Initialize(void)

{
  undefined4 *local_20;
  
  for (local_20 = &DAT_00413bb0; local_20 < &DAT_00413bb0; local_20 = local_20 + 1) {
    if ((code *)*local_20 != (code *)0x0) {
      (*(code *)*local_20)();
    }
  }
  return;
}

