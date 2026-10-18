/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040fd40 */


undefined4 FUN_0040fd40(undefined4 param_1,int param_2,undefined4 *param_3)

{
  byte bVar1;
  ushort uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  byte bVar6;
  ushort uVar7;
  undefined4 *puVar8;
  byte *pbVar9;
  ushort auStack_48 [17];
  short local_26;
  short asStack_24 [18];
  
  uVar4 = 1;
  do {
    uVar2 = (short)uVar4 + 1;
    asStack_24[uVar4] = 0;
    uVar4 = (uint)uVar2;
  } while (uVar2 < 0x11);
  uVar4 = 0;
  do {
    uVar2 = (short)uVar4 + 1;
    asStack_24[*(byte *)(uVar4 + param_2)] = asStack_24[*(byte *)(uVar4 + param_2)] + 1;
    uVar4 = (uint)uVar2;
  } while (uVar2 < 8);
  auStack_48[1] = 0;
  uVar4 = 1;
  do {
    uVar2 = (short)uVar4 + 1;
    auStack_48[uVar4 + 1] = (asStack_24[uVar4] << (0x10U - (char)uVar4 & 0x1f)) + auStack_48[uVar4];
    uVar4 = (uint)uVar2;
  } while (uVar2 < 0x11);
  if (local_26 != 0) {
    return 0;
  }
  uVar4 = 1;
  do {
    uVar2 = (short)uVar4 + 1;
    uVar5 = (uint)uVar2;
    auStack_48[uVar4] = auStack_48[uVar4] >> 9;
    asStack_24[uVar4] = 1 << (7U - (char)uVar4 & 0x1f);
    uVar4 = uVar5;
  } while (uVar2 < 8);
  while (uVar2 < 0x11) {
    uVar2 = (short)uVar5 + 1;
    asStack_24[uVar5] = 1 << (0x10U - (char)uVar5 & 0x1f);
    uVar5 = (uint)uVar2;
  }
  bVar6 = 0;
  puVar8 = param_3;
  for (iVar3 = 0x20; iVar3 != 0; iVar3 = iVar3 + -1) {
    *puVar8 = 0;
    puVar8 = puVar8 + 1;
  }
  do {
    bVar1 = *(byte *)((uint)bVar6 + param_2);
    if (bVar1 != 0) {
      uVar2 = auStack_48[bVar1];
      uVar7 = asStack_24[bVar1] + uVar2;
      if (0x80 < uVar7) {
        return 0;
      }
      if (uVar2 < uVar7) {
        pbVar9 = (byte *)((int)param_3 + (uint)uVar2);
        for (uVar4 = (uint)((ushort)(uVar7 - uVar2) >> 2); uVar4 != 0; uVar4 = uVar4 - 1) {
          *(uint *)pbVar9 = CONCAT22(CONCAT11(bVar6,bVar6),CONCAT11(bVar6,bVar6));
          pbVar9 = pbVar9 + 4;
        }
        for (uVar4 = (ushort)(uVar7 - uVar2) & 3; uVar4 != 0; uVar4 = uVar4 - 1) {
          *pbVar9 = bVar6;
          pbVar9 = pbVar9 + 1;
        }
      }
      auStack_48[bVar1] = uVar7;
    }
    bVar6 = bVar6 + 1;
  } while (bVar6 < 8);
  return 1;
}

