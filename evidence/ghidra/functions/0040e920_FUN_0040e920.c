/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e920 */


undefined4 FUN_0040e920(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  if (param_2 == 2) {
    uVar1 = FUN_0040f700(param_1,param_3,param_4);
    return uVar1;
  }
  if (param_2 == 1) {
    uVar1 = FUN_0040f090(param_1,param_3,param_4);
    return uVar1;
  }
  if (param_2 == 3) {
    uVar1 = FUN_0040efa0(param_1,param_3,param_4);
    return uVar1;
  }
  return 0xffffffff;
}

