/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00404850 */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00404850(CWnd *param_1)

{
  char cVar1;
  int iVar2;
  CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *pCVar3;
  CFileDialog *this;
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
            (local_1d4,0,".kbp",(char *)0x0,0x1000,"KernelBase Preset  (*.kbp)|*.kbp",param_1,0);
  local_4 = 0;
  iVar2 = CFileDialog::DoModal(local_1d4);
  this = local_1d4;
  if (iVar2 == 1) {
    pCVar3 = (CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *)
             CFileDialog::GetFileName(this);
    local_8._0_1_ = 1;
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&DAT_0042150c,pCVar3
              );
    local_8 = (undefined1 *)((uint)local_8._1_3_ << 8);
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
    ~CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&stack0xfffffe24);
    DAT_0041e988 = (int)fopen(DAT_0042150c,"wb");
    if ((FILE *)DAT_0041e988 != (FILE *)0x0) {
      DAT_0041feac = SendMessageA(*(HWND *)(param_1 + 0x60c),0x400,0,0);
      DAT_0041feb0 = SendMessageA(*(HWND *)(param_1 + 0x660),0x400,0,0);
      DAT_0041feb4 = SendMessageA(*(HWND *)(param_1 + 0x6b4),0x400,0,0);
      DAT_0041feb8 = SendMessageA(*(HWND *)(param_1 + 0x708),0x400,0,0);
      DAT_0041febc = SendMessageA(*(HWND *)(param_1 + 0x5b8),0x400,0,0);
      cVar1 = ATL::CSimpleStringT<char,1>::operator[]((CSimpleStringT<char,1> *)(param_1 + 0xd2c),0)
      ;
      _DAT_0041fedc = (int)cVar1;
      DAT_0041feda = *(int *)(param_1 + 0xd34) != 0;
      DAT_0041fed9 = *(int *)(param_1 + 0xd30) != 0;
      DAT_0041fed8 = *(int *)(param_1 + 0xdc4) != 0;
      DAT_0041fe94 = SendMessageA(*(HWND *)(param_1 + 0x954),0x400,0,0);
      DAT_0041fe98 = SendMessageA(*(HWND *)(param_1 + 0x9a8),0x400,0,0);
      DAT_0041fe9c = SendMessageA(*(HWND *)(param_1 + 0x9fc),0x400,0,0);
      DAT_0041fe88 = SendMessageA(*(HWND *)(param_1 + 0xbf4),0x400,0,0);
      DAT_0041fe8c = SendMessageA(*(HWND *)(param_1 + 0xc48),0x400,0,0);
      DAT_0041fe90 = SendMessageA(*(HWND *)(param_1 + 0xba0),0x400,0,0);
      DAT_0041fea0 = SendMessageA(*(HWND *)(param_1 + 0x75c),0x400,0,0);
      DAT_0041fea4 = SendMessageA(*(HWND *)(param_1 + 0x7b0),0x400,0,0);
      DAT_0041fea8 = SendMessageA(*(HWND *)(param_1 + 0x804),0x400,0,0);
      DAT_0041fec0 = SendMessageA(*(HWND *)(param_1 + 0x858),0x400,0,0);
      DAT_0041fec4 = SendMessageA(*(HWND *)(param_1 + 0x8ac),0x400,0,0);
      DAT_0041fec8 = SendMessageA(*(HWND *)(param_1 + 0x900),0x400,0,0);
      DAT_0041fecc = SendMessageA(*(HWND *)(param_1 + 0xa50),0x400,0,0);
      DAT_0041fed0 = SendMessageA(*(HWND *)(param_1 + 0xaa4),0x400,0,0);
      DAT_0041fed4 = SendMessageA(*(HWND *)(param_1 + 0xaf8),0x400,0,0);
      fwrite(&DAT_0041fe88,0x58,1,(FILE *)DAT_0041e988);
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

