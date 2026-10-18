/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040a5f0 */


undefined4
FUN_0040a5f0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  
  *(undefined4 *)(param_1 + 0x994) = param_2;
  *(undefined4 *)(param_1 + 0x998) = param_3;
  *(undefined4 *)(param_1 + 0x874) = param_5;
  FUN_0040adb0(param_1);
  if (*(int *)(param_1 + 0x1c) != 0) {
    *param_4 = 0;
    return 2;
  }
  uVar1 = FUN_0040ad50(param_1);
  *param_4 = uVar1;
  return 0;
}

