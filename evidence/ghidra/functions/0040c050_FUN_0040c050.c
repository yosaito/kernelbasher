/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040c050 */


void FUN_0040c050(int param_1)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  char *pcVar5;
  char local_1;
  
  uVar4 = 2;
  iVar3 = 4;
  local_1 = '\x04';
  *(undefined1 *)(param_1 + 0x45c) = 0;
  *(undefined1 *)(param_1 + 0x45d) = 1;
  *(undefined1 *)(param_1 + 0x45f) = 3;
  *(undefined1 *)(param_1 + 0x45e) = 2;
  do {
    if (0 < (int)uVar4) {
      pcVar5 = (char *)(param_1 + 0x45c + iVar3);
      iVar3 = iVar3 + uVar4;
      for (uVar2 = uVar4 >> 2; uVar2 != 0; uVar2 = uVar2 - 1) {
        *(uint *)pcVar5 = CONCAT22(CONCAT11(local_1,local_1),CONCAT11(local_1,local_1));
        pcVar5 = pcVar5 + 4;
      }
      for (uVar2 = uVar4 & 3; uVar2 != 0; uVar2 = uVar2 - 1) {
        *pcVar5 = local_1;
        pcVar5 = pcVar5 + 1;
      }
    }
    cVar1 = local_1 + '\x01';
    if (0 < (int)uVar4) {
      pcVar5 = (char *)(param_1 + 0x45c + iVar3);
      for (uVar2 = uVar4 >> 2; uVar2 != 0; uVar2 = uVar2 - 1) {
        *(uint *)pcVar5 = CONCAT22(CONCAT11(cVar1,cVar1),CONCAT11(cVar1,cVar1));
        pcVar5 = pcVar5 + 4;
      }
      for (uVar2 = uVar4 & 3; uVar2 != 0; uVar2 = uVar2 - 1) {
        *pcVar5 = cVar1;
        pcVar5 = pcVar5 + 1;
      }
      iVar3 = iVar3 + uVar4;
    }
    uVar4 = uVar4 * 2;
    local_1 = local_1 + '\x02';
  } while (iVar3 < 0x400);
  return;
}

