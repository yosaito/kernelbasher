
void __fastcall OnVScroll(CWnd *param_1)

{
  int iVar1;
  CWnd *pCVar2;
  int iVar3;
  uint uVar4;
  
  CWnd::UpdateData(param_1,1);
  iVar1 = *(int *)(param_1 + 0xd48);
  if (iVar1 != 1) {
    iVar3 = 0;
    pCVar2 = CWnd::GetDlgItem(param_1,0x401);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 0;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138b);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 0;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138a);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 0;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138c);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 0;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138e);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 0;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138f);
    CWnd::EnableWindow(pCVar2,iVar3);
  }
  else {
    iVar3 = 1;
    pCVar2 = CWnd::GetDlgItem(param_1,0x401);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 1;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138b);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 1;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138a);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 1;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138c);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 1;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138e);
    CWnd::EnableWindow(pCVar2,iVar3);
    iVar3 = 1;
    pCVar2 = CWnd::GetDlgItem(param_1,0x138f);
    CWnd::EnableWindow(pCVar2,iVar3);
  }
  uVar4 = (uint)(iVar1 == 1);
  pCVar2 = CWnd::GetDlgItem(param_1,0x1390);
  CWnd::EnableWindow(pCVar2,uVar4);
  return;
}

