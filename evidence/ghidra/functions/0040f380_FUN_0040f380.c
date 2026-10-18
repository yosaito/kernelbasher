/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040f380 */


int FUN_0040f380(int *param_1,uint param_2,int param_3)

{
  uint uVar1;
  short sVar2;
  ushort *puVar3;
  int iVar4;
  ushort uVar5;
  int iVar6;
  byte bVar7;
  uint uVar8;
  char cVar9;
  char cVar10;
  uint uVar11;
  uint local_20;
  ushort *local_1c;
  int local_14;
  uint local_10;
  
  cVar9 = (char)param_1[0xbad];
  local_20 = param_1[0xbac];
  local_1c = (ushort *)param_1[0xac1];
  puVar3 = (ushort *)param_1[0xac2];
  iVar4 = *param_1;
  param_3 = param_3 + param_2;
  uVar1 = param_2;
  while( true ) {
    if (param_3 <= (int)uVar1) {
      *(char *)(param_1 + 0xbad) = cVar9;
      param_1[0xbac] = local_20;
      param_1[0xac1] = (int)local_1c;
      param_1[0xbb0] = uVar1 & param_1[2];
      return uVar1 - param_3;
    }
    iVar6 = (int)*(short *)(((local_20 & 0xffdfffff) >> 0x15) + 0x18 + (int)param_1);
    if (iVar6 < 0) {
      uVar8 = 0x200000;
      do {
        if ((local_20 & uVar8) == 0) {
          sVar2 = (short)param_1[0x38f - iVar6];
        }
        else {
          sVar2 = *(short *)((int)param_1 + iVar6 * -4 + 0xe3e);
        }
        iVar6 = (int)sVar2;
        uVar8 = uVar8 >> 1;
      } while (iVar6 < 0);
    }
    if (puVar3 <= local_1c) break;
    bVar7 = *(byte *)(iVar6 + 0xa18 + (int)param_1);
    local_20 = local_20 << (bVar7 & 0x1f);
    cVar9 = cVar9 - bVar7;
    if (cVar9 < '\x01') {
      bVar7 = -cVar9;
      cVar9 = cVar9 + '\x10';
      local_20 = local_20 | (uint)*local_1c << (bVar7 & 0x1f);
      local_1c = local_1c + 1;
    }
    uVar8 = iVar6 - 0x100;
    if ((int)uVar8 < 0) {
      *(char *)(iVar4 + uVar1) = (char)uVar8;
      uVar1 = uVar1 + 1;
    }
    else {
      uVar11 = uVar8 & 7;
      if (uVar11 == 7) {
        iVar6 = (int)*(short *)(((local_20 & 0xff7fffff) >> 0x17) + 0x818 + (int)param_1);
        if (iVar6 < 0) {
          uVar11 = 0x800000;
          do {
            if ((local_20 & uVar11) == 0) {
              sVar2 = (short)param_1[0x8cf - iVar6];
            }
            else {
              sVar2 = *(short *)((int)param_1 + iVar6 * -4 + 0x233e);
            }
            iVar6 = (int)sVar2;
            uVar11 = uVar11 >> 1;
          } while (iVar6 < 0);
        }
        bVar7 = *(byte *)(iVar6 + 0xcb8 + (int)param_1);
        local_20 = local_20 << (bVar7 & 0x1f);
        cVar9 = cVar9 - bVar7;
        if (cVar9 < '\x01') {
          uVar5 = *local_1c;
          bVar7 = -cVar9;
          cVar9 = cVar9 + '\x10';
          local_1c = local_1c + 1;
          local_20 = local_20 | (uint)uVar5 << (bVar7 & 0x1f);
        }
        uVar11 = iVar6 + 7;
      }
      cVar10 = (char)((int)uVar8 >> 3);
      if (cVar10 < '\x03') {
        local_14 = param_1[cVar10 + 3];
        if (cVar10 != '\0') {
          param_1[cVar10 + 3] = param_1[3];
          param_1[3] = local_14;
        }
      }
      else {
        iVar6 = (int)cVar10;
        bVar7 = (&DAT_004139c0)[iVar6];
        if (bVar7 < 3) {
          if (bVar7 == 0) {
            local_14 = *(int *)(&DAT_004139f8 + iVar6 * 4);
          }
          else {
            cVar9 = cVar9 - bVar7;
            uVar8 = local_20 >> (0x20 - bVar7 & 0x1f);
            local_20 = local_20 << (bVar7 & 0x1f);
            if (cVar9 < '\x01') {
              bVar7 = -cVar9;
              cVar9 = cVar9 + '\x10';
              local_20 = local_20 | (uint)*local_1c << (bVar7 & 0x1f);
              local_1c = local_1c + 1;
            }
            local_14 = uVar8 + *(int *)(&DAT_004139f8 + iVar6 * 4);
          }
        }
        else {
          if (bVar7 == 3) {
            local_10 = 0;
          }
          else {
            cVar10 = cVar9 - bVar7;
            local_10 = local_20 >> (0x23 - bVar7 & 0x1f);
            cVar9 = cVar10 + '\x03';
            local_20 = local_20 << (bVar7 - 3 & 0x1f);
            if (cVar9 < '\x01') {
              bVar7 = -cVar9;
              cVar9 = cVar10 + '\x13';
              local_20 = local_20 | (uint)*local_1c << (bVar7 & 0x1f);
              local_1c = local_1c + 1;
            }
          }
          local_14 = (int)*(char *)((local_20 >> 0x19) + 0xdb4 + (int)param_1);
          bVar7 = *(byte *)(local_14 + 0xe34 + (int)param_1);
          local_20 = local_20 << (bVar7 & 0x1f);
          cVar9 = cVar9 - bVar7;
          if (cVar9 < '\x01') {
            bVar7 = -cVar9;
            cVar9 = cVar9 + '\x10';
            local_20 = local_20 | (uint)*local_1c << (bVar7 & 0x1f);
            local_1c = local_1c + 1;
          }
          local_14 = *(int *)(&DAT_004139f8 + iVar6 * 4) + local_10 * 8 + local_14;
        }
        param_1[5] = param_1[4];
        param_1[4] = param_1[3];
        param_1[3] = local_14;
      }
      iVar6 = uVar11 + 2;
      uVar8 = uVar1 - local_14 & param_1[2];
      param_2 = uVar1;
      do {
        uVar8 = uVar8 + 1;
        iVar6 = iVar6 + -1;
        uVar1 = param_2 + 1;
        *(undefined1 *)(iVar4 + param_2) = *(undefined1 *)(iVar4 + -1 + uVar8);
        param_2 = uVar1;
      } while (0 < iVar6);
    }
  }
  return -1;
}

