/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c100 */


void FUN_0040c100(int param_1)

{
  uint uVar1;
  uint uVar2;
  char cVar3;
  
  uVar1 = 0;
  do {
    cVar3 = '\0';
    for (uVar2 = uVar1; uVar2 != 0; uVar2 = (int)uVar2 >> 1) {
      if ((uVar2 & 1) != 0) {
        cVar3 = cVar3 + '\x01';
      }
    }
    *(char *)(uVar1 + 0x87d + param_1) = cVar3;
    uVar1 = uVar1 + 1;
  } while ((int)uVar1 < 0x100);
  return;
}

