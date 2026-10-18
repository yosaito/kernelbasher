/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00401370 */


undefined4 __fastcall FUN_00401370(int param_1)

{
  CDialog local_dec [3552];
  void *local_c;
  undefined1 *puStack_8;
  undefined4 local_4;
  
  local_4 = 0xffffffff;
  puStack_8 = &LAB_00410eab;
  local_c = ExceptionList;
  ExceptionList = &local_c;
  AfxEnableControlContainer((COccManager *)0x0);
  FUN_004014e0(0);
  local_4 = 0;
  *(CDialog **)(param_1 + 0x20) = local_dec;
  CDialog::DoModal(local_dec);
  local_4 = 0xffffffff;
  FUN_00401040();
  ExceptionList = local_c;
  return 0;
}

