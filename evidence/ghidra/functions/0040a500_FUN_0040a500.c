/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040a500 */


undefined4 FUN_0040a500(int *param_1)

{
  if (*param_1 != 0x4349434c) {
    return 2;
  }
  FUN_0040a5d0(param_1[4]);
  (*(code *)param_1[2])(param_1[4]);
  *param_1 = 0;
  (*(code *)param_1[2])(param_1);
  return 0;
}

