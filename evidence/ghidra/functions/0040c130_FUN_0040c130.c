/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c130 */


undefined4 FUN_0040c130(int param_1,uint param_2)

{
  uint uVar1;
  byte bVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  
  uVar3 = 0;
  uVar5 = 0;
  uVar4 = 0;
  *(undefined4 *)(param_1 + 0x42ee) = 0;
  *(undefined4 *)(param_1 + 0x42f2) = 0;
  *(undefined4 *)(param_1 + 0x42f6) = 0;
  *(undefined4 *)(param_1 + 0x42fa) = 0;
  FUN_0040c1b0(param_1,param_2);
  do {
    uVar1 = (uint)*(ushort *)(param_1 + 0x42ee + uVar3 * 2);
    if (uVar4 < uVar1) {
      uVar4 = uVar1;
    }
    uVar5 = uVar5 + uVar1;
    bVar2 = (char)uVar3 + 1;
    uVar3 = (uint)bVar2;
  } while (bVar2 < 8);
  if ((uVar5 / 5 < uVar4) && (99 < param_2)) {
    return 2;
  }
  return 1;
}

