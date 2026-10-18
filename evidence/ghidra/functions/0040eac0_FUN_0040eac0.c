/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040eac0 */


uint FUN_0040eac0(int param_1,undefined4 param_2)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_1 + 0x2eb0);
  FUN_0040e9f0(param_1,param_2);
  return uVar1 >> (0x20U - (char)param_2 & 0x1f);
}

