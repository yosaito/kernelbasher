/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e3d0 */


undefined4 FUN_0040e3d0(int *param_1)

{
  if (*param_1 != 0x4349444c) {
    return 2;
  }
  FUN_0040e4a0(param_1[10]);
  *param_1 = 0;
  (*(code *)param_1[2])(param_1[10]);
  (*(code *)param_1[2])(param_1);
  return 0;
}

