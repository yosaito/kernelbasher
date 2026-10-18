/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040d5b0 */


void FUN_0040d5b0(int *param_1,uint param_2,uint param_3)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  uint *puVar4;
  
  puVar4 = (uint *)((uint)*(ushort *)(*param_1 + param_2) * 4 + param_1[2]);
  if (*puVar4 == param_2) {
    if (param_3 < *puVar4) {
      puVar1 = (uint *)(param_1[3] + param_2 * 4);
      uVar2 = *puVar1;
      if (uVar2 <= param_3) {
        *puVar1 = 0;
        uVar2 = *(uint *)(param_1[3] + param_2 * 4);
      }
      puVar1 = (uint *)(param_1[4] + param_2 * 4);
      uVar3 = *puVar1;
      if (uVar3 <= param_3) {
        *puVar1 = 0;
        uVar3 = *(uint *)(param_1[4] + param_2 * 4);
      }
      while( true ) {
        while (uVar2 <= uVar3) {
          if (uVar3 <= param_3) {
            uVar3 = 0;
          }
          *puVar4 = uVar3;
          if (uVar3 == 0) {
            return;
          }
          puVar4 = (uint *)(uVar3 * 4 + param_1[3]);
          uVar3 = *puVar4;
        }
        if (uVar2 <= param_3) {
          uVar2 = 0;
        }
        *puVar4 = uVar2;
        if (uVar2 == 0) break;
        puVar4 = (uint *)(uVar2 * 4 + param_1[4]);
        uVar2 = *puVar4;
      }
    }
    else {
      *puVar4 = 0;
      *(undefined4 *)(param_1[4] + param_2 * 4) = 0;
      *(undefined4 *)(param_1[3] + param_2 * 4) = *(undefined4 *)(param_1[4] + param_2 * 4);
    }
  }
  return;
}

