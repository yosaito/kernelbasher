/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c1b0 */


void FUN_0040c1b0(int param_1,int param_2)

{
  short *psVar1;
  uint uVar2;
  uint *puVar3;
  
  puVar3 = *(uint **)(param_1 + 0x2c);
  for (; param_2 != 0; param_2 = param_2 + -1) {
    uVar2 = *puVar3;
    puVar3 = puVar3 + 1;
    if (0xf < uVar2) {
      psVar1 = (short *)(param_1 + 0x42ee + (uVar2 & 7) * 2);
      *psVar1 = *psVar1 + 1;
    }
  }
  return;
}

