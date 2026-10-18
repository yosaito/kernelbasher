/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040a540 */


undefined4
FUN_0040a540(int param_1,int param_2,uint param_3,undefined4 param_4,undefined4 param_5,
            undefined4 param_6,undefined4 param_7)

{
  int iVar1;
  
  *(undefined4 *)(param_1 + 0x4340) = param_7;
  *(int *)(param_1 + 4) = param_2;
  if ((param_3 & 0x7fff) != 0) {
    param_3 = param_3 & 0xffff8000;
  }
  if ((int)param_3 < 0x8000) {
    param_3 = 0x8000;
  }
  if (param_2 < 0x8000) {
    return 0;
  }
  *(uint *)(param_1 + 0x988) = param_3;
  *(undefined4 *)(param_1 + 0x434c) = param_6;
  *(undefined4 *)(param_1 + 0x4344) = param_4;
  *(undefined4 *)(param_1 + 0x4348) = param_5;
  iVar1 = FUN_0040a7d0(param_1);
  if (iVar1 == 0) {
    return 0;
  }
  FUN_0040a5e0(param_1);
  return 1;
}

