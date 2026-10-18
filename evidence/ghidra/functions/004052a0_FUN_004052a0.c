/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004052a0 */


void __fastcall FUN_004052a0(CWnd *param_1)

{
  CWnd *this;
  uint uVar1;
  
  DAT_004214fc = 1;
  uVar1 = (uint)(*(int *)(param_1 + 0xddc) == 1);
  this = CWnd::GetDlgItem(param_1,0x3f2);
  CWnd::EnableWindow(this,uVar1);
  CWnd::UpdateData(param_1,1);
  return;
}

