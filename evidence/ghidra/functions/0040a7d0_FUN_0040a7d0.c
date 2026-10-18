/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040a7d0 */


undefined4 FUN_0040a7d0(int *param_1)

{
  int iVar1;
  uint uVar2;
  
  param_1[2] = 0;
  param_1[0x10cd] = 0;
  param_1[0x10ce] = 0;
  param_1[0x94f] = 0;
  param_1[0xc] = 0;
  param_1[0xb] = 0;
  uVar2 = 4;
  *param_1 = 0;
  param_1[0xd] = 0;
  param_1[0x217] = 0;
  param_1[0x21c] = 4;
  do {
    iVar1 = param_1[0x21c];
    param_1[0x21c] = iVar1 + 1;
    uVar2 = uVar2 + (1 << ((&DAT_00413818)[iVar1] & 0x1f));
  } while (uVar2 < (uint)param_1[1]);
  iVar1 = (*(code *)param_1[0x10d1])(0x40000);
  param_1[2] = iVar1;
  if (iVar1 == 0) {
    FUN_0040a9f0(param_1);
    return 0;
  }
  iVar1 = (*(code *)param_1[0x10d1])((param_1[0x262] + param_1[1]) * 4 + 0x4404);
  param_1[0x10cd] = iVar1;
  if (iVar1 == 0) {
    FUN_0040a9f0(param_1);
    return 0;
  }
  iVar1 = (*(code *)param_1[0x10d1])((param_1[0x262] + param_1[1]) * 4 + 0x4404);
  param_1[0x10ce] = iVar1;
  if (iVar1 == 0) {
    FUN_0040a9f0(param_1);
    return 0;
  }
  iVar1 = (*(code *)param_1[0x10d1])(param_1[1] + param_1[0x262] + 0x1101);
  param_1[0x10cc] = iVar1;
  if (iVar1 == 0) {
    FUN_0040a9f0(param_1);
    return 0;
  }
  *param_1 = iVar1;
  iVar1 = (*(code *)param_1[0x10d1])(0x10000);
  param_1[0xc] = iVar1;
  if (iVar1 == 0) {
    FUN_0040a9f0(param_1);
    return 0;
  }
  iVar1 = (*(code *)param_1[0x10d1])(0x20000);
  param_1[0xb] = iVar1;
  if (iVar1 == 0) {
    FUN_0040a9f0(param_1);
    return 0;
  }
  iVar1 = (*(code *)param_1[0x10d1])(0x2000);
  param_1[0xd] = iVar1;
  if (iVar1 == 0) {
    FUN_0040a9f0();
    return 0;
  }
  FUN_0040c050(param_1);
  FUN_0040c100(param_1);
  iVar1 = FUN_0040b980(param_1);
  if (iVar1 == 0) {
    FUN_0040a9f0(param_1);
    return 0;
  }
  iVar1 = (*(code *)param_1[0x10d1])(0x18150);
  param_1[0x94f] = iVar1;
  if (iVar1 == 0) {
    FUN_0040a9f0(param_1);
    return 0;
  }
  param_1[0x21e] = 1;
  return 1;
}

