/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040df20 */


void FUN_0040df20(int param_1,short param_2)

{
  int iVar1;
  short *psVar2;
  char cVar3;
  undefined2 extraout_var;
  
  if ((int)param_2 < *(int *)(param_1 + 0x2528)) {
    cVar3 = *(char *)(param_1 + 0x252e);
    if ('\x0f' < cVar3) {
      cVar3 = '\x10';
    }
    psVar2 = (short *)(param_1 + 0x2504 + cVar3 * 2);
    *psVar2 = *psVar2 + 1;
    return;
  }
  iVar1 = param_1 + param_2 * 4;
  *(char *)(param_1 + 0x252e) = *(char *)(param_1 + 0x252e) + '\x01';
  FUN_0040df20(param_1,CONCAT22(param_2 >> 0xf,*(undefined2 *)(iVar1 + 0xf28)));
  FUN_0040df20(param_1,CONCAT22(extraout_var,*(undefined2 *)(iVar1 + 0xf2a)));
  *(char *)(param_1 + 0x252e) = *(char *)(param_1 + 0x252e) + -1;
  return;
}

