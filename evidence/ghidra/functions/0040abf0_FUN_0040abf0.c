/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040abf0 */


void FUN_0040abf0(int param_1,undefined4 param_2,undefined4 param_3)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar1 = FUN_0040c1e0(param_1,0,0,param_2);
  uVar2 = FUN_0040c130(param_1,param_3);
  FUN_0040bbe0(param_1,1);
  uVar3 = FUN_0040ca40(param_1);
  if ((uVar1 <= uVar3) && (*(uint *)(param_1 + 0x98c) <= *(uint *)(param_1 + 0x990))) {
    uVar2 = 3;
  }
  FUN_0040b900(param_1,3,uVar2 & 0xff);
  FUN_0040b900(param_1,8,(uVar1 & 0xff0000) >> 0x10);
  FUN_0040b900(param_1,8,uVar1 >> 8 & 0xff);
  FUN_0040b900(param_1,8,uVar1 & 0xff);
  if (uVar2 == 1) {
    FUN_0040bd10(param_1);
    FUN_0040cb10(param_1,param_2);
    FUN_0040c8f0(param_1,param_3);
  }
  else if (uVar2 == 2) {
    FUN_0040c000(param_1);
    FUN_0040bd10(param_1);
    FUN_0040ced0(param_1,param_2);
    FUN_0040c8f0(param_1,param_3);
  }
  else if (uVar2 == 3) {
    FUN_0040c8f0(param_1,param_3);
    FUN_0040c980(param_1,*(undefined4 *)(param_1 + 0x990),uVar1);
  }
  *(int *)(param_1 + 0x990) = *(int *)(param_1 + 0x990) + uVar1;
  return;
}

