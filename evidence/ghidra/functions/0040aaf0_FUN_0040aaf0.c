/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040aaf0 */


void FUN_0040aaf0(int param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  uint local_8;
  int local_4;
  
  FUN_0040c380(param_1,0,*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),&local_8,
               &local_4);
  FUN_0040abf0(param_1,local_8,local_4);
  puVar6 = *(undefined4 **)(param_1 + 0x34);
  if (local_8 == *(uint *)(param_1 + 0x24)) {
    for (iVar1 = 0x800; iVar1 != 0; iVar1 = iVar1 + -1) {
      *puVar6 = 0;
      puVar6 = puVar6 + 1;
    }
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x28) = 0;
  }
  else {
    uVar3 = ((*(uint *)(param_1 + 0x24) >> 3) - (local_8 >> 3)) + 1;
    puVar5 = (undefined4 *)((local_8 >> 3) + (int)puVar6);
    for (uVar2 = uVar3 >> 2; uVar2 != 0; uVar2 = uVar2 - 1) {
      *puVar6 = *puVar5;
      puVar5 = puVar5 + 1;
      puVar6 = puVar6 + 1;
    }
    for (uVar3 = uVar3 & 3; uVar3 != 0; uVar3 = uVar3 - 1) {
      *(undefined1 *)puVar6 = *(undefined1 *)puVar5;
      puVar5 = (undefined4 *)((int)puVar5 + 1);
      puVar6 = (undefined4 *)((int)puVar6 + 1);
    }
    uVar2 = *(int *)(param_1 + 0x24) - local_8 >> 3;
    uVar4 = 0x1fff - uVar2;
    puVar6 = (undefined4 *)(*(int *)(param_1 + 0x34) + 1 + uVar2);
    for (uVar3 = uVar4 >> 2; uVar3 != 0; uVar3 = uVar3 - 1) {
      *puVar6 = 0;
      puVar6 = puVar6 + 1;
    }
    for (uVar4 = uVar4 & 3; uVar4 != 0; uVar4 = uVar4 - 1) {
      *(undefined1 *)puVar6 = 0;
      puVar6 = (undefined4 *)((int)puVar6 + 1);
    }
    uVar3 = *(int *)(param_1 + 0x24) - local_8;
    puVar6 = (undefined4 *)(local_8 + (int)*(undefined4 **)(param_1 + 0x30));
    puVar5 = *(undefined4 **)(param_1 + 0x30);
    for (uVar2 = uVar3 >> 2; uVar2 != 0; uVar2 = uVar2 - 1) {
      *puVar5 = *puVar6;
      puVar6 = puVar6 + 1;
      puVar5 = puVar5 + 1;
    }
    for (uVar3 = uVar3 & 3; uVar3 != 0; uVar3 = uVar3 - 1) {
      *(undefined1 *)puVar5 = *(undefined1 *)puVar6;
      puVar6 = (undefined4 *)((int)puVar6 + 1);
      puVar5 = (undefined4 *)((int)puVar5 + 1);
    }
    puVar6 = *(undefined4 **)(param_1 + 0x2c) + local_4;
    puVar5 = *(undefined4 **)(param_1 + 0x2c);
    for (uVar2 = *(int *)(param_1 + 0x28) - local_4 & 0x3fffffff; uVar2 != 0; uVar2 = uVar2 - 1) {
      *puVar5 = *puVar6;
      puVar6 = puVar6 + 1;
      puVar5 = puVar5 + 1;
    }
    *(int *)(param_1 + 0x24) = *(int *)(param_1 + 0x24) - local_8;
    *(int *)(param_1 + 0x28) = *(int *)(param_1 + 0x28) - local_4;
  }
  FUN_0040bc60(param_1);
  return;
}

