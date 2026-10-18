/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c8f0 */


void FUN_0040c8f0(int param_1,int param_2)

{
  int *piVar1;
  uint uVar2;
  uint *puVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  
  bVar4 = 0;
  iVar6 = param_2 + -1;
  if (-1 < iVar6) {
    puVar3 = (uint *)(iVar6 * 4 + *(int *)(param_1 + 0x2c));
    do {
      if (*puVar3 < 3) {
        bVar4 = 0;
      }
      else {
        bVar4 = bVar4 + 1;
        if (2 < bVar4) break;
      }
      puVar3 = puVar3 + -1;
      iVar6 = iVar6 + -1;
    } while (-1 < iVar6);
  }
  if (bVar4 < 3) {
    iVar6 = 0;
  }
  if (iVar6 < param_2) {
    iVar5 = iVar6 * 4;
    param_2 = param_2 - iVar6;
    do {
      uVar2 = *(uint *)(*(int *)(param_1 + 0x2c) + iVar5);
      if (uVar2 != 0) {
        if (uVar2 < 3) {
          piVar1 = (int *)(param_1 + 0x38 + uVar2 * 4);
          iVar6 = *piVar1;
          *piVar1 = *(int *)(param_1 + 0x38);
        }
        else {
          iVar6 = uVar2 - 2;
          *(undefined4 *)(param_1 + 0x40) = *(undefined4 *)(param_1 + 0x3c);
          *(undefined4 *)(param_1 + 0x3c) = *(undefined4 *)(param_1 + 0x38);
        }
        *(int *)(param_1 + 0x38) = iVar6;
      }
      iVar5 = iVar5 + 4;
      param_2 = param_2 + -1;
    } while (param_2 != 0);
  }
  return;
}

