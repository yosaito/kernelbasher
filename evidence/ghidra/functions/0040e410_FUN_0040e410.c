/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e410 */


undefined4
FUN_0040e410(int param_1,uint param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
            undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9)

{
  int iVar1;
  
  *(undefined4 *)(param_1 + 12000) = param_3;
  *(undefined4 *)(param_1 + 0x2ee4) = param_4;
  *(undefined4 *)(param_1 + 0x2ee8) = param_5;
  *(undefined4 *)(param_1 + 0x2eec) = param_6;
  *(undefined4 *)(param_1 + 0x2ef0) = param_7;
  *(undefined4 *)(param_1 + 0x2ef4) = param_8;
  *(undefined4 *)(param_1 + 0x2ef8) = param_9;
  *(uint *)(param_1 + 4) = param_2;
  *(uint *)(param_1 + 8) = param_2 - 1;
  if ((param_2 & param_2 - 1) != 0) {
    return 0;
  }
  iVar1 = FUN_0040e550(param_1);
  if (iVar1 == 0) {
    return 0;
  }
  FUN_0040e4b0(param_1);
  return 1;
}

