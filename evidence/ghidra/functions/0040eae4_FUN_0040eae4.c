/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040eae4 */


undefined8 __fastcall
FUN_0040eae4(undefined4 param_1,undefined4 param_2,char *param_3,uint param_4,char *param_5,
            int param_6)

{
  undefined2 uVar1;
  undefined4 uVar2;
  uint uVar3;
  char *pcVar4;
  char *pcVar5;
  char *pcVar6;
  char *pcVar7;
  
  if (param_6 < 6) {
    return CONCAT44(param_2,param_3 + param_6);
  }
  pcVar7 = param_3 + param_6;
  pcVar4 = param_5 + param_6 + -6;
  uVar2 = *(undefined4 *)pcVar4;
  uVar1 = *(undefined2 *)(param_5 + param_6 + -2);
  pcVar4[0] = -0x18;
  pcVar4[1] = -0x18;
  pcVar4[2] = -0x18;
  pcVar4[3] = -0x18;
  (param_5 + param_6 + -2)[0] = -0x18;
  (param_5 + param_6 + -2)[1] = -0x18;
  pcVar6 = param_5;
  pcVar5 = param_5;
  do {
    while (*pcVar5 == -0x18) {
LAB_0040eb63:
      param_3 = pcVar5 + ((int)param_3 - (int)pcVar6);
      if ((int)(pcVar7 + -6) <= (int)param_3) {
        *(undefined4 *)pcVar4 = uVar2;
        *(undefined2 *)(param_5 + param_6 + -2) = uVar1;
        return CONCAT44(param_2,pcVar7);
      }
      uVar3 = *(uint *)(pcVar5 + 1);
      pcVar6 = pcVar5 + 5;
      if (uVar3 < param_4) {
        *(int *)(pcVar5 + 1) = *(int *)(pcVar5 + 1) - (int)param_3;
        param_3 = param_3 + 5;
        pcVar5 = pcVar6;
      }
      else {
        if ((char *)-uVar3 < param_3 || -(int)param_3 == uVar3) {
          *(uint *)(pcVar5 + 1) = *(int *)(pcVar5 + 1) + param_4;
        }
        param_3 = param_3 + 5;
        pcVar5 = pcVar6;
      }
    }
    if (pcVar5[1] == -0x18) {
      pcVar5 = pcVar5 + 1;
      goto LAB_0040eb63;
    }
    if (pcVar5[2] == -0x18) {
      pcVar5 = pcVar5 + 2;
      goto LAB_0040eb63;
    }
    if (pcVar5[3] == -0x18) {
      pcVar5 = pcVar5 + 3;
      goto LAB_0040eb63;
    }
    pcVar5 = pcVar5 + 4;
  } while( true );
}

