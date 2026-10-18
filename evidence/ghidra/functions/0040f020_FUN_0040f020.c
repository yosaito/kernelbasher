/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040f020 */


undefined4 FUN_0040f020(int param_1)

{
  byte *pbVar1;
  uint *puVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x2b04);
  *(int *)(param_1 + 0x2b04) = iVar3 + -2;
  if (*(uint *)(param_1 + 0x2b08) <= iVar3 + 2U) {
    return 0;
  }
  iVar3 = 3;
  puVar2 = (uint *)(param_1 + 0xc);
  do {
    pbVar1 = *(byte **)(param_1 + 0x2b04);
    *puVar2 = ((uint)pbVar1[3] << 0x10 | (uint)pbVar1[1]) << 8 | (uint)pbVar1[2] << 0x10 |
              (uint)*pbVar1;
    *(int *)(param_1 + 0x2b04) = *(int *)(param_1 + 0x2b04) + 4;
    iVar3 = iVar3 + -1;
    puVar2 = puVar2 + 1;
  } while (iVar3 != 0);
  return 1;
}

