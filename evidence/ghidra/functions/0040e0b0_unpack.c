/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040e0b0 */


bool unpack(char *param_1,char *param_2)

{
  bool bVar1;
  FILE *pFVar2;
  int iVar3;
  uint uVar4;
  uint local_20;
  uint local_14;
  undefined *local_8;
  
                    /* 0xe0b0  2  unpack */
  bVar1 = false;
  memset(&DAT_012215c0,0,0x600000);
  memset(&DAT_00421580,0,0x600000);
  pFVar2 = fopen(param_1,&DAT_0041e154);
  if (pFVar2 != (FILE *)0x0) {
    local_20 = fread(&DAT_012215c0,1,0x600000,pFVar2);
    fclose(pFVar2);
  }
  local_14 = local_20 & 0xfffffff0;
  do {
    if ((int)local_14 <= (int)(local_20 - 0x1000)) {
LAB_0040e182:
      if (bVar1) {
        uVar4 = *(int *)(local_8 + 0xe) + -0x800000 + local_20 & 0xffffff;
        FUN_0040dfd0(&DAT_012215c0 + uVar4,&DAT_00421580,*(undefined4 *)(local_8 + 0x16));
        memcpy((void *)(DAT_004215b4 + -0x7fbeea80),&DAT_012215c0 + *(int *)(local_8 + 0x12) + uVar4
               ,DAT_004215ac);
        pFVar2 = fopen(param_2,&DAT_0041e164);
        fwrite(&DAT_00421580,1,*(size_t *)(local_8 + 0x16),pFVar2);
        fclose(pFVar2);
      }
      return !bVar1;
    }
    iVar3 = memcmp(&DAT_012215c0 + local_14,s__EvoxRom__0041e158,10);
    if (iVar3 == 0) {
      local_8 = &DAT_012215c0 + local_14;
      bVar1 = true;
      goto LAB_0040e182;
    }
    local_14 = local_14 - 2;
  } while( true );
}

