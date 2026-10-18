/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040a440 */


undefined4
FUN_0040a440(int *param_1,undefined4 param_2,uint param_3,undefined4 param_4,uint param_5,
            undefined4 *param_6)

{
  int iVar1;
  undefined4 local_4;
  
  if (*param_1 != 0x4349434c) {
    return 2;
  }
  if ((uint)param_1[3] < param_3) {
    return 2;
  }
  if (param_5 < param_1[3] + 0x1800U) {
    return 2;
  }
  iVar1 = FUN_0040a5f0(param_1[4],param_2,param_3,&local_4,&DAT_00b71b00);
  if (iVar1 == 0) {
    *param_6 = local_4;
    return 0;
  }
  *param_6 = 0;
  return 4;
}

