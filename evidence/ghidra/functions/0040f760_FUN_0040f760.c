/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040f760 */


int FUN_0040f760(int *param_1,int param_2,int param_3)

{
  undefined1 uVar1;
  short sVar2;
  ushort *puVar3;
  int iVar4;
  ushort uVar5;
  byte bVar6;
  uint uVar7;
  char cVar8;
  char cVar9;
  int iVar10;
  ushort *puVar11;
  uint uVar12;
  uint local_1c;
  uint local_18;
  int local_14;
  
  cVar9 = (char)param_1[0xbad];
  local_18 = param_1[0xbac];
  puVar11 = (ushort *)param_1[0xac1];
  puVar3 = (ushort *)param_1[0xac2];
  iVar4 = *param_1;
  param_3 = param_3 + param_2;
  while( true ) {
    if (param_3 <= param_2) {
      *(char *)(param_1 + 0xbad) = cVar9;
      param_1[0xbac] = local_18;
      param_1[0xac1] = (int)puVar11;
      return param_2;
    }
    iVar10 = (int)*(short *)(((local_18 & 0xffdfffff) >> 0x15) + 0x18 + (int)param_1);
    if (iVar10 < 0) {
      uVar7 = 0x200000;
      do {
        if ((local_18 & uVar7) == 0) {
          sVar2 = (short)param_1[0x38f - iVar10];
        }
        else {
          sVar2 = *(short *)((int)param_1 + iVar10 * -4 + 0xe3e);
        }
        iVar10 = (int)sVar2;
        uVar7 = uVar7 >> 1;
      } while (iVar10 < 0);
    }
    if (puVar3 <= puVar11) break;
    bVar6 = *(byte *)(iVar10 + 0xa18 + (int)param_1);
    local_18 = local_18 << (bVar6 & 0x1f);
    cVar8 = cVar9 - bVar6;
    cVar9 = cVar8;
    if (cVar8 < '\x01') {
      uVar5 = *puVar11;
      puVar11 = puVar11 + 1;
      cVar9 = cVar8 + '\x10';
      local_18 = local_18 | (uint)uVar5 << (-cVar8 & 0x1fU);
    }
    uVar7 = iVar10 - 0x100;
    if ((int)uVar7 < 0) {
      *(char *)(iVar4 + param_2) = (char)uVar7;
      iVar10 = param_1[1] + param_2;
      param_2 = param_2 + 1;
      *(char *)(iVar10 + iVar4) = (char)uVar7;
    }
    else {
      uVar12 = uVar7 & 7;
      if (uVar12 == 7) {
        iVar10 = (int)*(short *)(((local_18 & 0xff7fffff) >> 0x17) + 0x818 + (int)param_1);
        if (iVar10 < 0) {
          uVar12 = 0x800000;
          do {
            if ((local_18 & uVar12) == 0) {
              sVar2 = (short)param_1[0x8cf - iVar10];
            }
            else {
              sVar2 = *(short *)((int)param_1 + iVar10 * -4 + 0x233e);
            }
            iVar10 = (int)sVar2;
            uVar12 = uVar12 >> 1;
          } while (iVar10 < 0);
        }
        bVar6 = *(byte *)(iVar10 + 0xcb8 + (int)param_1);
        local_18 = local_18 << (bVar6 & 0x1f);
        cVar8 = cVar9 - bVar6;
        cVar9 = cVar8;
        if (cVar8 < '\x01') {
          uVar5 = *puVar11;
          puVar11 = puVar11 + 1;
          cVar9 = cVar8 + '\x10';
          local_18 = local_18 | (uint)uVar5 << (-cVar8 & 0x1fU);
        }
        uVar12 = iVar10 + 7;
      }
      cVar8 = (char)((int)uVar7 >> 3);
      iVar10 = (int)cVar8;
      if (cVar8 < '\x03') {
        local_14 = param_1[iVar10 + 3];
        if (cVar8 != '\0') {
          param_1[iVar10 + 3] = param_1[3];
          param_1[3] = local_14;
        }
      }
      else {
        bVar6 = (&DAT_004139c0)[iVar10];
        if (bVar6 < 3) {
          if (bVar6 == 0) {
            local_14 = 1;
          }
          else {
            cVar9 = cVar9 - bVar6;
            uVar7 = local_18 >> (0x20 - bVar6 & 0x1f);
            local_18 = local_18 << (bVar6 & 0x1f);
            if (cVar9 < '\x01') {
              uVar5 = *puVar11;
              puVar11 = puVar11 + 1;
              bVar6 = -cVar9;
              cVar9 = cVar9 + '\x10';
              local_18 = local_18 | (uint)uVar5 << (bVar6 & 0x1f);
            }
            local_14 = uVar7 + *(int *)(&DAT_004139f8 + iVar10 * 4);
          }
        }
        else {
          if (bVar6 == 3) {
            local_1c = 0;
          }
          else {
            cVar8 = cVar9 - bVar6;
            local_1c = local_18 >> (0x23 - bVar6 & 0x1f);
            cVar9 = cVar8 + '\x03';
            local_18 = local_18 << (bVar6 - 3 & 0x1f);
            if (cVar9 < '\x01') {
              uVar5 = *puVar11;
              puVar11 = puVar11 + 1;
              bVar6 = -cVar9;
              cVar9 = cVar8 + '\x13';
              local_18 = local_18 | (uint)uVar5 << (bVar6 & 0x1f);
            }
          }
          local_14 = (int)*(char *)((local_18 >> 0x19) + 0xdb4 + (int)param_1);
          bVar6 = *(byte *)(local_14 + 0xe34 + (int)param_1);
          local_18 = local_18 << (bVar6 & 0x1f);
          cVar9 = cVar9 - bVar6;
          if (cVar9 < '\x01') {
            uVar5 = *puVar11;
            puVar11 = puVar11 + 1;
            bVar6 = -cVar9;
            cVar9 = cVar9 + '\x10';
            local_18 = local_18 | (uint)uVar5 << (bVar6 & 0x1f);
          }
          local_14 = *(int *)(&DAT_004139f8 + iVar10 * 4) + local_1c * 8 + local_14;
        }
        param_1[5] = param_1[4];
        param_1[4] = param_1[3];
        param_1[3] = local_14;
      }
      iVar10 = uVar12 + 2;
      do {
        uVar1 = *(undefined1 *)((param_2 - local_14 & param_1[2]) + iVar4);
        *(undefined1 *)(iVar4 + param_2) = uVar1;
        if (param_2 < 0x101) {
          *(undefined1 *)(param_1[1] + iVar4 + param_2) = uVar1;
        }
        param_2 = param_2 + 1;
        iVar10 = iVar10 + -1;
      } while (0 < iVar10);
    }
  }
  return -1;
}

