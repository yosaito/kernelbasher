/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040b7c0 */


void FUN_0040b7c0(int param_1,undefined4 param_2)

{
  *(undefined1 *)(param_1 + 0x97d) = 0;
  *(undefined4 *)(param_1 + 0x980) = 1;
  FUN_0040aaf0(param_1);
  if (*(uint *)(param_1 + 0x24) < 0x1000) {
    *(undefined4 *)(param_1 + 0x2530) = 0x1000;
  }
  else {
    *(uint *)(param_1 + 0x2530) = *(uint *)(param_1 + 0x24) + 0x1000;
  }
  *(undefined4 *)(param_1 + 0x86c) = param_2;
  return;
}

