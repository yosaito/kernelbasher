/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00404ba0 */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00404ba0(CWnd *param_1)

{
  int iVar1;
  CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *pCVar2;
  LRESULT LVar3;
  CFileDialog *this;
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> local_1dc [4];
  CFileDialog local_1d8 [4];
  CFileDialog local_1d4 [452];
  void *local_10;
  void *pvStack_c;
  undefined1 *local_8;
  undefined4 local_4;
  
  local_4 = 0xffffffff;
  local_8 = &LAB_00411207;
  pvStack_c = ExceptionList;
  ExceptionList = &pvStack_c;
  CFileDialog::CFileDialog
            (local_1d4,1,".kbp",(char *)0x0,0x1000,"KernelBase Preset  (*.kbp)|*.kbp",param_1,0);
  local_4 = 0;
  iVar1 = CFileDialog::DoModal(local_1d4);
  this = local_1d4;
  if (iVar1 == 1) {
    pCVar2 = (CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *)
             CFileDialog::GetFileName(this);
    local_8._0_1_ = 1;
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&DAT_0042150c,pCVar2
              );
    local_8 = (undefined1 *)((uint)local_8._1_3_ << 8);
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
    ~CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>(local_1dc);
    DAT_0041e988 = (int)fopen(DAT_0042150c,"rb");
    if ((FILE *)DAT_0041e988 != (FILE *)0x0) {
      fread(&DAT_0041fe88,0x58,1,(FILE *)DAT_0041e988);
      SendMessageA(*(HWND *)(param_1 + 0x60c),0x405,1,DAT_0041feac);
      SendMessageA(*(HWND *)(param_1 + 0x660),0x405,1,DAT_0041feb0);
      SendMessageA(*(HWND *)(param_1 + 0x6b4),0x405,1,DAT_0041feb4);
      SendMessageA(*(HWND *)(param_1 + 0x708),0x405,1,DAT_0041feb8);
      SendMessageA(*(HWND *)(param_1 + 0x5b8),0x405,1,DAT_0041febc);
      SendMessageA(*(HWND *)(param_1 + 0x954),0x405,1,DAT_0041fe94);
      SendMessageA(*(HWND *)(param_1 + 0x9a8),0x405,1,DAT_0041fe98);
      SendMessageA(*(HWND *)(param_1 + 0x9fc),0x405,1,DAT_0041fe9c);
      SendMessageA(*(HWND *)(param_1 + 0xbf4),0x405,1,DAT_0041fe88);
      SendMessageA(*(HWND *)(param_1 + 0xc48),0x405,1,DAT_0041fe8c);
      SendMessageA(*(HWND *)(param_1 + 0xba0),0x405,1,DAT_0041fe90);
      SendMessageA(*(HWND *)(param_1 + 0x75c),0x405,1,DAT_0041fea0);
      SendMessageA(*(HWND *)(param_1 + 0x7b0),0x405,1,DAT_0041fea4);
      SendMessageA(*(HWND *)(param_1 + 0x804),0x405,1,DAT_0041fea8);
      SendMessageA(*(HWND *)(param_1 + 0x858),0x405,1,DAT_0041fec0);
      SendMessageA(*(HWND *)(param_1 + 0x8ac),0x405,1,DAT_0041fec4);
      SendMessageA(*(HWND *)(param_1 + 0x900),0x405,1,DAT_0041fec8);
      SendMessageA(*(HWND *)(param_1 + 0xa50),0x405,1,DAT_0041fecc);
      SendMessageA(*(HWND *)(param_1 + 0xaa4),0x405,1,DAT_0041fed0);
      SendMessageA(*(HWND *)(param_1 + 0xaf8),0x405,1,DAT_0041fed4);
      CWnd::UpdateData(param_1,1);
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0xbf4),0x400,0,0);
      *(int *)(param_1 + 0xd70) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0xc48),0x400,0,0);
      *(int *)(param_1 + 0xd6c) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0xba0),0x400,0,0);
      *(int *)(param_1 + 0xd68) = 0xff - LVar3;
      FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar3),param_1[0xd6c]),param_1[0xd70]));
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x954),0x400,0,0);
      *(int *)(param_1 + 0xd7c) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x9a8),0x400,0,0);
      *(int *)(param_1 + 0xd78) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x9fc),0x400,0,0);
      *(int *)(param_1 + 0xd74) = 0xff - LVar3;
      FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar3),param_1[0xd78]),param_1[0xd7c]));
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x75c),0x400,0,0);
      *(int *)(param_1 + 0xda4) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x7b0),0x400,0,0);
      *(int *)(param_1 + 0xda0) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x804),0x400,0,0);
      *(int *)(param_1 + 0xd9c) = 0xff - LVar3;
      FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar3),param_1[0xda0]),param_1[0xda4]));
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x858),0x400,0,0);
      *(int *)(param_1 + 0xd88) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x8ac),0x400,0,0);
      *(int *)(param_1 + 0xd84) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x900),0x400,0,0);
      *(int *)(param_1 + 0xd80) = 0xff - LVar3;
      FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar3),param_1[0xd84]),param_1[0xd88]));
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0xa50),0x400,0,0);
      *(int *)(param_1 + 0xd98) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0xaa4),0x400,0,0);
      *(int *)(param_1 + 0xd94) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0xaf8),0x400,0,0);
      *(int *)(param_1 + 0xd90) = 0xff - LVar3;
      FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar3),param_1[0xd94]),param_1[0xd98]));
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x60c),0x400,0,0);
      *(int *)(param_1 + 0xdb4) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x660),0x400,0,0);
      *(int *)(param_1 + 0xdb0) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x6b4),0x400,0,0);
      *(int *)(param_1 + 0xdac) = 0xff - LVar3;
      FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar3),param_1[0xdb0]),param_1[0xdb4]));
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x708),0x400,0,0);
      *(int *)(param_1 + 0xda8) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x5b8),0x400,0,0);
      *(float *)(param_1 + 0xdcc) = (float)(0xff - LVar3) * _DAT_00413080;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x4bc),0x400,0,0);
      *(int *)(param_1 + 0xdc0) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x510),0x400,0,0);
      *(int *)(param_1 + 0xdbc) = 0xff - LVar3;
      LVar3 = SendMessageA(*(HWND *)(param_1 + 0x564),0x400,0,0);
      *(int *)(param_1 + 0xdb8) = 0xff - LVar3;
      FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar3),param_1[0xdbc]),param_1[0xdc0]));
      CWnd::UpdateData(param_1,0);
      fclose((FILE *)DAT_0041e988);
      local_8 = (undefined1 *)0xffffffff;
      CFileDialog::~CFileDialog(local_1d8);
      ExceptionList = local_10;
      return;
    }
    CWnd::MessageBoxA(param_1,"Cannot create preset file",(char *)0x0,0);
    this = local_1d8;
  }
  local_8 = (undefined1 *)0xffffffff;
  CFileDialog::~CFileDialog(this);
  ExceptionList = local_10;
  return;
}

