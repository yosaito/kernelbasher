/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040d664 */


longlong __fastcall FUN_0040d664(undefined4 param_1,uint param_2,int *param_3,uint param_4)

{
  uint *puVar1;
  byte bVar2;
  byte bVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  bool bVar14;
  bool bVar15;
  int local_48;
  int local_44;
  uint *local_40;
  uint *local_3c;
  int local_34;
  
  iVar9 = *param_3;
  uVar10 = *(uint *)(param_3[2] + (uint)*(ushort *)(param_4 + iVar9) * 4);
  *(uint *)(param_3[2] + (uint)*(ushort *)(param_4 + iVar9) * 4) = param_4;
  uVar8 = (param_4 + 4) - param_3[1];
  if ((int)uVar10 <= (int)uVar8) {
    iVar9 = param_3[4];
    *(undefined4 *)(param_3[3] + param_4 * 4) = 0;
    *(undefined4 *)(iVar9 + param_4 * 4) = 0;
    return (ulonglong)param_2 << 0x20;
  }
  iVar7 = param_3[3];
  local_34 = 2;
  local_48 = 2;
  iVar13 = param_3[4];
  local_3c = (uint *)(iVar13 + param_4 * 4);
  local_44 = 2;
  param_3[0x16] = (param_4 + 2) - uVar10;
  iVar12 = iVar9 + 2;
  iVar11 = 2;
  uVar4 = *(undefined4 *)(param_4 + iVar12);
  local_40 = (uint *)(iVar7 + param_4 * 4);
  do {
    while (*(byte *)(uVar10 + iVar12) <= (byte)uVar4) {
      if (*(byte *)(uVar10 + iVar12) < (byte)uVar4) {
        puVar1 = (uint *)(iVar7 + uVar10 * 4);
        *local_3c = uVar10;
        uVar10 = *puVar1;
        iVar12 = iVar9 + local_34;
        uVar4 = *(undefined4 *)(param_4 + iVar12);
        local_3c = puVar1;
      }
      else {
        iVar5 = local_34 + 1;
        do {
          bVar2 = *(byte *)(uVar10 + 1 + iVar12);
          bVar3 = (byte)((uint)uVar4 >> 8);
          bVar14 = bVar2 < bVar3;
          bVar15 = bVar2 == bVar3;
          iVar6 = iVar5;
          if (!bVar15) {
LAB_0040d7aa:
            if (!bVar14 && !bVar15) {
              if (local_44 < iVar6) {
                if (local_48 < iVar6) {
                  if (0x101 < iVar6) {
                    iVar6 = 0x101;
                  }
                  do {
                    iVar12 = local_48 + 1;
                    param_3[local_48 + 0x15] = (param_4 + 2) - uVar10;
                    local_48 = iVar12;
                  } while (iVar12 < iVar6);
                  local_48 = iVar6;
                  if (0x31 < iVar6) goto LAB_0040d78b;
                }
                local_44 = iVar6;
                local_34 = iVar6;
                if (iVar11 < iVar6) {
                  local_34 = iVar11;
                }
              }
              puVar1 = (uint *)(iVar13 + uVar10 * 4);
              *local_40 = uVar10;
              uVar10 = *puVar1;
              iVar12 = iVar9 + local_34;
              uVar4 = *(undefined4 *)(param_4 + iVar12);
              local_40 = puVar1;
              goto joined_r0x0040d713;
            }
            if (iVar6 <= iVar11) goto LAB_0040d7e9;
            if (iVar6 <= local_48) goto LAB_0040d7d9;
            if (0x101 < iVar6) {
              iVar6 = 0x101;
            }
            goto LAB_0040d7bd;
          }
          iVar6 = iVar5 + 1;
          bVar2 = *(byte *)(uVar10 + 2 + iVar12);
          bVar3 = (byte)((uint)uVar4 >> 0x10);
          bVar14 = bVar2 < bVar3;
          bVar15 = bVar2 == bVar3;
          if (!bVar15) goto LAB_0040d7aa;
          iVar6 = iVar5 + 2;
          bVar2 = *(byte *)(uVar10 + 3 + iVar12);
          bVar3 = (byte)((uint)uVar4 >> 0x18);
          bVar14 = bVar2 < bVar3;
          bVar15 = bVar2 == bVar3;
          if (!bVar15) goto LAB_0040d7aa;
          uVar4 = *(undefined4 *)(param_4 + 4 + iVar12);
          iVar6 = iVar5 + 3;
          bVar2 = *(byte *)(uVar10 + 4 + iVar12);
          iVar12 = iVar12 + 4;
          bVar14 = bVar2 < (byte)uVar4;
          bVar15 = bVar2 == (byte)uVar4;
          if (!bVar15) goto LAB_0040d7aa;
          iVar5 = iVar5 + 4;
        } while (iVar5 < 0x101);
        iVar6 = 0x101;
LAB_0040d7bd:
        do {
          iVar12 = local_48 + 1;
          param_3[local_48 + 0x15] = (param_4 + 2) - uVar10;
          local_48 = iVar12;
        } while (iVar12 < iVar6);
        local_48 = iVar6;
        if (0x31 < iVar6) {
LAB_0040d78b:
          *local_40 = *(uint *)(iVar7 + uVar10 * 4);
          *local_3c = *(uint *)(iVar13 + uVar10 * 4);
          goto LAB_0040d8a6;
        }
LAB_0040d7d9:
        iVar11 = iVar6;
        local_34 = iVar6;
        if (local_44 < iVar6) {
          local_34 = local_44;
        }
LAB_0040d7e9:
        puVar1 = (uint *)(iVar7 + uVar10 * 4);
        *local_3c = uVar10;
        uVar10 = *puVar1;
        iVar12 = iVar9 + local_34;
        uVar4 = *(undefined4 *)(param_4 + iVar12);
        local_3c = puVar1;
      }
joined_r0x0040d713:
      if (uVar10 <= uVar8) goto LAB_0040d892;
    }
    puVar1 = (uint *)(iVar13 + uVar10 * 4);
    *local_40 = uVar10;
    uVar10 = *puVar1;
    iVar12 = iVar9 + local_34;
    uVar4 = *(undefined4 *)(param_4 + iVar12);
    local_40 = puVar1;
  } while (uVar8 < uVar10);
LAB_0040d892:
  *local_40 = 0;
  *local_3c = 0;
LAB_0040d8a6:
  iVar7 = 0;
  iVar13 = iVar9;
  while (*(char *)(param_4 + iVar13) == *(char *)((param_4 - param_3[0x11]) + iVar13)) {
    iVar7 = iVar7 + 1;
    iVar13 = iVar13 + 1;
    if (local_48 <= iVar7) goto LAB_0040d8ca;
  }
  iVar13 = iVar7;
  if (iVar7 < 2) goto LAB_0040d901;
  do {
    param_3[iVar13 + 0x14] = 0;
    iVar13 = iVar13 + -1;
  } while (1 < iVar13);
  if (iVar7 < 0x33) {
LAB_0040d901:
    iVar12 = 0;
    iVar13 = iVar9;
    do {
      iVar11 = iVar7;
      if (*(char *)(param_4 + iVar13) != *(char *)((param_4 - param_3[0x12]) + iVar13))
      goto joined_r0x0040d935;
      iVar12 = iVar12 + 1;
      iVar13 = iVar13 + 1;
    } while (iVar12 < local_48);
    do {
      param_3[iVar12 + 0x14] = 1;
      iVar12 = iVar12 + -1;
    } while (1 < iVar12);
  }
  goto LAB_0040d999;
joined_r0x0040d983:
  for (; iVar11 < iVar7; iVar11 = iVar11 + 1) {
    param_3[iVar11 + 0x15] = 2;
  }
  goto LAB_0040d999;
LAB_0040d8ca:
  do {
    param_3[iVar7 + 0x14] = 0;
    iVar7 = iVar7 + -1;
  } while (1 < iVar7);
  goto LAB_0040d999;
joined_r0x0040d935:
  for (; iVar7 < iVar12; iVar7 = iVar7 + 1) {
    param_3[iVar7 + 0x15] = 1;
    iVar11 = iVar12;
  }
  iVar7 = 0;
  do {
    if (*(char *)(param_4 + iVar9) != *(char *)((param_4 - param_3[0x13]) + iVar9))
    goto joined_r0x0040d983;
    iVar7 = iVar7 + 1;
    iVar9 = iVar9 + 1;
  } while (iVar7 < local_48);
  do {
    param_3[iVar7 + 0x14] = 2;
    iVar7 = iVar7 + -1;
  } while (1 < iVar7);
LAB_0040d999:
  iVar9 = 0x7fff - (param_4 & 0x7fff);
  if ((iVar9 < local_48) && (local_48 = iVar9, iVar9 < 2)) {
    local_48 = 0;
  }
  return CONCAT44(param_2,local_48);
}

