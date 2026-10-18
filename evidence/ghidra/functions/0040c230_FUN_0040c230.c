/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c230 */


int FUN_0040c230(int param_1,uint param_2,int param_3,uint param_4)

{
  short *psVar1;
  byte bVar2;
  int iVar3;
  uint uVar4;
  
  iVar3 = 0;
  if (param_2 < param_4) {
    param_3 = param_3 << 2;
    do {
      if ((1 << ((byte)param_2 & 7) & (uint)*(byte *)((param_2 >> 3) + *(int *)(param_1 + 0x34))) ==
          0) {
        iVar3 = iVar3 + 1;
        psVar1 = (short *)(param_1 + 0x28f8 +
                          (uint)*(byte *)(*(int *)(param_1 + 0x30) + param_2) * 2);
        *psVar1 = *psVar1 + 1;
      }
      else {
        bVar2 = *(byte *)(*(int *)(param_1 + 0x30) + param_2);
        uVar4 = *(uint *)(*(int *)(param_1 + 0x2c) + param_3);
        if (bVar2 < 7) {
          if (uVar4 < 0x400) {
            uVar4 = (uint)*(byte *)(uVar4 + 0x45c + param_1);
          }
          else if (uVar4 < 0x80000) {
            uVar4 = *(byte *)((uVar4 >> 9) + 0x45c + param_1) + 0x12;
          }
          else {
            uVar4 = (uVar4 >> 0x11 & 0xff) + 0x22;
          }
          psVar1 = (short *)(param_1 + 11000 + ((uint)bVar2 + uVar4 * 8) * 2);
          *psVar1 = *psVar1 + 1;
        }
        else {
          if (uVar4 < 0x400) {
            uVar4 = (uint)*(byte *)(uVar4 + 0x45c + param_1);
          }
          else if (uVar4 < 0x80000) {
            uVar4 = *(byte *)((uVar4 >> 9) + 0x45c + param_1) + 0x12;
          }
          else {
            uVar4 = (uVar4 >> 0x11 & 0xff) + 0x22;
          }
          psVar1 = (short *)(uVar4 * 0x10 + 0x2b06 + param_1);
          *psVar1 = *psVar1 + 1;
          psVar1 = (short *)(param_1 + 0x3c10 +
                            (uint)*(byte *)(*(int *)(param_1 + 0x30) + param_2) * 2);
          *psVar1 = *psVar1 + 1;
        }
        param_3 = param_3 + 4;
        iVar3 = iVar3 + *(byte *)(*(int *)(param_1 + 0x30) + param_2) + 2;
      }
      param_2 = param_2 + 1;
    } while (param_2 < param_4);
  }
  return iVar3;
}

