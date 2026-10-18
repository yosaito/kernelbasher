/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00404020 */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00404020(CWnd *param_1)

{
  int iVar1;
  CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *pCVar2;
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *pCVar3;
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> local_1dc [4];
  CFileDialog local_1d8 [4];
  CFileDialog local_1d4 [448];
  void *local_14;
  void *local_c;
  undefined1 *local_8;
  undefined4 local_4;
  
  local_4 = 0xffffffff;
  local_8 = &LAB_004111e3;
  local_c = ExceptionList;
  ExceptionList = &local_c;
  CFileDialog::CFileDialog
            (local_1d4,1,(char *)0x0,(char *)0x0,0x1008,"Direct X file  (*.x)|*.x",param_1,0);
  local_4 = 0;
  iVar1 = CFileDialog::DoModal(local_1d4);
  if (iVar1 != 1) {
    local_4 = 0xffffffff;
    CFileDialog::~CFileDialog(local_1d4);
    ExceptionList = local_c;
    return;
  }
  pCVar2 = (CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *)
           CFileDialog::GetPathName(local_1d4);
  local_8._0_1_ = 1;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&DAT_00421508,pCVar2);
  local_8 = (undefined1 *)((uint)local_8._1_3_ << 8);
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  ~CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>(local_1dc);
  DAT_0041efdc = fopen(DAT_00421508,"r");
  pCVar3 = local_1dc;
  pCVar2 = (CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *)
           CFileDialog::GetFileName(local_1d8);
  local_c._0_1_ = 2;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd54),
             pCVar2);
  local_c = (void *)((uint)local_c._1_3_ << 8);
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  ~CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&stack0xfffffe20);
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd4c),
             &stack0xfffffe1c);
  iVar1 = FUN_00401fa0(pCVar3);
  if (iVar1 == 1) {
    CWnd::MessageBoxA(param_1,"Problem with Vertices probably to many","You Fucked up Buddy",0);
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&DAT_00421508,"X");
  }
  else {
    iVar1 = 2;
    while (_DAT_0041e238 <= _DAT_0041305c) {
      iVar1 = iVar1 + 3;
      if (99 < iVar1) {
        sprintf(&stack0xfffffe1c,"%d",iVar1);
        ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
                  ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)
                   (param_1 + 0xd50),&stack0xfffffe1c);
        iVar1 = FUN_004021a0();
        if (iVar1 == 1) {
          CWnd::MessageBoxA(param_1,"Problem with Indices probably to many","You Fucked up Buddy",0)
          ;
          ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
                    ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&DAT_00421508,
                     "X");
        }
        else {
          sprintf(&stack0xfffffe1c,"%d",iVar1);
          ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
                    ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)
                     (param_1 + 0xd4c),&stack0xfffffe1c);
          FUN_00402380();
          CWnd::UpdateData(param_1,0);
          fclose(DAT_0041efdc);
        }
        local_c = (void *)0xffffffff;
        CFileDialog::~CFileDialog((CFileDialog *)local_1dc);
        ExceptionList = local_14;
        return;
      }
    }
    CWnd::MessageBoxA(param_1,"Error loading x file",(char *)0x0,0);
  }
  local_c = (void *)0xffffffff;
  CFileDialog::~CFileDialog((CFileDialog *)local_1dc);
  ExceptionList = local_14;
  return;
}

