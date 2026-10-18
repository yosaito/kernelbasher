/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040fed3 */


undefined8 __fastcall
FUN_0040fed3(undefined4 param_1,undefined4 param_2,int *param_3,uint param_4,int param_5)

{
  int iVar1;
  int iVar2;
  ushort uVar3;
  uint uVar4;
  uint uVar5;
  undefined4 uVar6;
  uint uVar7;
  byte bVar8;
  byte bVar9;
  char cVar10;
  byte bVar11;
  int iVar12;
  uint uVar13;
  uint uVar14;
  ushort *puVar15;
  ushort *puVar16;
  uint uVar17;
  bool bVar18;
  uint local_38;
  int local_28 [4];
  
  puVar16 = (ushort *)param_3[0xac1];
  uVar4 = param_5 + param_4;
  iVar1 = *param_3;
  local_38 = param_3[0xbac];
  local_28[0] = param_3[3];
  local_28[1] = param_3[4];
  local_28[2] = param_3[5];
  uVar7 = (uint)*(byte *)(param_3 + 0xbad);
  local_28[3] = uVar7;
  do {
    iVar2 = local_28[1];
    puVar15 = (ushort *)param_3[0xac2];
    uVar17 = param_4;
    while( true ) {
      iVar12 = (int)*(short *)((int)param_3 + (local_38 >> 0x16) * 2 + 0x18);
      if (iVar12 < 0) {
        uVar13 = local_38 << 10;
        do {
          bVar18 = CARRY4(uVar13,uVar13);
          uVar13 = uVar13 * 2;
          iVar12 = (int)*(short *)((int)param_3 + (iVar12 * -2 + (uint)bVar18) * 2 + 0xe3c);
        } while (iVar12 < 0);
      }
      if (puVar15 <= puVar16) {
        return CONCAT44(param_2,0xffffffff);
      }
      bVar11 = *(byte *)((int)param_3 + iVar12 + 0xa18);
      local_38 = local_38 << (bVar11 & 0x1f);
      bVar8 = (char)uVar7 - bVar11;
      if (bVar8 == 0 || (char)uVar7 < (char)bVar11) {
        uVar3 = *puVar16;
        puVar16 = puVar16 + 1;
        local_38 = (uint)uVar3 << ((bVar8 ^ 0xff) + 1 & 0x1f) | local_38;
        bVar8 = bVar8 + 0x10;
      }
      uVar7 = (uint)bVar8;
      uVar13 = iVar12 - 0x100;
      if (-1 < (int)uVar13) break;
      param_4 = uVar17 + 1;
      *(char *)(uVar17 + iVar1) = (char)uVar13;
      puVar15 = (ushort *)param_3[0xac2];
      uVar17 = param_4;
      if (uVar4 <= param_4) goto LAB_00410114;
    }
    uVar14 = uVar13 >> 3;
    uVar13 = uVar13 & 7;
    if (uVar13 == 7) {
      iVar12 = (int)*(short *)((int)param_3 + (local_38 >> 0x18) * 2 + 0x818);
      if (iVar12 < 0) {
        uVar7 = local_38 << 8;
        do {
          bVar18 = CARRY4(uVar7,uVar7);
          uVar7 = uVar7 * 2;
          iVar12 = (int)*(short *)((int)param_3 + (iVar12 * -2 + (uint)bVar18) * 2 + 0x233c);
        } while (iVar12 < 0);
      }
      bVar11 = *(byte *)(iVar12 + 0xcb8 + (int)param_3);
      uVar13 = iVar12 + 7;
      local_38 = local_38 << (bVar11 & 0x1f);
      bVar9 = bVar8 - bVar11;
      uVar7 = (uint)bVar9;
      if (bVar9 == 0 || (char)bVar8 < (char)bVar11) {
        local_38 = (uint)*puVar16 << ((bVar9 ^ 0xff) + 1 & 0x1f) | local_38;
        uVar7 = (uint)(byte)(bVar9 + 0x10);
        puVar16 = puVar16 + 1;
      }
    }
    uVar5 = uVar14 & 0xff;
    puVar15 = puVar16;
    if ((char)uVar14 < '\x04') {
      if (uVar14 != 0) {
        if ((char)uVar14 == '\x03') {
          iVar12 = 1;
          goto LAB_004100d3;
        }
        iVar2 = local_28[uVar14];
        local_28[uVar14] = local_28[0];
        local_28[0] = iVar2;
      }
    }
    else {
      iVar12 = (local_38 >> ((&DAT_0040fea0)[uVar5] & 0x1f)) + *(int *)(&DAT_004139f8 + uVar5 * 4);
      bVar11 = (&DAT_004139c0)[uVar5];
      local_38 = local_38 << (bVar11 & 0x1f);
      cVar10 = (char)uVar7;
      bVar8 = cVar10 - bVar11;
      uVar7 = (uint)bVar8;
      if (bVar8 == 0 || cVar10 < (char)bVar11) {
        local_38 = (uint)*puVar16 << ((bVar8 ^ 0xff) + 1 & 0x1f) | local_38;
        bVar11 = bVar8 + 0x10;
        uVar7 = (uint)bVar11;
        puVar15 = puVar16 + 1;
        if (bVar11 == 0 || (char)bVar8 < -0x10) {
          local_38 = (uint)puVar16[1] << ((bVar11 ^ 0xff) + 1 & 0x1f) | local_38;
          uVar7 = (uint)(byte)(bVar8 + 0x20);
          puVar15 = puVar16 + 2;
        }
      }
LAB_004100d3:
      local_28[1] = local_28[0];
      local_28[2] = iVar2;
      puVar16 = puVar15;
      local_28[0] = iVar12;
    }
    bVar8 = (byte)uVar7;
    uVar14 = uVar17 - local_28[0] & param_3[2];
    iVar2 = *param_3;
    *(undefined1 *)(uVar17 + iVar2) = *(undefined1 *)(uVar14 + iVar2);
    uVar17 = uVar17 + 1;
    do {
      uVar14 = uVar14 + 1;
      param_4 = uVar17 + 1;
      *(undefined1 *)(uVar17 + iVar2) = *(undefined1 *)(uVar14 + iVar2);
      bVar18 = 0 < (int)uVar13;
      uVar13 = uVar13 - 1;
      uVar17 = param_4;
    } while (bVar18);
    if (uVar4 <= param_4) {
LAB_00410114:
      uVar6 = 0;
      if (param_4 != uVar4) {
        uVar6 = 0xffffffff;
      }
      *(byte *)(param_3 + 0xbad) = bVar8;
      param_3[0xbb0] = param_4 & param_3[2];
      param_3[0xac1] = (int)puVar16;
      param_3[3] = local_28[0];
      param_3[4] = local_28[1];
      param_3[5] = local_28[2];
      param_3[0xbac] = local_38;
      return CONCAT44(param_2,uVar6);
    }
  } while( true );
}

