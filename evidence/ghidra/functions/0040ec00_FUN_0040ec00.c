/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040ec00 */


bool FUN_0040ec00(int param_1)

{
  int iVar1;
  
  iVar1 = FUN_0040ece0(param_1,0x100,param_1 + 0x2b14,param_1 + 0xa18);
  if (iVar1 == 0) {
    return false;
  }
  iVar1 = FUN_0040ece0(param_1,(uint)*(byte *)(param_1 + 0x2eb5) << 3,param_1 + 0x2c14,
                       param_1 + 0xb18);
  if (iVar1 == 0) {
    return false;
  }
  iVar1 = FUN_0040fabc(param_1,(uint)*(byte *)(param_1 + 0x2eb5) * 8 + 0x100,param_1 + 0xa18,10,
                       param_1 + 0x18,param_1 + 0xe3c);
  if (iVar1 == 0) {
    return false;
  }
  iVar1 = FUN_0040ece0(param_1,0xf9,param_1 + 0x2db4,param_1 + 0xcb8);
  if (iVar1 == 0) {
    return false;
  }
  iVar1 = FUN_0040fabc(param_1,0xf9,param_1 + 0xcb8,8,param_1 + 0x818,param_1 + 0x233c);
  return iVar1 != 0;
}

