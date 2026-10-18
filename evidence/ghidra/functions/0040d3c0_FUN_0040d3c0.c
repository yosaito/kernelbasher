/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040d3c0 */


void FUN_0040d3c0(int param_1)

{
  int iVar1;
  
  FUN_0040ad30(param_1);
  iVar1 = *(int *)(param_1 + 0x860) - *(int *)(param_1 + 0x85c);
  if (0 < iVar1) {
    (**(code **)(param_1 + 0x434c))
              (*(undefined4 *)(param_1 + 0x4340),*(int *)(param_1 + 0x85c),iVar1,
               *(undefined4 *)(param_1 + 0x868));
  }
  *(undefined4 *)(param_1 + 0x868) = 0;
  *(undefined4 *)(param_1 + 0x860) = *(undefined4 *)(param_1 + 0x85c);
  *(undefined1 *)(param_1 + 0x18) = 0x20;
  *(undefined4 *)(param_1 + 0x14) = 0;
  return;
}

