/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040a380 */


undefined4
FUN_0040a380(int *param_1,undefined4 *param_2,code *param_3,code *param_4,int *param_5,
            undefined4 *param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 *puVar1;
  int iVar2;
  
  *param_6 = 0;
  puVar1 = (undefined4 *)(*param_3)(0x14);
  if (puVar1 == (undefined4 *)0x0) {
    return 1;
  }
  iVar2 = (*param_3)(0x4350);
  puVar1[4] = iVar2;
  if (iVar2 == 0) {
    (*param_4)(puVar1);
    return 1;
  }
  iVar2 = FUN_0040a540(iVar2,*param_2,param_2[1],param_3,param_4,param_7,param_8);
  if (iVar2 == 0) {
    (*param_4)(puVar1[4]);
    (*param_4)(puVar1);
    return 1;
  }
  puVar1[1] = param_3;
  puVar1[2] = param_4;
  puVar1[3] = *param_1;
  *puVar1 = 0x4349434c;
  *param_5 = *param_1 + 0x1800;
  *param_6 = puVar1;
  return 0;
}

