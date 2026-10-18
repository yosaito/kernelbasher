/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c620 */


int FUN_0040c620(int param_1,uint param_2,uint param_3,int param_4,int param_5,int param_6)

{
  byte bVar1;
  ushort uVar2;
  uint uVar3;
  int iVar4;
  ushort *puVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  ushort *puVar9;
  int local_c88;
  ushort local_c80 [800];
  ushort local_640 [800];
  
  uVar3 = *(int *)(param_1 + 0x870) + 0x20;
  if (99 < (uVar3 & 0x1fffffff)) {
    return 0;
  }
  puVar9 = local_640;
  for (iVar4 = (uVar3 & 0xfffffff) << 2; iVar4 != 0; iVar4 = iVar4 + -1) {
    puVar9[0] = 0;
    puVar9[1] = 0;
    puVar9 = puVar9 + 2;
  }
  for (iVar4 = 0; iVar4 != 0; iVar4 = iVar4 + -1) {
    *(undefined1 *)puVar9 = 0;
    puVar9 = (ushort *)((int)puVar9 + 1);
  }
  puVar9 = local_c80;
  for (iVar4 = (uVar3 & 0xfffffff) << 2; iVar4 != 0; iVar4 = iVar4 + -1) {
    puVar9[0] = 0;
    puVar9[1] = 0;
    puVar9 = puVar9 + 2;
  }
  for (iVar4 = 0; iVar4 != 0; iVar4 = iVar4 + -1) {
    *(undefined1 *)puVar9 = 0;
    puVar9 = (ushort *)((int)puVar9 + 1);
  }
  if (param_6 != 0) {
    local_c88 = param_6;
    do {
      if ((1 << ((byte)param_2 & 7) & (uint)*(byte *)((param_2 >> 3) + *(int *)(param_1 + 0x34))) ==
          0) {
        uVar6 = (uint)*(byte *)(*(int *)(param_1 + 0x30) + param_2);
      }
      else {
        bVar1 = *(byte *)(*(int *)(param_1 + 0x30) + param_2);
        uVar6 = *(uint *)(*(int *)(param_1 + 0x2c) + param_4 * 4);
        if (bVar1 < 7) {
          if (uVar6 < 0x400) {
            uVar6 = (uint)*(byte *)(param_1 + 0x45c + uVar6);
          }
          else if (uVar6 < 0x80000) {
            uVar6 = *(byte *)((uVar6 >> 9) + 0x45c + param_1) + 0x12;
          }
          else {
            uVar6 = (uVar6 >> 0x11 & 0xff) + 0x22;
          }
          uVar6 = bVar1 + 0x100 + uVar6 * 8;
        }
        else {
          if (uVar6 < 0x400) {
            uVar6 = (uint)*(byte *)(param_1 + 0x45c + uVar6);
          }
          else if (uVar6 < 0x80000) {
            uVar6 = *(byte *)((uVar6 >> 9) + 0x45c + param_1) + 0x12;
          }
          else {
            uVar6 = (uVar6 >> 0x11 & 0xff) + 0x22;
          }
          uVar6 = uVar6 * 8 + 0x107;
        }
        param_4 = param_4 + 1;
      }
      local_640[uVar6] = local_640[uVar6] + 1;
      param_2 = param_2 + 1;
      if ((1 << ((byte)param_3 & 7) & (uint)*(byte *)((param_3 >> 3) + *(int *)(param_1 + 0x34))) ==
          0) {
        uVar6 = (uint)*(byte *)(*(int *)(param_1 + 0x30) + param_3);
      }
      else {
        bVar1 = *(byte *)(*(int *)(param_1 + 0x30) + param_3);
        if (bVar1 < 7) {
          uVar6 = *(uint *)(*(int *)(param_1 + 0x2c) + param_5 * 4);
          if (uVar6 < 0x400) {
            uVar6 = (uint)*(byte *)(param_1 + 0x45c + uVar6);
          }
          else if (uVar6 < 0x80000) {
            uVar6 = *(byte *)((uVar6 >> 9) + 0x45c + param_1) + 0x12;
          }
          else {
            uVar6 = (uVar6 >> 0x11 & 0xff) + 0x22;
          }
          uVar6 = bVar1 + 0x100 + uVar6 * 8;
        }
        else {
          uVar6 = *(uint *)(*(int *)(param_1 + 0x2c) + param_5 * 4);
          if (uVar6 < 0x400) {
            uVar6 = (uint)*(byte *)(param_1 + 0x45c + uVar6);
          }
          else if (uVar6 < 0x80000) {
            uVar6 = *(byte *)((uVar6 >> 9) + 0x45c + param_1) + 0x12;
          }
          else {
            uVar6 = (uVar6 >> 0x11 & 0xff) + 0x22;
          }
          uVar6 = uVar6 * 8 + 0x107;
        }
        param_5 = param_5 + 1;
      }
      local_c80[uVar6] = local_c80[uVar6] + 1;
      param_3 = param_3 + 1;
      local_c88 = local_c88 + -1;
    } while (local_c88 != 0);
  }
  iVar4 = 0;
  if ((uVar3 & 0x1fffffff) != 0) {
    puVar9 = local_c80;
    puVar5 = local_640;
    iVar8 = uVar3 * 8;
    do {
      uVar2 = *puVar5;
      if (uVar2 < 0x100) {
        uVar3 = (uint)(byte)(&DAT_004138c0)[uVar2];
      }
      else {
        uVar3 = (byte)(&DAT_004138c0)[uVar2 >> 8] + 8;
      }
      uVar2 = *puVar9;
      if (uVar2 < 0x100) {
        uVar6 = (uint)(byte)(&DAT_004138c0)[uVar2];
      }
      else {
        uVar6 = (byte)(&DAT_004138c0)[uVar2 >> 8] + 8;
      }
      puVar9 = puVar9 + 1;
      puVar5 = puVar5 + 1;
      uVar7 = *(int *)(&DAT_00413878 + uVar3 * 4) - *(int *)(&DAT_00413878 + uVar6 * 4) >> 0x1f;
      iVar4 = (iVar4 - uVar7) +
              (*(int *)(&DAT_00413878 + uVar3 * 4) - *(int *)(&DAT_00413878 + uVar6 * 4) ^ uVar7);
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
  }
  return iVar4;
}

