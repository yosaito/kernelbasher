/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040dad0 */


void FUN_0040dad0(int param_1,int param_2,int param_3,int param_4)

{
  char *pcVar1;
  short sVar2;
  short *psVar3;
  short *psVar4;
  short *psVar5;
  int iVar6;
  short asStack_24 [17];
  short local_2;
  
  asStack_24[1] = 0;
  psVar3 = (short *)(param_1 + 0x2506);
  psVar4 = asStack_24 + 2;
  do {
    psVar5 = psVar4 + 1;
    sVar2 = *psVar3;
    psVar3 = psVar3 + 1;
    *psVar4 = (psVar4[-1] + sVar2) * 2;
    psVar4 = psVar5;
  } while (psVar5 <= &local_2);
  iVar6 = 0;
  if (0 < param_2) {
    do {
      pcVar1 = (char *)(param_3 + iVar6);
      iVar6 = iVar6 + 1;
      *(short *)(param_4 + -2 + iVar6 * 2) = asStack_24[*pcVar1];
      asStack_24[*pcVar1] = asStack_24[*pcVar1] + 1;
    } while (iVar6 < param_2);
  }
  return;
}

