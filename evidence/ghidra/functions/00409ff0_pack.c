/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00409ff0 */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 pack(char *param_1,void *param_2,char *param_3,char *param_4)

{
  bool bVar1;
  FILE *pFVar2;
  size_t sVar3;
  uint _Size;
  void *_DstBuf;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  size_t _Size_00;
  uint local_30;
  uint local_18;
  int local_8;
  
                    /* 0x9ff0  1  pack */
  bVar1 = false;
  DAT_012215a4 = 0;
  DAT_012215a0 = 0;
  memset(&DAT_00c215a0,0,0x600000);
  pFVar2 = fopen(param_1,&DAT_0041e134);
  if (pFVar2 == (FILE *)0x0) {
    uVar5 = 1;
  }
  else {
    sVar3 = fread(&DAT_00c215a0,1,0x600000,pFVar2);
    fclose(pFVar2);
    pFVar2 = fopen(param_3,&DAT_0041e138);
    if (pFVar2 == (FILE *)0x0) {
      uVar5 = 2;
    }
    else {
      fseek(pFVar2,0,2);
      _Size = ftell(pFVar2);
      fseek(pFVar2,0,0);
      _DstBuf = malloc(_Size);
      fread(_DstBuf,1,_Size,pFVar2);
      fclose(pFVar2);
      for (local_18 = _Size & 0xfffffff0; (int)(_Size - 0x1000) < (int)local_18;
          local_18 = local_18 - 2) {
        iVar4 = memcmp((void *)((int)_DstBuf + local_18),s__EvoxRom__0041e13c,10);
        if (iVar4 == 0) {
          local_8 = (int)_DstBuf + local_18;
          bVar1 = true;
          break;
        }
      }
      if (bVar1) {
        iVar4 = *(int *)(local_8 + 10);
        DAT_00421520 = &DAT_00c215a0;
        DAT_0042151c = &DAT_00c215a0 + DAT_00c215dc;
        iVar6 = FUN_00409f80(s__data_0041e148);
        iVar4 = (_Size - iVar4) + -0x4658;
        memcpy((void *)((int)_DstBuf + iVar4),param_2,0x4658);
        for (local_18 = 0; local_18 < *(uint *)(iVar6 + 8); local_18 = local_18 + 4) {
          if (*(int *)(&DAT_00c215a0 + local_18 + *(int *)(iVar6 + 0x14)) != 0) {
            local_30 = local_18;
          }
        }
        _Size_00 = local_30 + 4;
        _DAT_00c215c8 = *(int *)(iVar6 + 8) - _Size_00;
        _DAT_00c215d0 = -(_Size - (iVar4 - _Size_00));
        _DAT_00c215d4 = *(int *)(iVar6 + 0xc) + -0x7fff0000;
        _DAT_00c215d8 = 0x4658;
        _DAT_00c215cc = _Size_00;
        memcpy((void *)((int)_DstBuf + (iVar4 - _Size_00)),&DAT_00c215a0 + *(int *)(iVar6 + 0x14),
               _Size_00);
        memset(&DAT_00c215a0 + *(int *)(iVar6 + 0x14),0,_Size_00);
        DAT_00421518 = &DAT_00421580;
        FUN_00409ea0(&DAT_00c215a0,&DAT_00421580,sVar3);
        iVar4 = (iVar4 - _Size_00) - DAT_012215a4;
        *(uint *)(local_8 + 0xe) = -0x800000 - (_Size - iVar4);
        *(size_t *)(local_8 + 0x16) = sVar3;
        *(size_t *)(local_8 + 0x12) = DAT_012215a4;
        memcpy((void *)((int)_DstBuf + iVar4),&DAT_00421580,DAT_012215a4);
        pFVar2 = fopen(param_4,&DAT_0041e150);
        if (pFVar2 != (FILE *)0x0) {
          fwrite(_DstBuf,1,_Size,pFVar2);
          fclose(pFVar2);
        }
        free(_DstBuf);
        uVar5 = 0;
      }
      else {
        free(_DstBuf);
        uVar5 = 3;
      }
    }
  }
  return uVar5;
}

