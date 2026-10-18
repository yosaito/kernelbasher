/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e990 */


void FUN_0040e990(int param_1)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte *pbVar5;
  
  if (*(int *)(param_1 + 0x2ed8) != 3) {
    pbVar5 = *(byte **)(param_1 + 0x2b04);
    bVar1 = pbVar5[1];
    bVar2 = pbVar5[3];
    bVar3 = pbVar5[2];
    bVar4 = *pbVar5;
    *(byte **)(param_1 + 0x2b04) = pbVar5 + 4;
    *(undefined1 *)(param_1 + 0x2eb4) = 0x10;
    *(uint *)(param_1 + 0x2eb0) =
         ((uint)bVar1 << 0x10 | (uint)bVar2) << 8 | (uint)bVar3 | (uint)bVar4 << 0x10;
  }
  return;
}

