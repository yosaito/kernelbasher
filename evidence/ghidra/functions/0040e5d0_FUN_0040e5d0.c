/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e5d0 */


void FUN_0040e5d0(int param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 *puVar3;
  
  puVar3 = (undefined4 *)(param_1 + 0xa18);
  for (uVar1 = (uint)*(byte *)(param_1 + 0x2eb5) * 8 + 0x100 >> 2; uVar1 != 0; uVar1 = uVar1 - 1) {
    *puVar3 = 0;
    puVar3 = puVar3 + 1;
  }
  puVar3 = (undefined4 *)(param_1 + 0x2b14);
  for (uVar1 = (uint)*(byte *)(param_1 + 0x2eb5) * 8 + 0x100 >> 2; uVar1 != 0; uVar1 = uVar1 - 1) {
    *puVar3 = 0;
    puVar3 = puVar3 + 1;
  }
  puVar3 = (undefined4 *)(param_1 + 0xcb8);
  for (iVar2 = 0x3e; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar3 = 0;
    puVar3 = puVar3 + 1;
  }
  *(undefined1 *)puVar3 = 0;
  puVar3 = (undefined4 *)(param_1 + 0x2db4);
  for (iVar2 = 0x3e; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar3 = 0;
    puVar3 = puVar3 + 1;
  }
  *(undefined1 *)puVar3 = 0;
  return;
}

