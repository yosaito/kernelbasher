
void __fastcall OnWhiteAnimationToggle(CWnd *param_1)

{
  CWnd *pCVar1;
  int iVar2;
  
  CWnd::UpdateData(param_1,1);
  if (*(int *)(param_1 + 0xd34) == 1) {
    iVar2 = 1;
    pCVar1 = CWnd::GetDlgItem(param_1,0x3f5);
    CWnd::EnableWindow(pCVar1,iVar2);
    return;
  }
  iVar2 = 0;
  pCVar1 = CWnd::GetDlgItem(param_1,0x3f5);
  CWnd::EnableWindow(pCVar1,iVar2);
  return;
}

