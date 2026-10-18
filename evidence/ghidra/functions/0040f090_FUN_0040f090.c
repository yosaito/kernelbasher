/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040f090 */


int FUN_0040f090(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  if (param_2 < 0x101) {
    iVar1 = 0x101 - param_2;
    if (param_3 <= 0x101 - param_2) {
      iVar1 = param_3;
    }
    iVar1 = FUN_0040f0f0(param_1,param_2,iVar1);
    param_3 = (param_3 - iVar1) + param_2;
    *(int *)(param_1 + 0x2ec0) = iVar1;
    param_2 = iVar1;
    if (param_3 < 1) {
      return param_3;
    }
  }
  iVar1 = FUN_0040fed3(param_1,param_2,param_3);
  return iVar1;
}

