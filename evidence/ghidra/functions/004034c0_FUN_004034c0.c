/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004034c0 */


undefined4 __fastcall FUN_004034c0(CDialog *param_1)

{
  HMENU pHVar1;
  CMenu *pCVar2;
  CWnd *pCVar3;
  int iVar4;
  CDialog *local_10;
  void *local_c;
  undefined1 *puStack_8;
  undefined4 local_4;
  
  local_4 = 0xffffffff;
  puStack_8 = &LAB_00411189;
  local_c = ExceptionList;
  ExceptionList = &local_c;
  local_10 = param_1;
  CDialog::OnInitDialog(param_1);
  pHVar1 = GetSystemMenu(*(HWND *)(param_1 + 0x20),0);
  pCVar2 = CMenu::FromHandle(pHVar1);
  if (pCVar2 != (CMenu *)0x0) {
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
    CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&local_10);
    local_4 = 0;
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::LoadStringA
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&local_10,0x65);
    if (*(int *)(local_10 + -0xc) != 0) {
      AppendMenuA(*(HMENU *)(pCVar2 + 4),0x800,0,(LPCSTR)0x0);
      AppendMenuA(*(HMENU *)(pCVar2 + 4),0,0x10,(LPCSTR)local_10);
    }
    local_4 = 0xffffffff;
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
    ~CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&local_10);
  }
  SendMessageA(*(HWND *)(param_1 + 0x20),0x80,1,*(LPARAM *)(param_1 + 0xdd4));
  SendMessageA(*(HWND *)(param_1 + 0x20),0x80,0,*(LPARAM *)(param_1 + 0xdd4));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd24),
             "Green");
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd28),
             "256k");
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd2c),
             "1(Default)");
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd50)," ")
  ;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd4c)," ")
  ;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd54)," ")
  ;
  FUN_004099c0(&DAT_0046ff19);
  FUN_004099c0(&DAT_0046ff19);
  FUN_004099c0(&DAT_0046ff19);
  FUN_004099c0(&DAT_0046ff19);
  FUN_004099c0(&DAT_0046ff19);
  FUN_004099c0(&DAT_0046ff19);
  FUN_004099c0(0);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13ca);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13cb);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13cc);
  CWnd::EnableWindow(pCVar3,iVar4);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0xbd4),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0xc28),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0xb80),0,0xff,0);
  SendMessageA(*(HWND *)(param_1 + 0xbf4),0x405,1,0xe6);
  SendMessageA(*(HWND *)(param_1 + 0xc48),0x405,1,0);
  SendMessageA(*(HWND *)(param_1 + 0xba0),0x405,1,0xb9);
  *(undefined4 *)(param_1 + 0xd70) = 0x19;
  *(undefined4 *)(param_1 + 0xd6c) = 0xff;
  *(undefined4 *)(param_1 + 0xd68) = 0x46;
  SendMessageA(*(HWND *)(param_1 + 0x468),0x401,0,0x640000);
  SendMessageA(*(HWND *)(param_1 + 0x468),0x402,0,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x934),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x988),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x9dc),0,0xff,0);
  SendMessageA(*(HWND *)(param_1 + 0x954),0x405,1,0xe6);
  SendMessageA(*(HWND *)(param_1 + 0x9a8),0x405,1,0);
  SendMessageA(*(HWND *)(param_1 + 0x9fc),0x405,1,0xb9);
  *(undefined4 *)(param_1 + 0xd7c) = 0x19;
  *(undefined4 *)(param_1 + 0xd78) = 0xff;
  *(undefined4 *)(param_1 + 0xd74) = 0x46;
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x5ec),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x640),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x694),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x6e8),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x598),0,0xff,0);
  SendMessageA(*(HWND *)(param_1 + 0x60c),0x405,1,0xe6);
  SendMessageA(*(HWND *)(param_1 + 0x660),0x405,1,0);
  SendMessageA(*(HWND *)(param_1 + 0x6b4),0x405,1,0xb9);
  SendMessageA(*(HWND *)(param_1 + 0x708),0x405,1,0);
  SendMessageA(*(HWND *)(param_1 + 0x5b8),0x405,1,0x7d);
  *(undefined4 *)(param_1 + 0xdb4) = 0x19;
  *(undefined4 *)(param_1 + 0xdb0) = 0xff;
  *(undefined4 *)(param_1 + 0xdac) = 0x46;
  *(undefined4 *)(param_1 + 0xda8) = 0xff;
  *(undefined4 *)(param_1 + 0xdcc) = 0x40500000;
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0xa30),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0xa84),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0xad8),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0xb2c),0,0xff,0);
  SendMessageA(*(HWND *)(param_1 + 0xa50),0x405,1,0xe6);
  SendMessageA(*(HWND *)(param_1 + 0xaa4),0x405,1,0);
  SendMessageA(*(HWND *)(param_1 + 0xaf8),0x405,1,0xb9);
  SendMessageA(*(HWND *)(param_1 + 0xb4c),0x405,1,0);
  *(undefined4 *)(param_1 + 0xd98) = 0x19;
  *(undefined4 *)(param_1 + 0xd94) = 0xff;
  *(undefined4 *)(param_1 + 0xd90) = 0x46;
  *(undefined4 *)(param_1 + 0xd8c) = 0xff;
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x49c),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x4f0),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x544),0,0xff,0);
  SendMessageA(*(HWND *)(param_1 + 0x4bc),0x405,1,0xff);
  SendMessageA(*(HWND *)(param_1 + 0x510),0x405,1,0xff);
  SendMessageA(*(HWND *)(param_1 + 0x564),0x405,1,0xff);
  *(undefined4 *)(param_1 + 0xdc0) = 0;
  *(undefined4 *)(param_1 + 0xdbc) = 0;
  *(undefined4 *)(param_1 + 0xdb8) = 0;
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x838),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x88c),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x8e0),0,0xff,0);
  SendMessageA(*(HWND *)(param_1 + 0x858),0x405,1,0xe6);
  SendMessageA(*(HWND *)(param_1 + 0x8ac),0x405,1,0);
  SendMessageA(*(HWND *)(param_1 + 0x900),0x405,1,0xb9);
  *(undefined4 *)(param_1 + 0xd88) = 0x19;
  *(undefined4 *)(param_1 + 0xd84) = 0xff;
  *(undefined4 *)(param_1 + 0xd80) = 0x46;
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x73c),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x790),0,0xff,0);
  CSliderCtrl::SetRange((CSliderCtrl *)(param_1 + 0x7e4),0,0xff,0);
  SendMessageA(*(HWND *)(param_1 + 0x75c),0x405,1,0xe6);
  SendMessageA(*(HWND *)(param_1 + 0x7b0),0x405,1,0);
  SendMessageA(*(HWND *)(param_1 + 0x804),0x405,1,0xb9);
  iVar4 = 0;
  *(undefined4 *)(param_1 + 0xda4) = 0x19;
  *(undefined4 *)(param_1 + 0xda0) = 0xff;
  *(undefined4 *)(param_1 + 0xd9c) = 0x46;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x3f5);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,1000);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x401);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x138b);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x138a);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x138c);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x138e);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x138f);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x1390);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x3f2);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x3f4);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x3f5);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13be);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13bf);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13c0);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13ac);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13ad);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13ae);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13a1);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x139b);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13a0);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13a2);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13a3);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13a4);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13c4);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13c5);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13c6);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13b4);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13b5);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13b6);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13b7);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13bc);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x3f6);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13d7);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,5000);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x3ee);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13e7);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13e6);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13df);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13e0);
  CWnd::EnableWindow(pCVar3,iVar4);
  iVar4 = 0;
  pCVar3 = CWnd::GetDlgItem((CWnd *)param_1,0x13e5);
  CWnd::EnableWindow(pCVar3,iVar4);
  DAT_0041eec8 = 0;
  CWnd::UpdateData((CWnd *)param_1,0);
  iVar4 = xb_read_config_file("config.ini");
  if (iVar4 == 0) {
    CWnd::MessageBoxA((CWnd *)param_1,"Could not open Config.ini","You Fucked up Buddy",0);
                    /* WARNING: Subroutine does not return */
    exit(0);
  }
  CreateDirectoryA("c:\\temp",(LPSECURITY_ATTRIBUTES)0x0);
  ExceptionList = local_c;
  return 1;
}

