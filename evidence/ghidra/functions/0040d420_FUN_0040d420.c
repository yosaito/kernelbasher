/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040d420 */


void FUN_0040d420(int *param_1,int param_2,int param_3)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int local_18;
  int *local_14;
  int *local_10;
  int local_c;
  int local_8;
  int local_4;
  
  piVar1 = (int *)((uint)*(ushort *)(*param_1 + param_2) * 4 + param_1[2]);
  local_18 = *piVar1;
  *piVar1 = param_2;
  if (local_18 <= param_3) {
    *(undefined4 *)(param_1[4] + param_2 * 4) = 0;
    *(undefined4 *)(param_1[3] + param_2 * 4) = *(undefined4 *)(param_1[4] + param_2 * 4);
    return;
  }
  local_c = 2;
  local_8 = 2;
  local_4 = 2;
  local_14 = (int *)(param_1[3] + param_2 * 4);
  local_10 = (int *)(param_1[4] + param_2 * 4);
  do {
    iVar4 = local_18 + local_c;
    iVar5 = param_2 + local_c;
    iVar6 = local_c;
    do {
      iVar5 = iVar5 + 1;
      uVar2 = (uint)*(byte *)(*param_1 + iVar4);
      iVar4 = iVar4 + 1;
      uVar3 = (uint)*(byte *)(*param_1 + -1 + iVar5);
      if (uVar2 != uVar3) break;
      iVar6 = iVar6 + 1;
    } while (iVar6 < 0x32);
    if ((int)(uVar2 - uVar3) < 0) {
      if (local_4 < iVar6) {
        if (0x31 < iVar6) {
          *local_14 = *(int *)(param_1[3] + local_18 * 4);
          *local_10 = *(int *)(param_1[4] + local_18 * 4);
          return;
        }
        local_c = iVar6;
        local_4 = iVar6;
        if (local_8 <= iVar6) {
          local_c = local_8;
        }
      }
      *local_10 = local_18;
      piVar1 = (int *)(local_18 * 4 + param_1[3]);
      local_10 = piVar1;
    }
    else {
      if (local_8 < iVar6) {
        if (0x31 < iVar6) {
          *local_14 = *(int *)(param_1[3] + local_18 * 4);
          *local_10 = *(int *)(param_1[4] + local_18 * 4);
          return;
        }
        local_c = iVar6;
        local_8 = iVar6;
        if (local_4 <= iVar6) {
          local_c = local_4;
        }
      }
      *local_14 = local_18;
      piVar1 = (int *)(local_18 * 4 + param_1[4]);
      local_14 = piVar1;
    }
    local_18 = *piVar1;
    if (local_18 <= param_3) {
      *local_14 = 0;
      *local_10 = 0;
      return;
    }
  } while( true );
}

