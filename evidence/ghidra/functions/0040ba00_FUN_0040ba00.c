/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040ba00 */


int FUN_0040ba00(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  if (param_3 < 1) {
    return 0;
  }
  iVar1 = FUN_0040ba80(param_1,*(int *)(param_1 + 0x4330) + param_2,param_3);
  if (iVar1 < 0) {
    return 0;
  }
  if ((*(int *)(param_1 + 0x874) != 0) && (*(uint *)(param_1 + 0x433c) < 0x8000)) {
    FUN_0040bb00(param_1,*(int *)(param_1 + 0x4330) + param_2,iVar1);
    *(int *)(param_1 + 0x433c) = *(int *)(param_1 + 0x433c) + 1;
    return iVar1;
  }
  *(int *)(param_1 + 0x433c) = *(int *)(param_1 + 0x433c) + 1;
  return iVar1;
}

