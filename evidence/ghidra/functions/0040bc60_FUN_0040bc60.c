/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040bc60 */


void FUN_0040bc60(int param_1)

{
  char *pcVar1;
  uint uVar2;
  
  uVar2 = 0;
  do {
    pcVar1 = (char *)(param_1 + 0x2540 + uVar2);
    if (*pcVar1 == '\0') {
      *pcVar1 = '\v';
    }
    uVar2 = uVar2 + 1;
  } while (uVar2 < 0x100);
  if (uVar2 < *(int *)(param_1 + 0x870) * 8 + 0x100U) {
    do {
      pcVar1 = (char *)(param_1 + 0x2540 + uVar2);
      if (*pcVar1 == '\0') {
        *pcVar1 = '\f';
      }
      uVar2 = uVar2 + 1;
    } while (uVar2 < *(int *)(param_1 + 0x870) * 8 + 0x100U);
  }
  uVar2 = 0;
  do {
    pcVar1 = (char *)(param_1 + 0x27fd + uVar2);
    if (*pcVar1 == '\0') {
      *pcVar1 = '\b';
    }
    uVar2 = uVar2 + 1;
  } while (uVar2 < 0xf9);
  FUN_0040bce0(param_1);
  return;
}

