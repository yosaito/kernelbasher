/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c380 */


undefined4
FUN_0040c380(int param_1,int param_2,uint param_3,uint param_4,uint *param_5,uint *param_6)

{
  uint uVar1;
  byte *pbVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint *puVar7;
  uint uVar8;
  short sVar9;
  uint local_814;
  uint local_810 [516];
  
  *param_5 = param_3;
  if (param_6 != (uint *)0x0) {
    *param_6 = param_4;
  }
  if (param_3 - param_2 < 0x1800) {
    return 0;
  }
  if (3 < *(byte *)(param_1 + 0x87c)) {
    return 0;
  }
  sVar9 = 0;
  uVar3 = 0;
  if ((param_3 & 0xfffffff8) != 0) {
    puVar7 = local_810;
    do {
      if ((uVar3 & 7) == 0) {
        *(short *)puVar7 = sVar9;
        puVar7 = (uint *)((int)puVar7 + 2);
      }
      pbVar2 = (byte *)(uVar3 + *(int *)(param_1 + 0x34));
      uVar3 = uVar3 + 1;
      sVar9 = sVar9 + (ushort)*(byte *)(*pbVar2 + 0x87d + param_1);
    } while (uVar3 < param_3 >> 3);
  }
  uVar4 = param_2 + 0x3fU & 0xffffffc0;
  uVar3 = uVar4 + 0x800;
  if (uVar3 < param_3 - 0x1000) {
    do {
      uVar1 = uVar3 + 0x400;
      uVar5 = FUN_0040c620(param_1,uVar3,uVar1,*(uint *)((int)local_810 + (uVar3 >> 5)) & 0xffff,
                           *(uint *)((int)local_810 + (uVar1 >> 5)) & 0xffff,0x400);
      if (((0x578 < uVar5) &&
          (uVar5 = FUN_0040c620(param_1,uVar3 - 0x400,uVar3 + 0x800,
                                *(uint *)((int)local_810 + (uVar3 - 0x400 >> 5)) & 0xffff,
                                *(uint *)((int)local_810 + (uVar3 + 0x800 >> 5)) & 0xffff,0x400),
          0x578 < uVar5)) &&
         (uVar5 = FUN_0040c620(param_1,uVar3 - 0x800,uVar3 + 0xc00,
                               *(uint *)((int)local_810 + (uVar3 - 0x800 >> 5)) & 0xffff,
                               *(uint *)((int)local_810 + (uVar3 + 0xc00 >> 5)) & 0xffff,0x400),
         0x578 < uVar5)) {
        uVar8 = 0;
        for (uVar5 = uVar3 + 0x200; uVar5 < uVar3 + 0xa00; uVar5 = uVar5 + 0x40) {
          uVar6 = FUN_0040c620(param_1,uVar5 - 0x400,uVar5,
                               *(uint *)((int)local_810 + (uVar5 - 0x400 >> 5)) & 0xffff,
                               *(uint *)((int)local_810 + (uVar5 >> 5)) & 0xffff,0x400);
          if (uVar8 < uVar6) {
            uVar8 = uVar6;
            local_814 = uVar5;
          }
        }
        if ((0x6a3 < uVar8) && (0xfff < local_814 - uVar4)) {
          *(char *)(param_1 + 0x87c) = *(char *)(param_1 + 0x87c) + '\x01';
          *param_5 = local_814;
          if (param_6 != (uint *)0x0) {
            *param_6 = *(uint *)((int)local_810 + ((local_814 & 0xffffffdf) >> 5)) & 0xffff;
          }
          return 1;
        }
      }
      uVar3 = uVar1;
    } while (uVar1 < param_3 - 0x1000);
  }
  return 0;
}

