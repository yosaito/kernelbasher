/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c980 */


void FUN_0040c980(int *param_1,int param_2,uint param_3)

{
  undefined1 *puVar1;
  int iVar2;
  uint *puVar3;
  uint uVar4;
  int iVar5;
  
  FUN_0040b900(param_1,(char)param_1[6] + -0x10,0);
  puVar3 = (uint *)(param_1 + 0xe);
  iVar2 = 3;
  do {
    uVar4 = *puVar3;
    iVar5 = 4;
    do {
      *(char *)param_1[0x218] = (char)uVar4;
      uVar4 = uVar4 >> 8;
      param_1[0x218] = param_1[0x218] + 1;
      iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    puVar3 = puVar3 + 1;
    iVar2 = iVar2 + -1;
  } while (iVar2 != 0);
  uVar4 = param_3 & 1;
  while (param_3 != 0) {
    puVar1 = (undefined1 *)(*param_1 + param_2);
    param_2 = param_2 + 1;
    param_3 = param_3 - 1;
    *(undefined1 *)param_1[0x218] = *puVar1;
    iVar2 = param_1[0x21a];
    param_1[0x218] = param_1[0x218] + 1;
    param_1[0x21a] = iVar2 + 1;
    if (iVar2 + 1 == 0x8000) {
      FUN_0040d3c0(param_1);
      *(undefined1 *)(param_1 + 0x21f) = 0;
    }
  }
  if (uVar4 != 0) {
    *(undefined1 *)param_1[0x218] = 0;
    param_1[0x218] = param_1[0x218] + 1;
  }
  *(undefined1 *)(param_1 + 6) = 0x20;
  param_1[5] = 0;
  return;
}

