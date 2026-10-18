/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e250 */


undefined4
FUN_0040e250(int *param_1,undefined4 *param_2,code *param_3,code *param_4,int *param_5,
            undefined4 *param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
            undefined4 param_10,undefined4 param_11)

{
  undefined4 *puVar1;
  int iVar2;
  
  *param_5 = *param_1 + 0x1800;
  if (param_6 == (undefined4 *)0x0) {
    return 0;
  }
  *param_6 = 0;
  puVar1 = (undefined4 *)(*param_3)(0x2c);
  if (puVar1 == (undefined4 *)0x0) {
    return 1;
  }
  iVar2 = (*param_3)(0x2efc);
  puVar1[10] = iVar2;
  if (iVar2 == 0) {
    (*param_4)(puVar1);
    return 1;
  }
  puVar1[1] = param_3;
  puVar1[2] = param_4;
  puVar1[3] = param_7;
  puVar1[4] = param_8;
  puVar1[5] = param_9;
  puVar1[6] = param_10;
  puVar1[7] = param_11;
  puVar1[8] = *param_1;
  puVar1[9] = param_2[1];
  *puVar1 = 0x4349444c;
  iVar2 = FUN_0040e410(puVar1[10],*param_2,param_3,param_4,param_7,param_8,param_9,param_10,param_11
                      );
  if (iVar2 == 0) {
    (*param_4)(puVar1);
    return 1;
  }
  *param_6 = puVar1;
  return 0;
}

