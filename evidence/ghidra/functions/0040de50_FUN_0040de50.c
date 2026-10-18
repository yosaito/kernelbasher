/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040de50 */


void FUN_0040de50(int param_1,undefined4 param_2)

{
  short *psVar1;
  byte bVar2;
  uint uVar3;
  short sVar4;
  
  bVar2 = 0;
  do {
    uVar3 = (uint)bVar2;
    bVar2 = bVar2 + 1;
    *(undefined2 *)(param_1 + 0x2504 + uVar3 * 2) = 0;
  } while (bVar2 < 0x11);
  sVar4 = 0;
  FUN_0040df20(param_1,param_2);
  bVar2 = 0x10;
  do {
    sVar4 = sVar4 + (*(short *)(param_1 + 0x2504 + (uint)bVar2 * 2) << (0x10 - bVar2 & 0x1f));
    bVar2 = bVar2 - 1;
  } while (bVar2 != 0);
  do {
    if (sVar4 == 0) {
      bVar2 = 0x10;
      do {
        sVar4 = *(short *)(param_1 + 0x2504 + (uint)bVar2 * 2);
        while (sVar4 = sVar4 + -1, -1 < sVar4) {
          *(byte *)((uint)**(ushort **)(param_1 + 0x9a4) + *(int *)(param_1 + 0x9a8)) = bVar2;
          *(int *)(param_1 + 0x9a4) = *(int *)(param_1 + 0x9a4) + 2;
        }
        bVar2 = bVar2 - 1;
      } while (bVar2 != 0);
      return;
    }
    *(short *)(param_1 + 0x2524) = *(short *)(param_1 + 0x2524) + -1;
    bVar2 = 0xf;
    do {
      if (*(short *)(param_1 + 0x2504 + (uint)bVar2 * 2) != 0) {
        psVar1 = (short *)(param_1 + 0x2504 + (uint)bVar2 * 2);
        *psVar1 = *psVar1 + -1;
        psVar1 = (short *)(param_1 + (uint)bVar2 * 2 + 0x2506);
        *psVar1 = *psVar1 + 2;
        break;
      }
      bVar2 = bVar2 - 1;
    } while (bVar2 != 0);
    sVar4 = sVar4 + -1;
  } while( true );
}

