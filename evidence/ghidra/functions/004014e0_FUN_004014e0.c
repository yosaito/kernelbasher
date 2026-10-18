/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004014e0 */


CDialog * __thiscall FUN_004014e0(CDialog *param_1,CWnd *param_2)

{
  HINSTANCE__ *hInstance;
  HICON pHVar1;
  LPCSTR lpIconName;
  void *local_c;
  undefined1 *puStack_8;
  undefined4 local_4;
  
  local_4 = 0xffffffff;
  puStack_8 = &LAB_00411171;
  local_c = ExceptionList;
  ExceptionList = &local_c;
  CDialog::CDialog(param_1,0x66,param_2);
  local_4 = 0;
  *(undefined ***)param_1 = &PTR_LAB_00412db0;
  CWnd::CWnd((CWnd *)(param_1 + 0x74));
  *(undefined ***)(param_1 + 0x74) = &PTR_LAB_00412878;
  local_4._0_1_ = 1;
  FUN_00409950();
  local_4._0_1_ = 2;
  FUN_00409950();
  local_4._0_1_ = 3;
  FUN_00409950();
  local_4._0_1_ = 4;
  FUN_00409950();
  local_4._0_1_ = 5;
  FUN_00409950();
  local_4._0_1_ = 6;
  FUN_00409950();
  local_4._0_1_ = 7;
  FUN_00409950();
  local_4._0_1_ = 8;
  CWnd::CWnd((CWnd *)(param_1 + 0x3f4));
  *(undefined ***)(param_1 + 0x3f4) = &PTR_LAB_00412738;
  local_4._0_1_ = 9;
  CWnd::CWnd((CWnd *)(param_1 + 0x448));
  *(undefined ***)(param_1 + 0x448) = &PTR_LAB_00412b08;
  local_4._0_1_ = 10;
  CWnd::CWnd((CWnd *)(param_1 + 0x49c));
  *(undefined ***)(param_1 + 0x49c) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0xb;
  CWnd::CWnd((CWnd *)(param_1 + 0x4f0));
  *(undefined ***)(param_1 + 0x4f0) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0xc;
  CWnd::CWnd((CWnd *)(param_1 + 0x544));
  *(undefined ***)(param_1 + 0x544) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0xd;
  CWnd::CWnd((CWnd *)(param_1 + 0x598));
  *(undefined ***)(param_1 + 0x598) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0xe;
  CWnd::CWnd((CWnd *)(param_1 + 0x5ec));
  *(undefined ***)(param_1 + 0x5ec) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0xf;
  CWnd::CWnd((CWnd *)(param_1 + 0x640));
  *(undefined ***)(param_1 + 0x640) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x10;
  CWnd::CWnd((CWnd *)(param_1 + 0x694));
  *(undefined ***)(param_1 + 0x694) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x11;
  CWnd::CWnd((CWnd *)(param_1 + 0x6e8));
  *(undefined ***)(param_1 + 0x6e8) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x12;
  CWnd::CWnd((CWnd *)(param_1 + 0x73c));
  *(undefined ***)(param_1 + 0x73c) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x13;
  CWnd::CWnd((CWnd *)(param_1 + 0x790));
  *(undefined ***)(param_1 + 0x790) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x14;
  CWnd::CWnd((CWnd *)(param_1 + 0x7e4));
  *(undefined ***)(param_1 + 0x7e4) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x15;
  CWnd::CWnd((CWnd *)(param_1 + 0x838));
  *(undefined ***)(param_1 + 0x838) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x16;
  CWnd::CWnd((CWnd *)(param_1 + 0x88c));
  *(undefined ***)(param_1 + 0x88c) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x17;
  CWnd::CWnd((CWnd *)(param_1 + 0x8e0));
  *(undefined ***)(param_1 + 0x8e0) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x18;
  CWnd::CWnd((CWnd *)(param_1 + 0x934));
  *(undefined ***)(param_1 + 0x934) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x19;
  CWnd::CWnd((CWnd *)(param_1 + 0x988));
  *(undefined ***)(param_1 + 0x988) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x1a;
  CWnd::CWnd((CWnd *)(param_1 + 0x9dc));
  *(undefined ***)(param_1 + 0x9dc) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x1b;
  CWnd::CWnd((CWnd *)(param_1 + 0xa30));
  *(undefined ***)(param_1 + 0xa30) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x1c;
  CWnd::CWnd((CWnd *)(param_1 + 0xa84));
  *(undefined ***)(param_1 + 0xa84) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x1d;
  CWnd::CWnd((CWnd *)(param_1 + 0xad8));
  *(undefined ***)(param_1 + 0xad8) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x1e;
  CWnd::CWnd((CWnd *)(param_1 + 0xb2c));
  *(undefined ***)(param_1 + 0xb2c) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x1f;
  CWnd::CWnd((CWnd *)(param_1 + 0xb80));
  *(undefined ***)(param_1 + 0xb80) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x20;
  CWnd::CWnd((CWnd *)(param_1 + 0xbd4));
  *(undefined ***)(param_1 + 0xbd4) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x21;
  CWnd::CWnd((CWnd *)(param_1 + 0xc28));
  *(undefined ***)(param_1 + 0xc28) = &PTR_LAB_004129c8;
  local_4._0_1_ = 0x22;
  CWnd::CWnd((CWnd *)(param_1 + 0xc7c));
  *(undefined ***)(param_1 + 0xc7c) = &PTR_LAB_00412b08;
  local_4._0_1_ = 0x23;
  CWnd::CWnd((CWnd *)(param_1 + 0xcd0));
  *(undefined ***)(param_1 + 0xcd0) = &PTR_LAB_00412738;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd24));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd28));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd2c));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd3c));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd40));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd4c));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd50));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd54));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd58));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd60));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd64));
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xdc8));
  local_4 = CONCAT31(local_4._1_3_,0x30);
  *(undefined4 *)(param_1 + 0xdd8) = 0;
  *(undefined4 *)(param_1 + 0xddc) = 0;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd24),"");
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd28),"");
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd2c),"");
  *(undefined4 *)(param_1 + 0xd30) = 0;
  *(undefined4 *)(param_1 + 0xd34) = 0;
  *(undefined4 *)(param_1 + 0xd38) = 0;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd3c),"");
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd40),"");
  *(undefined4 *)(param_1 + 0xd48) = 0;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd4c),"");
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd50),"");
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd54),"");
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd58),"");
  *(undefined4 *)(param_1 + 0xd5c) = 0;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd60),"");
  *(undefined4 *)(param_1 + 0xd68) = 0;
  *(undefined4 *)(param_1 + 0xd6c) = 0;
  *(undefined4 *)(param_1 + 0xd70) = 0;
  *(undefined4 *)(param_1 + 0xd74) = 0;
  *(undefined4 *)(param_1 + 0xd78) = 0;
  *(undefined4 *)(param_1 + 0xd7c) = 0;
  *(undefined4 *)(param_1 + 0xd80) = 0;
  *(undefined4 *)(param_1 + 0xd84) = 0;
  *(undefined4 *)(param_1 + 0xd88) = 0;
  *(undefined4 *)(param_1 + 0xd8c) = 0;
  *(undefined4 *)(param_1 + 0xd90) = 0;
  *(undefined4 *)(param_1 + 0xd94) = 0;
  *(undefined4 *)(param_1 + 0xd98) = 0;
  *(undefined4 *)(param_1 + 0xd9c) = 0;
  *(undefined4 *)(param_1 + 0xda0) = 0;
  *(undefined4 *)(param_1 + 0xda4) = 0;
  *(undefined4 *)(param_1 + 0xda8) = 0;
  *(undefined4 *)(param_1 + 0xdac) = 0;
  *(undefined4 *)(param_1 + 0xdb0) = 0;
  *(undefined4 *)(param_1 + 0xdb4) = 0;
  *(undefined4 *)(param_1 + 0xdb8) = 0;
  *(undefined4 *)(param_1 + 0xdbc) = 0;
  *(undefined4 *)(param_1 + 0xdc0) = 0;
  *(undefined4 *)(param_1 + 0xdc4) = 0;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xdc8),"");
  *(undefined4 *)(param_1 + 0xdcc) = 0;
  *(undefined4 *)(param_1 + 0xdd0) = 0;
  AfxGetModuleState();
  lpIconName = (LPCSTR)0x80;
  hInstance = AfxFindResourceHandle((char *)0x80,(char *)0xe);
  pHVar1 = LoadIconA(hInstance,lpIconName);
  *(HICON *)(param_1 + 0xdd4) = pHVar1;
  ExceptionList = local_c;
  return param_1;
}

