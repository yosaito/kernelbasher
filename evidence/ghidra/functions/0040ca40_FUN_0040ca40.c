/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040ca40 */


uint FUN_0040ca40(int param_1)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;
  ushort *puVar4;
  int iVar5;
  int iVar6;
  byte local_5;
  
  iVar2 = 0x4b0;
  uVar3 = 0;
  do {
    iVar2 = iVar2 + (uint)*(byte *)(param_1 + 0x2540 + uVar3) *
                    (uint)*(ushort *)(param_1 + 0x28f8 + uVar3 * 2);
    uVar3 = uVar3 + 1;
  } while (uVar3 < 0x100);
  local_5 = 0;
  if (*(int *)(param_1 + 0x870) != 0) {
    do {
      iVar6 = (uint)local_5 * 8 + 0x100;
      puVar4 = (ushort *)(param_1 + 0x28f8 + iVar6 * 2);
      iVar5 = 8;
      do {
        uVar1 = *puVar4;
        puVar4 = puVar4 + 1;
        iVar2 = iVar2 + ((uint)*(byte *)(iVar6 + 0x2540 + param_1) +
                        (uint)(byte)(&DAT_00413818)[local_5]) * (uint)uVar1;
        iVar6 = iVar6 + 1;
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
      local_5 = local_5 + 1;
    } while ((uint)local_5 < *(uint *)(param_1 + 0x870));
  }
  uVar3 = 0;
  do {
    iVar2 = iVar2 + (uint)*(byte *)(param_1 + 0x27fd + uVar3) *
                    (uint)*(ushort *)(param_1 + 0x3c1e + uVar3 * 2);
    uVar3 = uVar3 + 1;
  } while (uVar3 < 0xf9);
  return iVar2 + 7U >> 3;
}

