/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040bce0 */


void FUN_0040bce0(int param_1)

{
  undefined1 *puVar1;
  uint uVar2;
  
  uVar2 = *(byte *)(param_1 + 0x55c) + 0x12;
  if (uVar2 < *(uint *)(param_1 + 0x870)) {
    puVar1 = (undefined1 *)(param_1 + 0x2640 + uVar2 * 8);
    do {
      *puVar1 = 100;
      puVar1 = puVar1 + 8;
      uVar2 = uVar2 + 1;
    } while (uVar2 < *(uint *)(param_1 + 0x870));
  }
  return;
}

