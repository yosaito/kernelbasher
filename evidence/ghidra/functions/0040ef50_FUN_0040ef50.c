/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040ef50 */


bool FUN_0040ef50(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  
  iVar2 = 0;
  do {
    iVar2 = iVar2 + 1;
    uVar1 = FUN_0040eac0(param_1,3);
    *(undefined1 *)(param_1 + 0xe33 + iVar2) = uVar1;
  } while (iVar2 < 8);
  if (*(int *)(param_1 + 0x2ebc) != 0) {
    return false;
  }
  iVar2 = FUN_0040fd40(param_1,param_1 + 0xe34,param_1 + 0xdb4);
  return iVar2 != 0;
}

