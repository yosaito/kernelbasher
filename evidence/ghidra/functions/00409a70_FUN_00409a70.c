/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00409a70 */


void * __thiscall FUN_00409a70(void *param_1,byte param_2)

{
  FUN_00409940();
  if ((param_2 & 1) != 0) {
    operator_delete(param_1);
  }
  return param_1;
}

