/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00409e00 */


void FUN_00409e00(undefined4 param_1,void *param_2,size_t param_3,int param_4)

{
  undefined4 local_8;
  
  DAT_012215a0 = DAT_012215a0 + param_4;
  local_8 = CONCAT22((undefined2)param_4,(short)param_3);
  DAT_012215a4 = DAT_012215a4 + param_3 + 4;
  if (DAT_00421518 != (void *)0x0) {
    memcpy(DAT_00421518,&local_8,4);
    DAT_00421518 = (void *)((int)DAT_00421518 + 4);
    memcpy(DAT_00421518,param_2,param_3);
    DAT_00421518 = (void *)((int)DAT_00421518 + param_3);
  }
  return;
}

