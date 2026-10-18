/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040efa0 */


int FUN_0040efa0(int *param_1,uint param_2,int param_3)

{
  undefined1 uVar1;
  uint uVar2;
  undefined1 *puVar3;
  uint uVar4;
  uint uVar5;
  
  uVar2 = param_3 + param_2;
  puVar3 = (undefined1 *)param_1[0xac1];
  uVar5 = param_2;
  while( true ) {
    if ((int)uVar2 <= (int)uVar5) {
      param_1[0xac1] = (int)puVar3;
      uVar4 = uVar2;
      if (0x100 < (int)uVar2) {
        uVar4 = 0x101;
      }
      while (param_2 < uVar4) {
        *(undefined1 *)(param_1[1] + *param_1 + -1 + param_2 + 1) =
             *(undefined1 *)(param_2 + *param_1);
        param_2 = param_2 + 1;
      }
      param_1[0xbb0] = uVar5 & param_1[2];
      return uVar5 - uVar2;
    }
    if ((undefined1 *)param_1[0xac2] <= puVar3) break;
    uVar1 = *puVar3;
    puVar3 = puVar3 + 1;
    uVar5 = uVar5 + 1;
    *(undefined1 *)(*param_1 + -1 + uVar5) = uVar1;
  }
  return -1;
}

