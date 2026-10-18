/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040adf0 */


void FUN_0040adf0(int *param_1,int param_2)

{
  byte *pbVar1;
  uint *puVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  uint *puVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  undefined4 *puVar10;
  uint uVar11;
  undefined4 *puVar12;
  uint local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  int local_4;
  
  local_24 = param_1[0x116];
  local_10 = local_24 + param_2;
  if (param_1[0x261] == 0) {
    iVar7 = 0x32;
    do {
      FUN_0040d420(param_1,local_24 - iVar7,(local_24 - param_1[1]) + 4);
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
  }
  else {
    param_1[0x261] = 0;
    param_1[0x94c] = 10000;
    if (param_1[0x21d] == 0) {
      FUN_0040b900(param_1,1,0);
    }
    else {
      FUN_0040b900(param_1,1,1);
      FUN_0040b900(param_1,0x10,(uint)param_1[0x21d] >> 0x10);
      FUN_0040b900(param_1,0x10,param_1[0x21d] & 0xffff);
    }
  }
LAB_0040aea0:
  do {
    if (local_24 < local_10) {
      do {
        local_20 = FUN_0040d664(param_1,local_24);
        if (((int)local_20 < 2) ||
           ((local_10 < local_24 + local_20 && (local_20 = local_10 - local_24, (int)local_20 < 2)))
           ) {
          *(undefined1 *)(param_1[0xc] + param_1[9]) = *(undefined1 *)(*param_1 + local_24);
          iVar7 = param_1[9];
          local_24 = local_24 + 1;
          param_1[9] = iVar7 + 1U;
          if (0xfff7 < iVar7 + 1U) goto LAB_0040b60c;
        }
        else {
          uVar11 = local_20;
          if ((int)local_20 < 0x32) {
            local_c = local_20 + local_24;
            local_18 = local_24 + 0xefd;
            local_8 = local_24;
            uVar11 = 2;
            *(uint *)(param_1[0x94f] + 0x2c) =
                 (uint)*(byte *)(*(byte *)(*param_1 + local_24) + 0x2540 + (int)param_1);
            *(uint *)(param_1[0x94f] + 0x1c) = local_24;
            if (1 < local_20) {
              uVar9 = 0x30;
              puVar6 = (uint *)(param_1 + 0x16);
              do {
                uVar8 = *puVar6;
                if (uVar8 < 0x400) {
                  uVar8 = (uint)*(byte *)(uVar8 + 0x45c + (int)param_1);
                }
                else if (uVar8 < 0x80000) {
                  uVar8 = (uint)(byte)(*(char *)((uVar8 >> 9) + 0x45c + (int)param_1) + 0x12);
                }
                else {
                  uVar8 = (uint)(byte)((char)(uVar8 >> 0x11) + 0x22);
                }
                if (uVar9 < 0xd8) {
                  local_1c = (uint)(byte)(&DAT_00413818)[uVar8];
                  *(uint *)(param_1[0x94f] + 0x14 + uVar9) =
                       *(byte *)(uVar11 + uVar8 * 8 + 0x263e + (int)param_1) + local_1c;
                }
                else {
                  local_1c = (uint)*(byte *)((int)param_1 + uVar11 + 0x27f4);
                  iVar7 = *(byte *)((int)param_1 + uVar8 * 8 + 0x2647) + local_1c;
                  local_1c = (uint)(byte)(&DAT_00413818)[uVar8];
                  *(uint *)(param_1[0x94f] + 0x14 + uVar9) = iVar7 + local_1c;
                }
                uVar9 = uVar9 + 0x18;
                uVar11 = uVar11 + 1;
                *(uint *)(param_1[0x94f] + -0x14 + uVar9) = local_24;
                *(uint *)(param_1[0x94f] + -0x18 + uVar9) = *puVar6;
                puVar6 = puVar6 + 1;
              } while (uVar11 <= local_20);
            }
            *(undefined4 *)(param_1[0x94f] + 0x14) = 0;
            *(int *)(param_1[0x94f] + 8) = param_1[0x11];
            *(int *)(param_1[0x94f] + 0xc) = param_1[0x12];
            *(int *)(param_1[0x94f] + 0x10) = param_1[0x13];
            iVar7 = local_24 * -0x18 + param_1[0x94f];
            while( true ) {
              local_24 = local_24 + 1;
              puVar6 = (uint *)(iVar7 + local_24 * 0x18);
              iVar5 = *(int *)(iVar7 + 4 + local_24 * 0x18);
              if (iVar5 - local_24 != -1) {
                uVar11 = *puVar6;
                if (uVar11 < 3) {
                  if (uVar11 == 0) {
                    iVar4 = iVar7 + iVar5 * 0x18;
                    param_1[0x11] = *(int *)(iVar7 + 8 + iVar5 * 0x18);
                    param_1[0x12] = *(int *)(iVar4 + 0xc);
                    iVar5 = *(int *)(iVar4 + 0x10);
                  }
                  else {
                    iVar5 = iVar7 + iVar5 * 0x18;
                    if (uVar11 == 1) {
                      param_1[0x11] = *(int *)(iVar5 + 0xc);
                      param_1[0x12] = *(int *)(iVar5 + 8);
                      iVar5 = *(int *)(iVar5 + 0x10);
                    }
                    else {
                      param_1[0x11] = *(int *)(iVar5 + 0x10);
                      param_1[0x12] = *(int *)(iVar5 + 0xc);
                      iVar5 = *(int *)(iVar5 + 8);
                    }
                  }
                }
                else {
                  param_1[0x11] = uVar11 - 2;
                  param_1[0x12] = *(int *)(iVar7 + 8 + iVar5 * 0x18);
                  iVar5 = *(int *)(iVar7 + iVar5 * 0x18 + 0xc);
                }
                param_1[0x13] = iVar5;
              }
              puVar6[2] = param_1[0x11];
              *(int *)(iVar7 + 0xc + local_24 * 0x18) = param_1[0x12];
              *(int *)(iVar7 + 0x10 + local_24 * 0x18) = param_1[0x13];
              if (local_24 == local_c) goto LAB_0040b3d9;
              uVar11 = FUN_0040d664(param_1,local_24);
              if ((local_10 < local_24 + uVar11) && (uVar11 = local_10 - local_24, (int)uVar11 < 2))
              {
                uVar11 = 0;
              }
              if ((0x32 < (int)uVar11) || (local_18 <= local_24 + uVar11)) break;
              if (((2 < (int)uVar11) || ((uVar11 == 2 && ((uint)param_1[0x16] < 0x800)))) &&
                 (local_c < local_24 + uVar11)) {
                uVar9 = (local_24 - local_8) + uVar11;
                if (0xefb < uVar9) {
                  uVar9 = 0xefc;
                }
                iVar5 = (local_c - local_8) + 1;
                if (iVar5 <= (int)uVar9) {
                  iVar4 = iVar5 * 0x18;
                  iVar5 = (uVar9 - iVar5) + 1;
                  do {
                    iVar4 = iVar4 + 0x18;
                    iVar5 = iVar5 + -1;
                    *(undefined4 *)(param_1[0x94f] + -4 + iVar4) = 0xffffffff;
                  } while (iVar5 != 0);
                }
                local_c = local_24 + uVar11;
              }
              local_4 = *(int *)(iVar7 + 0x14 + local_24 * 0x18);
              iVar5 = iVar7 + local_24 * 0x18;
              uVar9 = local_4 + (uint)*(byte *)(*(byte *)(*param_1 + local_24) + 0x2540 +
                                               (int)param_1);
              if (uVar9 < *(uint *)(iVar5 + 0x2c)) {
                *(uint *)(iVar5 + 0x2c) = uVar9;
                *(uint *)(iVar7 + 0x1c + local_24 * 0x18) = local_24;
              }
              uVar9 = 2;
              if (1 < uVar11) {
                puVar6 = (uint *)(param_1 + 0x16);
                do {
                  uVar8 = *puVar6;
                  if (uVar8 < 0x400) {
                    bVar3 = *(byte *)(uVar8 + 0x45c + (int)param_1);
                  }
                  else if (uVar8 < 0x80000) {
                    bVar3 = *(char *)((uVar8 >> 9) + 0x45c + (int)param_1) + 0x12;
                  }
                  else {
                    bVar3 = (char)(uVar8 >> 0x11) + 0x22;
                  }
                  if (uVar9 < 9) {
                    local_14 = (uint)(byte)(&DAT_00413818)[bVar3];
                    local_20 = (uint)*(byte *)(uVar9 + (uint)bVar3 * 8 + 0x263e + (int)param_1);
                    iVar5 = local_14 + local_20;
                  }
                  else {
                    local_20 = (uint)bVar3;
                    local_14 = (uint)*(byte *)((int)param_1 + local_20 * 8 + 0x2647);
                    local_1c = (uint)*(byte *)((int)param_1 + uVar9 + 0x27f4);
                    local_14 = local_14 + local_1c;
                    local_1c = (uint)(byte)(&DAT_00413818)[local_20];
                    iVar5 = local_14 + local_1c;
                  }
                  puVar2 = (uint *)(iVar7 + 0x14 + (local_24 + uVar9) * 0x18);
                  if ((uint)(iVar5 + local_4) < *puVar2) {
                    *puVar2 = iVar5 + local_4;
                    *(uint *)(iVar7 + 4 + (uVar9 + local_24) * 0x18) = local_24;
                    *(uint *)(iVar7 + (local_24 + uVar9) * 0x18) = *puVar6;
                  }
                  puVar6 = puVar6 + 1;
                  uVar9 = uVar9 + 1;
                } while (uVar9 <= uVar11);
              }
            }
            local_18 = param_1[uVar11 + 0x14];
            *(uint *)(iVar7 + (local_24 + uVar11) * 0x18) = local_18;
            *(uint *)(iVar7 + 4 + (uVar11 + local_24) * 0x18) = local_24;
            if ((local_18 == 3) && (0x10 < (int)uVar11)) {
              FUN_0040d420(param_1,local_24 + 1,(local_24 - param_1[1]) + 5);
            }
            else {
              uVar9 = 1;
              if (1 < uVar11) {
                do {
                  iVar5 = uVar9 - param_1[1];
                  iVar4 = local_24 + uVar9;
                  uVar9 = uVar9 + 1;
                  FUN_0040d420(param_1,iVar4,iVar5 + local_24 + 4);
                } while (uVar9 < uVar11);
              }
            }
            local_24 = local_24 + uVar11;
            if (local_18 < 3) {
              if (local_18 != 0) {
                iVar5 = param_1[0x11];
                param_1[0x11] = param_1[local_18 + 0x11];
                param_1[local_18 + 0x11] = iVar5;
              }
            }
            else {
              param_1[0x13] = param_1[0x12];
              param_1[0x12] = param_1[0x11];
              param_1[0x11] = local_18 - 2;
            }
LAB_0040b3d9:
            iVar5 = 0;
            uVar11 = *(uint *)(iVar7 + 4 + local_24 * 0x18);
            do {
              uVar9 = uVar11;
              iVar5 = iVar5 + 1;
              puVar6 = (uint *)(iVar7 + 4 + uVar9 * 0x18);
              uVar11 = *puVar6;
              *puVar6 = local_24;
              local_24 = uVar9;
            } while (uVar9 != local_8);
            if ((0xfff7 < (uint)(param_1[9] + iVar5)) || (0x7ff7 < (uint)(param_1[10] + iVar5))) {
              FUN_0040b7c0(param_1,uVar9);
            }
            do {
              if (local_24 + 1 < *(uint *)(iVar7 + 4 + local_24 * 0x18)) {
                pbVar1 = (byte *)(((uint)param_1[9] >> 3) + param_1[0xd]);
                *pbVar1 = *pbVar1 | '\x01' << ((byte)param_1[9] & 7);
                *(char *)(param_1[0xc] + param_1[9]) =
                     ((char)*(undefined4 *)(iVar7 + 4 + local_24 * 0x18) - (char)local_24) + -2;
                param_1[9] = param_1[9] + 1;
                *(undefined4 *)(param_1[0xb] + param_1[10] * 4) =
                     *(undefined4 *)(iVar7 + *(int *)(iVar7 + 4 + local_24 * 0x18) * 0x18);
                param_1[10] = param_1[10] + 1;
                local_24 = *(uint *)(iVar7 + 4 + local_24 * 0x18);
              }
              else {
                *(undefined1 *)(param_1[0xc] + param_1[9]) = *(undefined1 *)(*param_1 + local_24);
                param_1[9] = param_1[9] + 1;
                local_24 = local_24 + 1;
              }
              iVar5 = iVar5 + -1;
            } while (iVar5 != 0);
            if ((uint)param_1[0x94c] <= (uint)param_1[9]) {
              FUN_0040b750(param_1);
              param_1[0x94c] = param_1[0x94c] + 0x1000;
            }
            if ((*(char *)((int)param_1 + 0x97d) != '\0') &&
               ((0xfdff < (uint)param_1[9] || (0x7dff < (uint)param_1[10])))) {
              iVar7 = FUN_0040b810(param_1,&local_24);
              if (iVar7 != 0) goto LAB_0040aea0;
LAB_0040b60c:
              FUN_0040b7c0(param_1,local_24);
            }
          }
          else {
            uVar9 = param_1[local_20 + 0x14];
            if ((uVar9 == 3) && (0x10 < (int)local_20)) {
              FUN_0040d420(param_1,local_24 + 1,(local_24 - param_1[1]) + 5);
            }
            else {
              uVar8 = 1;
              if (1 < local_20) {
                do {
                  iVar7 = uVar8 - param_1[1];
                  iVar5 = local_24 + uVar8;
                  uVar8 = uVar8 + 1;
                  FUN_0040d420(param_1,iVar5,iVar7 + local_24 + 4);
                } while (uVar8 < uVar11);
              }
            }
            local_24 = local_24 + local_20;
            pbVar1 = (byte *)(((uint)param_1[9] >> 3) + param_1[0xd]);
            *pbVar1 = *pbVar1 | '\x01' << ((byte)param_1[9] & 7);
            *(char *)(param_1[0xc] + param_1[9]) = (char)local_20 + -2;
            param_1[9] = param_1[9] + 1;
            *(uint *)(param_1[0xb] + param_1[10] * 4) = uVar9;
            param_1[10] = param_1[10] + 1;
            if (uVar9 < 3) {
              if (uVar9 != 0) {
                iVar7 = param_1[0x11];
                param_1[0x11] = param_1[uVar9 + 0x11];
                param_1[uVar9 + 0x11] = iVar7;
              }
            }
            else {
              param_1[0x13] = param_1[0x12];
              param_1[0x12] = param_1[0x11];
              param_1[0x11] = uVar9 - 2;
            }
            if ((0xfff7 < (uint)param_1[9]) || (0x7ff7 < (uint)param_1[10])) goto LAB_0040b60c;
          }
        }
      } while (local_24 < local_10);
    }
    iVar7 = local_24 - param_1[1];
    param_1[0x263] = iVar7;
    if (0x7fff < param_2) {
      uVar11 = 1;
      do {
        iVar5 = local_24 - uVar11;
        uVar11 = uVar11 + 1;
        FUN_0040d5b0(param_1,iVar5,iVar7 + 0x36);
      } while (uVar11 < 0x33);
      if ((*param_1 - param_1[0x10cc]) + local_24 < (uint)(param_1[1] + param_1[0x262]))
      goto LAB_0040b733;
      if ((*(char *)((int)param_1 + 0x97d) == '\0') ||
         (iVar7 = FUN_0040b810(param_1,&local_24), iVar7 == 0)) {
        uVar11 = param_1[1];
        puVar10 = (undefined4 *)(param_1[0x262] + param_1[0x10cc]);
        puVar12 = (undefined4 *)param_1[0x10cc];
        for (uVar9 = uVar11 >> 2; uVar9 != 0; uVar9 = uVar9 - 1) {
          *puVar12 = *puVar10;
          puVar10 = puVar10 + 1;
          puVar12 = puVar12 + 1;
        }
        for (uVar11 = uVar11 & 3; uVar11 != 0; uVar11 = uVar11 - 1) {
          *(undefined1 *)puVar12 = *(undefined1 *)puVar10;
          puVar10 = (undefined4 *)((int)puVar10 + 1);
          puVar12 = (undefined4 *)((int)puVar12 + 1);
        }
        puVar10 = (undefined4 *)param_1[0x10cd] + param_1[0x262];
        puVar12 = (undefined4 *)param_1[0x10cd];
        for (uVar11 = param_1[1] & 0x3fffffff; uVar11 != 0; uVar11 = uVar11 - 1) {
          *puVar12 = *puVar10;
          puVar10 = puVar10 + 1;
          puVar12 = puVar12 + 1;
        }
        puVar10 = (undefined4 *)param_1[0x10ce] + param_1[0x262];
        puVar12 = (undefined4 *)param_1[0x10ce];
        for (uVar11 = param_1[1] & 0x3fffffff; uVar11 != 0; uVar11 = uVar11 - 1) {
          *puVar12 = *puVar10;
          puVar10 = puVar10 + 1;
          puVar12 = puVar12 + 1;
        }
        param_1[0x263] = local_24 - param_1[1];
        iVar7 = param_1[0x262];
        *param_1 = *param_1 - iVar7;
        param_1[3] = param_1[3] + iVar7 * -4;
        param_1[4] = param_1[4] + iVar7 * -4;
LAB_0040b733:
        param_1[0x116] = local_24;
        return;
      }
      goto LAB_0040aea0;
    }
    if ((*(char *)((int)param_1 + 0x97d) == '\0') ||
       (iVar7 = FUN_0040b810(param_1,&local_24), iVar7 == 0)) goto LAB_0040b733;
  } while( true );
}

