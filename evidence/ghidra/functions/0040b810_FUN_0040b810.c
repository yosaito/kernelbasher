/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040b810 */


undefined4 FUN_0040b810(int *param_1,int *param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  int local_4;
  
  iVar1 = param_1[0x21b];
  uVar2 = param_1[1];
  *(undefined1 *)((int)param_1 + 0x97d) = 0;
  if (iVar1 - uVar2 < uVar2) {
    uVar2 = iVar1 - uVar2;
  }
  if ((*param_1 - param_1[0x10cc]) + *param_2 < (int)((*param_2 - iVar1) + uVar2)) {
    return 0;
  }
  FUN_0040c380(param_1,0,param_1[9],param_1[10],&local_4,0);
  FUN_0040c1e0(param_1,0,0,local_4);
  FUN_0040bbe0(param_1,0);
  FUN_0040bc60(param_1);
  puVar4 = (undefined4 *)param_1[2];
  for (iVar3 = 0x10000; iVar3 != 0; iVar3 = iVar3 + -1) {
    *puVar4 = 0;
    puVar4 = puVar4 + 1;
  }
  puVar4 = (undefined4 *)param_1[0xd];
  for (iVar3 = 0x800; iVar3 != 0; iVar3 = iVar3 + -1) {
    *puVar4 = 0;
    puVar4 = puVar4 + 1;
  }
  param_1[0x11] = 1;
  param_1[0x12] = 1;
  param_1[0x13] = 1;
  param_1[0xe] = 1;
  param_1[0xf] = 1;
  param_1[0x10] = 1;
  param_1[0x260] = 1;
  param_1[0x21a] = 0;
  param_1[9] = 0;
  param_1[10] = 0;
  param_1[0x94c] = local_4;
  *param_2 = iVar1;
  return 1;
}

