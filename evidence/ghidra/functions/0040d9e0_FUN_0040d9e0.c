/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040d9e0 */


void FUN_0040d9e0(int param_1,int param_2,undefined2 *param_3,undefined4 param_4,int param_5,
                 int param_6)

{
  short sVar1;
  short sVar2;
  
  while( true ) {
    *(int *)(param_1 + 0x2528) = param_2;
    *(undefined2 **)(param_1 + 0x9a0) = param_3;
    sVar2 = 0;
    *(undefined4 *)(param_1 + 0x9a8) = param_4;
    *(undefined1 *)(param_1 + 0x252e) = 0;
    *(undefined2 *)(param_1 + 0x252c) = 0;
    *(undefined2 *)(param_1 + 0x9ae) = 0;
    if (0 < param_2) {
      do {
        *(undefined1 *)(*(int *)(param_1 + 0x9a8) + (int)sVar2) = 0;
        if (param_3[sVar2] != 0) {
          sVar1 = *(short *)(param_1 + 0x252c) + 1;
          *(short *)(param_1 + 0x252c) = sVar1;
          *(short *)(param_1 + 0x9ac + sVar1 * 2) = sVar2;
        }
        sVar2 = sVar2 + 1;
      } while (sVar2 < param_2);
    }
    if (1 < *(short *)(param_1 + 0x252c)) break;
    if (*(short *)(param_1 + 0x252c) == 0) {
      *(undefined2 *)(param_5 + *(short *)(param_1 + 0x9ae) * 2) = 0;
      return;
    }
    if (*(short *)(param_1 + 0x9ae) == 0) {
      param_3[1] = 1;
    }
    else {
      *param_3 = 1;
    }
  }
  FUN_0040db40(param_1,param_2,param_3,param_5);
  if (param_6 != 0) {
    FUN_0040dad0(param_1,param_2,param_4,param_5);
  }
  return;
}

