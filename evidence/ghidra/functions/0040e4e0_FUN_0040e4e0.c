/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e4e0 */


undefined4
FUN_0040e4e0(int param_1,undefined4 param_2,int param_3,int param_4,undefined4 param_5,
            undefined4 param_6,int *param_7)

{
  int iVar1;
  
  *(int *)(param_1 + 0x2b04) = param_3;
  *(undefined4 *)(param_1 + 0x2b0c) = param_5;
  *(int *)(param_1 + 0x2b08) = param_3 + param_4 + 4;
  FUN_0040e9e0(param_1);
  iVar1 = FUN_0040e6c0(param_1,param_2);
  *(int *)(param_1 + 0x2ecc) = *(int *)(param_1 + 0x2ecc) + 1;
  if (iVar1 < 0) {
    *param_7 = 0;
    return 1;
  }
  *param_7 = iVar1;
  *(int *)(param_1 + 0x2b10) = *(int *)(param_1 + 0x2b10) + iVar1;
  return 0;
}

