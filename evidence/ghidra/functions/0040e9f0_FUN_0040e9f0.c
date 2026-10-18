/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e9f0 */


void FUN_0040e9f0(int param_1,byte param_2)

{
  ushort *puVar1;
  ushort uVar2;
  char cVar3;
  char cVar4;
  uint uVar5;
  ushort *puVar6;
  
  uVar5 = *(int *)(param_1 + 0x2eb0) << (param_2 & 0x1f);
  cVar3 = *(char *)(param_1 + 0x2eb4) - param_2;
  *(uint *)(param_1 + 0x2eb0) = uVar5;
  *(char *)(param_1 + 0x2eb4) = cVar3;
  if (cVar3 < '\x01') {
    puVar1 = *(ushort **)(param_1 + 0x2b04);
    if (*(ushort **)(param_1 + 0x2b08) <= puVar1) {
      *(undefined4 *)(param_1 + 0x2ebc) = 1;
      return;
    }
    uVar2 = *puVar1;
    puVar6 = puVar1 + 1;
    *(ushort **)(param_1 + 0x2b04) = puVar6;
    cVar4 = cVar3 + '\x10';
    uVar5 = (uint)uVar2 << (-cVar3 & 0x1fU) | uVar5;
    *(char *)(param_1 + 0x2eb4) = cVar4;
    *(uint *)(param_1 + 0x2eb0) = uVar5;
    if (cVar4 < '\x01') {
      if (*(ushort **)(param_1 + 0x2b08) <= puVar6) {
        *(undefined4 *)(param_1 + 0x2ebc) = 1;
        return;
      }
      uVar2 = *puVar6;
      *(ushort **)(param_1 + 0x2b04) = puVar1 + 2;
      *(char *)(param_1 + 0x2eb4) = cVar3 + ' ';
      *(uint *)(param_1 + 0x2eb0) = (uint)uVar2 << (-cVar4 & 0x1fU) | uVar5;
    }
  }
  return;
}

