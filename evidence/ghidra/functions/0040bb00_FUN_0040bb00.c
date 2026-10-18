/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040bb00 */


void FUN_0040bb00(int param_1,uint *param_2,int param_3)

{
  undefined4 *puVar1;
  uint uVar2;
  char cVar3;
  undefined2 uVar4;
  undefined4 uVar5;
  uint uVar6;
  uint uVar7;
  uint *puVar8;
  uint *puVar9;
  uint uVar10;
  
  if (6 < param_3) {
    puVar1 = (undefined4 *)((int)param_2 + param_3 + -6);
    uVar5 = *puVar1;
    uVar4 = *(undefined2 *)(puVar1 + 1);
    *puVar1 = 0xe8e8e8e8;
    *(undefined2 *)(puVar1 + 1) = 0xe8e8;
    uVar2 = *(int *)(param_1 + 0x99c) + -6 + param_3;
    puVar9 = param_2;
    while( true ) {
      cVar3 = (char)*puVar9;
      while (puVar8 = (uint *)((int)puVar9 + 1), cVar3 != -0x18) {
        *(int *)(param_1 + 0x99c) = *(int *)(param_1 + 0x99c) + 1;
        puVar9 = puVar8;
        cVar3 = *(char *)puVar8;
      }
      uVar6 = *(uint *)(param_1 + 0x99c);
      if (uVar2 <= uVar6) break;
      uVar10 = uVar6 + *puVar8;
      if ((-1 < (int)uVar10) && (uVar7 = *(uint *)(param_1 + 0x874), uVar10 < uVar6 + uVar7)) {
        if (uVar7 <= uVar10) {
          uVar10 = *puVar8 - uVar7;
        }
        *puVar8 = uVar10;
      }
      *(int *)(param_1 + 0x99c) = *(int *)(param_1 + 0x99c) + 5;
      puVar9 = (uint *)((int)puVar9 + 5);
    }
    *(undefined4 *)((int)param_2 + param_3 + -6) = uVar5;
    *(undefined2 *)((int)param_2 + param_3 + -2) = uVar4;
    *(uint *)(param_1 + 0x99c) = uVar2 + 6;
    return;
  }
  *(int *)(param_1 + 0x99c) = *(int *)(param_1 + 0x99c) + param_3;
  return;
}

