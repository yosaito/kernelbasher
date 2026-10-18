/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040ece0 */


bool FUN_0040ece0(int param_1,int param_2,int param_3,int param_4)

{
  undefined1 uVar1;
  byte bVar2;
  uint uVar3;
  short sVar4;
  int iVar5;
  int iVar6;
  undefined1 local_2d4 [24];
  short local_2bc [94];
  short local_200 [256];
  
  iVar6 = 0;
  do {
    iVar5 = iVar6 + 1;
    uVar1 = FUN_0040eac0(param_1,4);
    local_2d4[iVar6] = uVar1;
    iVar6 = iVar5;
  } while (iVar5 < 0x14);
  if (*(int *)(param_1 + 0x2ebc) != 0) {
    return false;
  }
  iVar6 = 0;
  FUN_0040fabc(param_1,0x14,local_2d4,8,local_200,local_2bc);
  if (0 < param_2) {
    do {
      sVar4 = *(short *)((int)local_200 + ((*(uint *)(param_1 + 0x2eb0) & 0xff7fffff) >> 0x17));
      if (sVar4 < 0) {
        uVar3 = 0x800000;
        do {
          if ((uVar3 & *(uint *)(param_1 + 0x2eb0)) == 0) {
            sVar4 = local_2bc[-sVar4 * 2];
          }
          else {
            sVar4 = local_2bc[-sVar4 * 2 + 1];
          }
          uVar3 = uVar3 >> 1;
        } while (sVar4 < 0);
      }
      FUN_0040e9f0(param_1,local_2d4[sVar4]);
      if (*(int *)(param_1 + 0x2ebc) != 0) {
        return false;
      }
      if (sVar4 == 0x11) {
        bVar2 = FUN_0040eac0(param_1,4);
        iVar5 = bVar2 + 4;
        if (param_2 <= (int)(iVar6 + 4 + (uint)bVar2)) {
          iVar5 = param_2 - iVar6;
        }
        for (; 0 < iVar5; iVar5 = iVar5 + -1) {
          *(undefined1 *)(iVar6 + param_4) = 0;
          iVar6 = iVar6 + 1;
        }
        iVar6 = iVar6 + -1;
      }
      else if (sVar4 == 0x12) {
        bVar2 = FUN_0040eac0(param_1,5);
        iVar5 = bVar2 + 0x14;
        if (param_2 <= (int)(iVar6 + 0x14 + (uint)bVar2)) {
          iVar5 = param_2 - iVar6;
        }
        for (; 0 < iVar5; iVar5 = iVar5 + -1) {
          *(undefined1 *)(iVar6 + param_4) = 0;
          iVar6 = iVar6 + 1;
        }
        iVar6 = iVar6 + -1;
      }
      else if (sVar4 == 0x13) {
        bVar2 = FUN_0040eac0(param_1,1);
        iVar5 = bVar2 + 4;
        if (param_2 <= (int)(iVar6 + 4 + (uint)bVar2)) {
          iVar5 = param_2 - iVar6;
        }
        sVar4 = *(short *)((int)local_200 + ((*(uint *)(param_1 + 0x2eb0) & 0xff7fffff) >> 0x17));
        if (sVar4 < 0) {
          uVar3 = 0x800000;
          do {
            if ((uVar3 & *(uint *)(param_1 + 0x2eb0)) == 0) {
              sVar4 = local_2bc[-sVar4 * 2];
            }
            else {
              sVar4 = local_2bc[-sVar4 * 2 + 1];
            }
            uVar3 = uVar3 >> 1;
          } while (sVar4 < 0);
        }
        FUN_0040e9f0(param_1,local_2d4[sVar4]);
        uVar1 = (&DAT_00413ad9)[(uint)*(byte *)(iVar6 + param_3) - (int)sVar4];
        for (; 0 < iVar5; iVar5 = iVar5 + -1) {
          *(undefined1 *)(iVar6 + param_4) = uVar1;
          iVar6 = iVar6 + 1;
        }
        iVar6 = iVar6 + -1;
      }
      else {
        *(undefined *)(iVar6 + param_4) =
             (&DAT_00413ad9)[(uint)*(byte *)(iVar6 + param_3) - (int)sVar4];
      }
      iVar6 = iVar6 + 1;
    } while (iVar6 < param_2);
  }
  return *(int *)(param_1 + 0x2ebc) == 0;
}

