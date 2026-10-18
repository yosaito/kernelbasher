/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040b750 */


void FUN_0040b750(int param_1)

{
  if (*(int *)(param_1 + 0x24) != 0) {
    if (*(int *)(param_1 + 0x980) == 0) {
      FUN_0040c360(param_1,*(undefined4 *)(param_1 + 0x2534),*(undefined4 *)(param_1 + 0x2538),
                   *(int *)(param_1 + 0x24));
    }
    else {
      FUN_0040c1e0(param_1,0,0);
      *(undefined4 *)(param_1 + 0x980) = 0;
    }
    FUN_0040bbe0(param_1,0);
    FUN_0040bc60(param_1);
    *(undefined4 *)(param_1 + 0x2534) = *(undefined4 *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x2538) = *(undefined4 *)(param_1 + 0x28);
  }
  return;
}

