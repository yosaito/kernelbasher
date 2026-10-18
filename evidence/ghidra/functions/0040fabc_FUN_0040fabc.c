/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040fabc */


undefined8 __fastcall
FUN_0040fabc(undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4,int param_5,
            uint param_6,undefined4 *param_7,int param_8)

{
  char cVar1;
  short *psVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint *puVar9;
  int *piVar10;
  undefined2 *puVar11;
  bool bVar12;
  uint auStack_118 [17];
  uint local_d4 [19];
  int aiStack_88 [18];
  uint local_40;
  int local_3c;
  int local_34;
  uint local_30;
  uint local_2c;
  undefined4 *local_28;
  uint local_24;
  int local_20;
  undefined4 local_1c;
  
  local_40 = param_4 & 0xffff;
  local_1c = param_3;
  local_3c = param_5;
  local_24 = param_6 & 0xff;
  local_28 = param_7;
  local_34 = param_8;
  piVar10 = aiStack_88;
  for (iVar4 = 0x10; iVar6 = local_3c, piVar10 = piVar10 + 1, uVar5 = local_40, iVar4 != 0;
      iVar4 = iVar4 + -1) {
    *piVar10 = 0;
  }
  do {
    uVar5 = uVar5 - 1;
    aiStack_88[*(byte *)(uVar5 + iVar6)] = aiStack_88[*(byte *)(uVar5 + iVar6)] + 1;
  } while (0 < (int)uVar5);
  puVar9 = auStack_118 + 1;
  piVar10 = aiStack_88;
  uVar5 = 0;
  auStack_118[1] = 0;
  iVar4 = 0xf;
  do {
    piVar10 = piVar10 + 1;
    puVar9 = puVar9 + 1;
    uVar5 = (*piVar10 << ((byte)iVar4 & 0x1f)) + uVar5;
    *puVar9 = uVar5;
    uVar8 = local_24;
    bVar12 = 0 < iVar4;
    iVar4 = iVar4 + -1;
  } while (bVar12);
  if (local_d4[0] == 0x10000) {
    iVar4 = 1;
    uVar5 = 1 << ((byte)(local_24 - 1) & 0x1f);
    iVar6 = CONCAT31((int3)(local_24 - 1 >> 8),0x10) - local_24;
    local_20 = iVar6;
    do {
      auStack_118[iVar4] = auStack_118[iVar4] >> ((byte)iVar6 & 0x1f);
      local_d4[iVar4 + 1] = uVar5;
      uVar5 = uVar5 >> 1;
      iVar4 = iVar4 + 1;
    } while (iVar4 <= (int)uVar8);
    cVar1 = (char)iVar4;
    while (cVar1 < '\x11') {
      cVar1 = (char)iVar4;
      iVar4 = iVar4 + 1;
      local_d4[iVar4] = 1 << (0x10U - cVar1 & 0x1f);
      cVar1 = (char)iVar4;
    }
    uVar5 = auStack_118[local_24 + 1] >> ((byte)local_20 & 0x1f);
    if (uVar5 != 0x10000) {
      puVar11 = (undefined2 *)((int)local_28 + uVar5 * 2);
      for (iVar4 = (1 << ((byte)local_24 & 0x1f)) - uVar5; iVar4 != 0; iVar4 = iVar4 + -1) {
        *puVar11 = 0;
        puVar11 = puVar11 + 1;
      }
    }
    iVar4 = 0;
    local_30 = local_40;
LAB_0040fc27:
    do {
      uVar5 = (uint)*(byte *)(iVar4 + local_3c);
      if (uVar5 != 0) {
        local_2c = auStack_118[uVar5];
        uVar8 = local_2c + local_d4[uVar5 + 1];
        if ((int)uVar5 <= (int)local_24) {
          if (1 << ((byte)local_24 & 0x1f) < (int)uVar8) {
            uVar3 = 0;
            goto LAB_0040fd01;
          }
          iVar6 = uVar8 - local_2c;
          psVar2 = (short *)(local_2c * 2 + (int)local_28);
          auStack_118[uVar5] = uVar8;
          do {
            *psVar2 = (short)iVar4;
            psVar2 = psVar2 + 1;
            iVar6 = iVar6 + -1;
          } while (iVar6 != 0);
          iVar4 = iVar4 + 1;
          if ((int)local_40 <= iVar4) {
            uVar3 = 1;
            goto LAB_0040fd01;
          }
          goto LAB_0040fc27;
        }
        iVar6 = uVar5 - local_24;
        uVar7 = local_2c << ((byte)local_24 + 0x10 & 0x1f);
        auStack_118[uVar5] = uVar8;
        psVar2 = (short *)((int)local_28 + (local_2c >> ((byte)local_20 & 0x1f)) * 2);
        do {
          if (*psVar2 == 0) {
            *psVar2 = (short)local_30;
            *(undefined4 *)(local_34 + local_30 * 4) = 0;
            local_30 = local_30 + 1;
            *psVar2 = -*psVar2;
          }
          psVar2 = (short *)(local_34 + *psVar2 * -4);
          bVar12 = CARRY4(uVar7,uVar7);
          uVar7 = uVar7 * 2;
          if (bVar12) {
            psVar2 = psVar2 + 1;
          }
          iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        *psVar2 = (short)iVar4;
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < (int)local_40);
    uVar3 = 1;
  }
  else if (local_d4[0] == 0) {
    for (iVar4 = 1 << ((char)local_24 - 1U & 0x1f); iVar4 != 0; iVar4 = iVar4 + -1) {
      *local_28 = 0;
      local_28 = local_28 + 1;
    }
    uVar3 = 1;
  }
  else {
    uVar3 = 0;
  }
LAB_0040fd01:
  return CONCAT44(param_2,uVar3);
}

