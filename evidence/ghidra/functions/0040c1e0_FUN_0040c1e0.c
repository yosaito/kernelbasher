/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c1e0 */


void FUN_0040c1e0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 *puVar2;
  
  puVar2 = (undefined4 *)(param_1 + 0x28f8);
  for (iVar1 = (*(int *)(param_1 + 0x870) + 0x20U & 0xfffffff) << 2; iVar1 != 0; iVar1 = iVar1 + -1)
  {
    *puVar2 = 0;
    puVar2 = puVar2 + 1;
  }
  puVar2 = (undefined4 *)(param_1 + 0x3c1e);
  for (iVar1 = 0x7c; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar2 = 0;
    puVar2 = puVar2 + 1;
  }
  *(undefined2 *)puVar2 = 0;
  FUN_0040c230(param_1,param_2,param_3,param_4);
  return;
}

