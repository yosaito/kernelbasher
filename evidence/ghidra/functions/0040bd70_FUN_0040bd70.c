/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040bd70 */


void FUN_0040bd70(undefined4 param_1,undefined4 *param_2,undefined4 *param_3,uint param_4)

{
  byte *pbVar1;
  undefined1 uVar2;
  byte bVar3;
  byte bVar4;
  undefined1 *puVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  short *psVar10;
  char local_b1;
  char local_a8 [24];
  uint local_90 [12];
  short local_60 [17];
  short local_3e;
  short local_3c;
  short local_3a;
  
  psVar10 = local_60;
  for (iVar7 = 0x18; iVar7 != 0; iVar7 = iVar7 + -1) {
    psVar10[0] = 0;
    psVar10[1] = 0;
    psVar10 = psVar10 + 2;
  }
  puVar5 = (undefined1 *)(param_4 + (int)param_2);
  iVar7 = 0;
  uVar2 = *puVar5;
  *puVar5 = 0x7b;
  if (0 < (int)param_4) {
    do {
      iVar8 = 0;
      iVar6 = iVar7 + 1;
      bVar3 = *(byte *)((int)param_2 + iVar7);
      bVar4 = *(byte *)((int)param_2 + iVar6);
      while (bVar4 == bVar3) {
        iVar8 = iVar8 + 1;
        iVar6 = iVar6 + 1;
        bVar4 = *(byte *)((int)param_2 + iVar6);
      }
      if (iVar8 < 4) {
        local_60[(byte)(&DAT_00413861)[(uint)*(byte *)((int)param_3 + iVar7) - (uint)bVar3]] =
             local_60[(byte)(&DAT_00413861)[(uint)*(byte *)((int)param_3 + iVar7) - (uint)bVar3]] +
             1;
      }
      else if (bVar3 == 0) {
        if (0x33 < iVar8) {
          iVar8 = 0x33;
        }
        if (iVar8 < 0x14) {
          local_3e = local_3e + 1;
          iVar7 = iVar8 + -1 + iVar7;
        }
        else {
          local_3c = local_3c + 1;
          iVar7 = iVar8 + -1 + iVar7;
        }
      }
      else {
        if (5 < iVar8) {
          iVar8 = 5;
        }
        pbVar1 = (byte *)((int)param_3 + iVar7);
        iVar7 = iVar8 + -1 + iVar7;
        local_90[0] = (uint)bVar3;
        local_60[(byte)(&DAT_00413861)[*pbVar1 - local_90[0]]] =
             local_60[(byte)(&DAT_00413861)[*pbVar1 - local_90[0]]] + 1;
        local_3a = local_3a + 1;
      }
      iVar7 = iVar7 + 1;
    } while (iVar7 < (int)param_4);
  }
  FUN_0040d9e0(param_1,0x14,local_60,local_a8,local_90,1);
  iVar7 = 0;
  do {
    iVar6 = iVar7 + 1;
    FUN_0040b900(param_1,4,(int)local_a8[iVar7]);
    iVar7 = iVar6;
  } while (iVar6 < 0x14);
  iVar7 = 0;
  if (0 < (int)param_4) {
    do {
      iVar8 = 0;
      iVar6 = iVar7 + 1;
      bVar3 = *(byte *)((int)param_2 + iVar7);
      bVar4 = *(byte *)((int)param_2 + iVar6);
      while (bVar4 == bVar3) {
        iVar8 = iVar8 + 1;
        iVar6 = iVar6 + 1;
        bVar4 = *(byte *)((int)param_2 + iVar6);
      }
      if (iVar8 < 4) {
        local_b1 = (&DAT_00413861)[(uint)*(byte *)((int)param_3 + iVar7) - (uint)bVar3];
      }
      else if (bVar3 == 0) {
        if (0x33 < iVar8) {
          iVar8 = 0x33;
        }
        local_b1 = (0x13 < iVar8) + '\x11';
      }
      else {
        if (5 < iVar8) {
          iVar8 = 5;
        }
        local_b1 = '\x13';
      }
      FUN_0040b900(param_1,(int)local_a8[local_b1],*(uint *)((int)local_90 + local_b1 * 2) & 0xffff)
      ;
      if (local_b1 == '\x11') {
        uVar9 = iVar8 - 4;
        iVar6 = 4;
LAB_0040bfb1:
        iVar7 = iVar8 + -1 + iVar7;
        FUN_0040b900(param_1,iVar6,uVar9);
      }
      else {
        if (local_b1 == '\x12') {
          uVar9 = iVar8 - 0x14;
          iVar6 = 5;
          goto LAB_0040bfb1;
        }
        if (local_b1 == '\x13') {
          FUN_0040b900(param_1,1,iVar8 + -4);
          iVar6 = (int)local_a8[(char)(&DAT_00413861)
                                      [(uint)*(byte *)((int)param_3 + iVar7) -
                                       (uint)*(byte *)((int)param_2 + iVar7)]];
          uVar9 = *(uint *)((int)local_90 +
                           (char)(&DAT_00413861)
                                 [(uint)*(byte *)((int)param_3 + iVar7) -
                                  (uint)*(byte *)((int)param_2 + iVar7)] * 2) & 0xffff;
          goto LAB_0040bfb1;
        }
      }
      iVar7 = iVar7 + 1;
    } while (iVar7 < (int)param_4);
  }
  *puVar5 = uVar2;
  for (uVar9 = param_4 >> 2; uVar9 != 0; uVar9 = uVar9 - 1) {
    *param_3 = *param_2;
    param_2 = param_2 + 1;
    param_3 = param_3 + 1;
  }
  for (param_4 = param_4 & 3; param_4 != 0; param_4 = param_4 - 1) {
    *(undefined1 *)param_3 = *(undefined1 *)param_2;
    param_2 = (undefined4 *)((int)param_2 + 1);
    param_3 = (undefined4 *)((int)param_3 + 1);
  }
  return;
}

