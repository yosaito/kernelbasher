/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040db40 */


void FUN_0040db40(int param_1,short param_2,int param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  short sVar3;
  short sVar4;
  short sVar5;
  short sVar6;
  int iVar7;
  bool bVar8;
  bool bVar9;
  undefined2 local_a;
  undefined4 local_8;
  undefined2 local_4;
  
  for (sVar3 = *(short *)(param_1 + 0x252c) >> 1; 0 < sVar3; sVar3 = sVar3 + -1) {
    sVar6 = *(short *)(param_1 + 0x9ac + sVar3 * 2);
    sVar4 = sVar3 * 2;
    local_a = sVar3;
    if (sVar4 <= *(short *)(param_1 + 0x252c)) {
      sVar5 = *(short *)(param_1 + 0x252c);
      bVar9 = SBORROW2(sVar5,sVar4);
      sVar2 = sVar5 + sVar3 * -2;
      bVar8 = sVar5 == sVar4;
      do {
        sVar5 = sVar4;
        if ((!bVar8 && bVar9 == sVar2 < 0) &&
           (*(ushort *)(*(int *)(param_1 + 0x9a0) + *(short *)(param_1 + sVar4 * 2 + 0x9ae) * 2) <
            *(ushort *)(*(int *)(param_1 + 0x9a0) + *(short *)(param_1 + 0x9ac + sVar4 * 2) * 2))) {
          sVar5 = sVar4 + 1;
        }
        sVar2 = *(short *)(param_1 + 0x9ac + sVar5 * 2);
        if (*(ushort *)(*(int *)(param_1 + 0x9a0) + sVar6 * 2) <=
            *(ushort *)(*(int *)(param_1 + 0x9a0) + sVar2 * 2)) break;
        sVar4 = sVar5 * 2;
        *(short *)(param_1 + 0x9ac + local_a * 2) = sVar2;
        sVar1 = *(short *)(param_1 + 0x252c);
        bVar9 = SBORROW2(sVar1,sVar4);
        sVar2 = sVar1 + sVar5 * -2;
        bVar8 = sVar1 == sVar4;
        local_a = sVar5;
      } while (sVar4 <= sVar1);
    }
    *(short *)(param_1 + 0x9ac + local_a * 2) = sVar6;
  }
  *(undefined4 *)(param_1 + 0x9a4) = param_4;
  do {
    sVar3 = *(short *)(param_1 + 0x9ae);
    if ((int)sVar3 < *(int *)(param_1 + 0x2528)) {
      **(short **)(param_1 + 0x9a4) = sVar3;
      *(int *)(param_1 + 0x9a4) = *(int *)(param_1 + 0x9a4) + 2;
    }
    local_8._0_2_ = 1;
    sVar5 = *(short *)(param_1 + 0x252c) + -1;
    sVar4 = *(short *)(param_1 + 0x9ac + *(short *)(param_1 + 0x252c) * 2);
    sVar6 = 2;
    *(short *)(param_1 + 0x9ae) = sVar4;
    *(short *)(param_1 + 0x252c) = sVar5;
    if (1 < sVar5) {
      sVar5 = *(short *)(param_1 + 0x252c);
      bVar9 = SBORROW2(sVar5,2);
      sVar2 = sVar5 + -2;
      bVar8 = sVar5 == 2;
      do {
        sVar5 = sVar6;
        if ((!bVar8 && bVar9 == sVar2 < 0) &&
           (*(ushort *)(*(int *)(param_1 + 0x9a0) + *(short *)(param_1 + sVar6 * 2 + 0x9ae) * 2) <
            *(ushort *)(*(int *)(param_1 + 0x9a0) + *(short *)(param_1 + 0x9ac + sVar6 * 2) * 2))) {
          sVar5 = sVar6 + 1;
        }
        sVar2 = *(short *)(param_1 + 0x9ac + sVar5 * 2);
        if (*(ushort *)(*(int *)(param_1 + 0x9a0) + sVar4 * 2) <=
            *(ushort *)(*(int *)(param_1 + 0x9a0) + sVar2 * 2)) break;
        sVar6 = sVar5 * 2;
        *(short *)(param_1 + 0x9ac + (short)local_8 * 2) = sVar2;
        sVar1 = *(short *)(param_1 + 0x252c);
        bVar9 = SBORROW2(sVar1,sVar6);
        sVar2 = sVar1 + sVar5 * -2;
        bVar8 = sVar1 == sVar6;
        local_8._0_2_ = sVar5;
      } while (sVar6 <= sVar1);
    }
    *(short *)(param_1 + 0x9ac + (short)local_8 * 2) = sVar4;
    sVar4 = *(short *)(param_1 + 0x9ae);
    if ((int)sVar4 < *(int *)(param_1 + 0x2528)) {
      **(short **)(param_1 + 0x9a4) = sVar4;
      *(int *)(param_1 + 0x9a4) = *(int *)(param_1 + 0x9a4) + 2;
    }
    iVar7 = (int)param_2;
    local_8 = CONCAT22(sVar3,param_2);
    local_4 = 1;
    *(short *)(param_3 + iVar7 * 2) =
         *(short *)(param_3 + sVar4 * 2) + *(short *)(param_3 + sVar3 * 2);
    sVar6 = 2;
    *(short *)(param_1 + 0x9ae) = param_2;
    if (1 < *(short *)(param_1 + 0x252c)) {
      sVar5 = *(short *)(param_1 + 0x252c);
      bVar9 = SBORROW2(sVar5,2);
      sVar2 = sVar5 + -2;
      bVar8 = sVar5 == 2;
      do {
        sVar5 = sVar6;
        if ((!bVar8 && bVar9 == sVar2 < 0) &&
           (*(ushort *)(*(int *)(param_1 + 0x9a0) + *(short *)(param_1 + sVar6 * 2 + 0x9ae) * 2) <
            *(ushort *)(*(int *)(param_1 + 0x9a0) + *(short *)(param_1 + 0x9ac + sVar6 * 2) * 2))) {
          sVar5 = sVar6 + 1;
        }
        sVar2 = *(short *)(param_1 + 0x9ac + sVar5 * 2);
        if (*(ushort *)(*(int *)(param_1 + 0x9a0) + iVar7 * 2) <=
            *(ushort *)(*(int *)(param_1 + 0x9a0) + sVar2 * 2)) break;
        sVar6 = sVar5 * 2;
        *(short *)(param_1 + 0x9ac + local_4 * 2) = sVar2;
        sVar1 = *(short *)(param_1 + 0x252c);
        bVar9 = SBORROW2(sVar1,sVar6);
        sVar2 = sVar1 + sVar5 * -2;
        bVar8 = sVar1 == sVar6;
        local_4 = sVar5;
      } while (sVar6 <= sVar1);
    }
    *(short *)(param_1 + 0x9ac + local_4 * 2) = param_2;
    iVar7 = param_1 + iVar7 * 4;
    *(short *)(iVar7 + 0xf28) = sVar3;
    *(short *)(iVar7 + 0xf2a) = sVar4;
    param_2 = param_2 + 1;
    if (*(short *)(param_1 + 0x252c) < 2) {
      *(undefined4 *)(param_1 + 0x9a4) = param_4;
      FUN_0040de50(param_1,local_8);
      return;
    }
  } while( true );
}

