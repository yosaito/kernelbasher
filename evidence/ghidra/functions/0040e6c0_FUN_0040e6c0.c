/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e6c0 */


int FUN_0040e6c0(int *param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int *piVar6;
  int local_4;
  
  local_4 = 0;
  do {
    if (param_2 < 1) {
      iVar1 = param_1[0xbb0];
      if (iVar1 == 0) {
        iVar1 = param_1[1];
      }
      FUN_0040ebb0(param_1,local_4,(iVar1 - local_4) + *param_1);
      return local_4;
    }
    if (param_1[2999] == 1) {
      if (param_1[0xbae] != 0) {
        param_1[0xbae] = 0;
        iVar1 = FUN_0040eac0(param_1,1);
        if (iVar1 == 0) {
          param_1[0xbb1] = 0;
        }
        else {
          iVar1 = FUN_0040eac0(param_1,0x10);
          uVar2 = FUN_0040eac0(param_1,0x10);
          param_1[0xbb1] = iVar1 << 0x10 | uVar2;
        }
      }
      if (param_1[0xbb6] == 3) {
        if (((*(byte *)(param_1 + 0xbb4) & 1) != 0) && ((uint)param_1[0xac1] < (uint)param_1[0xac2])
           ) {
          param_1[0xac1] = param_1[0xac1] + 1;
        }
        param_1[0xbb6] = 0;
        FUN_0040e990(param_1);
      }
      iVar1 = FUN_0040eac0(param_1,3);
      param_1[0xbb6] = iVar1;
      iVar1 = FUN_0040eac0(param_1,8);
      iVar3 = FUN_0040eac0(param_1,8);
      iVar4 = FUN_0040eac0(param_1,8);
      iVar4 = iVar4 + (iVar1 * 0x100 + iVar3) * 0x100;
      param_1[0xbb4] = iVar4;
      param_1[0xbb5] = iVar4;
      if (param_1[0xbb6] == 2) {
        FUN_0040ef50(param_1);
      }
      iVar1 = param_1[0xbb6];
      if ((iVar1 == 1) || (iVar1 == 2)) {
        piVar5 = param_1 + 0x286;
        piVar6 = param_1 + 0xac5;
        for (uVar2 = (uint)*(byte *)((int)param_1 + 0x2eb5) * 8 + 0x100 >> 2; uVar2 != 0;
            uVar2 = uVar2 - 1) {
          *piVar6 = *piVar5;
          piVar5 = piVar5 + 1;
          piVar6 = piVar6 + 1;
        }
        piVar5 = param_1 + 0x32e;
        piVar6 = param_1 + 0xb6d;
        for (iVar1 = 0x3e; iVar1 != 0; iVar1 = iVar1 + -1) {
          *piVar6 = *piVar5;
          piVar5 = piVar5 + 1;
          piVar6 = piVar6 + 1;
        }
        *(char *)piVar6 = (char)*piVar5;
        FUN_0040ec00(param_1);
      }
      else {
        if (iVar1 != 3) {
          return -1;
        }
        iVar1 = FUN_0040f020(param_1);
        if (iVar1 == 0) {
          return -1;
        }
      }
      param_1[2999] = 2;
    }
    iVar1 = param_1[0xbb5];
    if (0 < iVar1) {
      do {
        if (param_2 < 1) break;
        iVar1 = param_1[0xbb5];
        if (param_2 <= param_1[0xbb5]) {
          iVar1 = param_2;
        }
        if (iVar1 == 0) {
          return -1;
        }
        iVar3 = FUN_0040e920(param_1,param_1[0xbb6],param_1[0xbb0],iVar1);
        if (iVar3 != 0) {
          return -1;
        }
        iVar3 = param_1[0xbb5];
        param_2 = param_2 - iVar1;
        local_4 = local_4 + iVar1;
        param_1[0xbb5] = iVar3 - iVar1;
      } while (0 < iVar3 - iVar1);
      iVar1 = param_1[0xbb5];
    }
    if (iVar1 == 0) {
      param_1[2999] = 1;
    }
    if (param_2 == 0) {
      FUN_0040e990(param_1);
    }
  } while( true );
}

