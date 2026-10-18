/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040ad80 */


void FUN_0040ad80(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x24);
  while (iVar1 != 0) {
    FUN_0040aaf0(param_1);
    iVar1 = *(int *)(param_1 + 0x24);
  }
  FUN_0040d3c0(param_1);
  return;
}

