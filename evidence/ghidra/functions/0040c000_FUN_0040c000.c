/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c000 */


void FUN_0040c000(int param_1)

{
  undefined1 *puVar1;
  int iVar2;
  
  iVar2 = 0;
  FUN_0040d9e0(param_1,8,param_1 + 0x42ee,param_1 + 0x431e,param_1 + 0x430e,1);
  do {
    puVar1 = (undefined1 *)(param_1 + 0x431e + iVar2);
    iVar2 = iVar2 + 1;
    FUN_0040b900(param_1,3,*puVar1);
  } while (iVar2 < 8);
  return;
}

