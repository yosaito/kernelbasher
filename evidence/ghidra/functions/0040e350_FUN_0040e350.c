/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e350 */


byte FUN_0040e350(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 uint *param_5)

{
  uint uVar1;
  int iVar2;
  uint local_4;
  
  local_4 = 0;
  if (*param_1 != 0x4349444c) {
    return 2;
  }
  uVar1 = *param_5;
  if ((uint)param_1[8] < uVar1) {
    return 3;
  }
  iVar2 = FUN_0040e4e0(param_1[10],uVar1,param_2,param_3,param_4,uVar1,&local_4);
  *param_5 = local_4;
  return (iVar2 == 0) - 1U & 4;
}

