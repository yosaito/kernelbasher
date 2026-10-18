/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040ba80 */


uint FUN_0040ba80(int param_1,undefined4 *param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  undefined4 *puVar3;
  
  uVar1 = *(uint *)(param_1 + 0x998);
  if ((int)param_3 <= (int)uVar1) {
    puVar3 = *(undefined4 **)(param_1 + 0x994);
    for (uVar1 = param_3 >> 2; uVar1 != 0; uVar1 = uVar1 - 1) {
      *param_2 = *puVar3;
      puVar3 = puVar3 + 1;
      param_2 = param_2 + 1;
    }
    for (uVar1 = param_3 & 3; uVar1 != 0; uVar1 = uVar1 - 1) {
      *(undefined1 *)param_2 = *(undefined1 *)puVar3;
      puVar3 = (undefined4 *)((int)puVar3 + 1);
      param_2 = (undefined4 *)((int)param_2 + 1);
    }
    *(int *)(param_1 + 0x998) = *(int *)(param_1 + 0x998) - param_3;
    *(int *)(param_1 + 0x994) = *(int *)(param_1 + 0x994) + param_3;
    return param_3;
  }
  if ((int)uVar1 < 1) {
    return 0;
  }
  puVar3 = *(undefined4 **)(param_1 + 0x994);
  for (uVar2 = uVar1 >> 2; uVar2 != 0; uVar2 = uVar2 - 1) {
    *param_2 = *puVar3;
    puVar3 = puVar3 + 1;
    param_2 = param_2 + 1;
  }
  for (uVar2 = uVar1 & 3; uVar2 != 0; uVar2 = uVar2 - 1) {
    *(undefined1 *)param_2 = *(undefined1 *)puVar3;
    puVar3 = (undefined4 *)((int)puVar3 + 1);
    param_2 = (undefined4 *)((int)param_2 + 1);
  }
  *(int *)(param_1 + 0x994) = *(int *)(param_1 + 0x994) + *(int *)(param_1 + 0x998);
  *(undefined4 *)(param_1 + 0x998) = 0;
  return uVar1;
}

