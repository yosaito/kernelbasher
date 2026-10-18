/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00410bbd */


/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */

_ATL_BASE_MODULE70 * __fastcall FUN_00410bbd(_ATL_BASE_MODULE70 *param_1)

{
  int iVar1;
  _OSVERSIONINFOA local_9c;
  undefined4 local_8;
  
  local_8 = DAT_0041e170;
  ATL::_ATL_BASE_MODULE70::_ATL_BASE_MODULE70(param_1);
  *(undefined4 *)(param_1 + 8) = 0x400000;
  *(undefined4 *)(param_1 + 4) = 0x400000;
  *(undefined4 *)param_1 = 0x3c;
  param_1[0xc] = (_ATL_BASE_MODULE70)0x0;
  memset(&local_9c,0,0x94);
  local_9c.dwOSVersionInfoSize = 0x94;
  GetVersionExA(&local_9c);
  if (local_9c.dwPlatformId == 2) {
    if (local_9c.dwMajorVersion < 5) goto LAB_00410c37;
  }
  else if ((local_9c.dwPlatformId != 1) ||
          ((local_9c.dwMajorVersion < 5 &&
           ((local_9c.dwMajorVersion != 4 || (local_9c.dwMinorVersion == 0)))))) goto LAB_00410c37;
  param_1[0xc] = (_ATL_BASE_MODULE70)0x1;
LAB_00410c37:
  *(undefined4 *)(param_1 + 0x10) = 0x710;
  *(undefined **)(param_1 + 0x14) = &DAT_00413b9c;
  iVar1 = FUN_004105ee();
  if (iVar1 < 0) {
    DAT_0041e180 = 1;
  }
  return param_1;
}

