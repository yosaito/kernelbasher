/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040b980 */


undefined4 FUN_0040b980(int param_1)

{
  int iVar1;
  
  iVar1 = (**(code **)(param_1 + 0x4344))(0x9800);
  *(int *)(param_1 + 0x85c) = iVar1;
  if (iVar1 == 0) {
    return 0;
  }
  *(int *)(param_1 + 0x860) = iVar1;
  *(int *)(param_1 + 0x864) = iVar1 + 0x97c0;
  return 1;
}

