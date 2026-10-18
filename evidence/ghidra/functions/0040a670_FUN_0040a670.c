/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040a670 */


void FUN_0040a670(int *param_1)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  puVar4 = (undefined4 *)param_1[2];
  for (iVar1 = 0x10000; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar4 = 0;
    puVar4 = puVar4 + 1;
  }
  iVar1 = param_1[1];
  *param_1 = param_1[0x10cc] - iVar1;
  param_1[3] = param_1[0x10cd] + iVar1 * -4;
  param_1[0x116] = iVar1;
  param_1[0x11] = 1;
  param_1[0x12] = 1;
  param_1[4] = param_1[0x10ce] + iVar1 * -4;
  param_1[0x13] = 1;
  param_1[0xe] = 1;
  param_1[0xf] = 1;
  param_1[0x10] = 1;
  *(undefined1 *)((int)param_1 + 0x97d) = 1;
  param_1[0x260] = 1;
  param_1[0x21b] = iVar1;
  *(undefined1 *)(param_1 + 6) = 0x20;
  param_1[5] = 0;
  param_1[7] = 0;
  piVar3 = param_1 + 0xe58;
  for (uVar2 = param_1[0x21c] * 8 + 0x100U >> 2; uVar2 != 0; uVar2 = uVar2 - 1) {
    *piVar3 = 0;
    piVar3 = piVar3 + 1;
  }
  piVar3 = param_1 + 0x107d;
  for (iVar1 = 0x3e; iVar1 != 0; iVar1 = iVar1 + -1) {
    *piVar3 = 0;
    piVar3 = piVar3 + 1;
  }
  *(undefined1 *)piVar3 = 0;
  piVar3 = param_1 + 0x950;
  for (iVar1 = 0x40; iVar1 != 0; iVar1 = iVar1 + -1) {
    *piVar3 = 0x8080808;
    piVar3 = piVar3 + 1;
  }
  piVar3 = param_1 + 0x990;
  for (iVar1 = (param_1[0x21c] & 0x1fffffffU) << 1; iVar1 != 0; iVar1 = iVar1 + -1) {
    *piVar3 = 0x9090909;
    piVar3 = piVar3 + 1;
  }
  puVar4 = (undefined4 *)((int)param_1 + 0x27fd);
  for (iVar1 = 0x3e; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar4 = 0x6060606;
    puVar4 = puVar4 + 1;
  }
  *(undefined1 *)puVar4 = 6;
  *(undefined4 *)((int)param_1 + 0x431e) = 0x3030303;
  *(undefined4 *)((int)param_1 + 0x4322) = 0x3030303;
  FUN_0040bce0(param_1);
  param_1[0x264] = param_1[0x116];
  param_1[0x263] = param_1[0x116];
  param_1[0x261] = 1;
  param_1[0x21a] = 0;
  puVar4 = (undefined4 *)param_1[0xd];
  for (iVar1 = 0x800; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar4 = 0;
    puVar4 = puVar4 + 1;
  }
  param_1[9] = 0;
  param_1[10] = 0;
  *(undefined1 *)(param_1 + 0x21f) = 0;
  param_1[0xe] = 1;
  param_1[0xf] = 1;
  param_1[0x10] = 1;
  FUN_0040b9f0(param_1);
  param_1[0x10cf] = 0;
  return;
}

