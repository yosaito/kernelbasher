/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040b900 */


void FUN_0040b900(int param_1,char param_2,int param_3)

{
  undefined1 *puVar1;
  byte bVar2;
  
  bVar2 = *(char *)(param_1 + 0x18) - param_2;
  *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | param_3 << (bVar2 & 0x1f);
  *(byte *)(param_1 + 0x18) = bVar2;
  while ((char)bVar2 < '\x11') {
    if (*(uint *)(param_1 + 0x864) <= *(uint *)(param_1 + 0x860)) {
      *(undefined4 *)(param_1 + 0x1c) = 1;
      *(undefined4 *)(param_1 + 0x860) = *(undefined4 *)(param_1 + 0x85c);
    }
    **(undefined1 **)(param_1 + 0x860) = (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x10);
    puVar1 = (undefined1 *)(*(int *)(param_1 + 0x860) + 1);
    *(undefined1 **)(param_1 + 0x860) = puVar1;
    *puVar1 = (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x18);
    bVar2 = *(char *)(param_1 + 0x18) + 0x10;
    *(int *)(param_1 + 0x860) = *(int *)(param_1 + 0x860) + 1;
    *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) << 0x10;
    *(byte *)(param_1 + 0x18) = bVar2;
  }
  return;
}

