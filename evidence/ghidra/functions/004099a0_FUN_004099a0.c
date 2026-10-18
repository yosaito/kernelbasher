/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004099a0 */


void * __thiscall FUN_004099a0(void *param_1,byte param_2)

{
  FUN_004098c0();
  if ((param_2 & 1) != 0) {
    operator_delete(param_1);
  }
  return param_1;
}

