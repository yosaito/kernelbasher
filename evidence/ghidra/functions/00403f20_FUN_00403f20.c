/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00403f20 */


void __fastcall FUN_00403f20(CDialog *param_1)

{
  BOOL BVar1;
  int iVar2;
  int iVar3;
  tagRECT local_64;
  CPaintDC local_54 [4];
  HDC local_50;
  
  BVar1 = IsIconic(*(HWND *)(param_1 + 0x20));
  if (BVar1 != 0) {
    CPaintDC::CPaintDC(local_54,(CWnd *)param_1);
    SendMessageA(*(HWND *)(param_1 + 0x20),0x27,(WPARAM)local_50,0);
    iVar2 = GetSystemMetrics(0xb);
    iVar3 = GetSystemMetrics(0xc);
    GetClientRect(*(HWND *)(param_1 + 0x20),&local_64);
    DrawIcon(local_50,(((local_64.right - local_64.left) - iVar2) + 1) / 2,
             (((local_64.bottom - local_64.top) - iVar3) + 1) / 2,*(HICON *)(param_1 + 0xdd4));
    CPaintDC::~CPaintDC(local_54);
    return;
  }
  CDialog::OnPaint(param_1);
  return;
}

