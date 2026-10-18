/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00410782 */


/* WARNING: Function: __SEH_prolog replaced with injection: SEH_prolog */
/* WARNING: Function: __SEH_epilog replaced with injection: EH_epilog3 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int entry(void)

{
  byte bVar1;
  HMODULE pHVar2;
  undefined4 *puVar3;
  uint uVar4;
  int iVar5;
  int *piVar6;
  byte *pbVar7;
  HINSTANCE__ *pHVar8;
  _STARTUPINFOA local_88;
  int local_44;
  int local_40;
  int local_3c;
  char **local_38;
  char **local_34 [2];
  _startupinfo local_2c;
  byte *local_28;
  uint local_24;
  uint local_20;
  undefined4 uStack_c;
  undefined *local_8;
  
  local_8 = &DAT_00413b50;
  uStack_c = 0x41078e;
  local_24 = 0;
  pHVar2 = GetModuleHandleA((LPCSTR)0x0);
  if (((short)pHVar2->unused == 0x5a4d) &&
     (piVar6 = (int *)((int)&pHVar2->unused + pHVar2[0xf].unused), *piVar6 == 0x4550)) {
    if ((short)piVar6[6] == 0x10b) {
      if (0xe < (uint)piVar6[0x1d]) {
        iVar5 = piVar6[0x3a];
        goto LAB_004107e8;
      }
    }
    else if (((short)piVar6[6] == 0x20b) && (0xe < (uint)piVar6[0x21])) {
      iVar5 = piVar6[0x3e];
LAB_004107e8:
      local_20 = (uint)(iVar5 != 0);
      goto LAB_004107ee;
    }
  }
  local_20 = 0;
LAB_004107ee:
  local_8 = (undefined *)0x0;
  __set_app_type(2);
  _DAT_01a215c4 = 0xffffffff;
  DAT_01a215c8 = 0xffffffff;
  puVar3 = (undefined4 *)__p__fmode();
  *puVar3 = DAT_00421538;
  puVar3 = (undefined4 *)__p__commode();
  *puVar3 = DAT_00421534;
  _DAT_01a215c0 = *(undefined4 *)_adjust_fdiv_exref;
  __RTC_Initialize();
  FUN_00410afa();
  if (DAT_0041e174 == 0) {
    __setusermatherr(FUN_00410afa);
  }
  __setdefaultprecision();
  initterm(&DAT_0041502c,&DAT_00415030);
  _atexit(FUN_00410a9e);
  local_2c.newmode = DAT_00421530;
  local_40 = __getmainargs(&local_3c,&local_38,local_34,DAT_0042152c,&local_2c);
  if (local_40 < 0) {
    _amsg_exit(8);
  }
  initterm(&DAT_00415000,&DAT_00415028);
  pbVar7 = *(byte **)_acmdln_exref;
  while( true ) {
    bVar1 = *pbVar7;
    local_28 = pbVar7;
    if ((bVar1 < 0x21) && ((bVar1 == 0 || (local_24 == 0)))) break;
    if (bVar1 == 0x22) {
      local_24 = (uint)(local_24 == 0);
    }
    iVar5 = _ismbblead((uint)bVar1);
    if (iVar5 != 0) {
      pbVar7 = pbVar7 + 1;
    }
    pbVar7 = pbVar7 + 1;
  }
  for (; (pbVar7 = local_28, *local_28 != 0 && (*local_28 < 0x21)); local_28 = local_28 + 1) {
  }
  local_88.dwFlags = 0;
  GetStartupInfoA(&local_88);
  if ((local_88.dwFlags & 1) == 0) {
    uVar4 = 10;
  }
  else {
    uVar4 = (uint)local_88.wShowWindow;
  }
  pHVar8 = (HINSTANCE__ *)0x0;
  pHVar2 = GetModuleHandleA((LPCSTR)0x0);
  iVar5 = AfxWinMain(pHVar2,pHVar8,(char *)pbVar7,uVar4);
  local_44 = iVar5;
  if (local_20 == 0) {
                    /* WARNING: Subroutine does not return */
    exit(iVar5);
  }
  _cexit();
  return iVar5;
}

