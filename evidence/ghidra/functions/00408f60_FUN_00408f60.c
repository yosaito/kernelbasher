/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00408f60 */


/* WARNING: Function: __chkstk replaced with injection: alloca_probe */

void __fastcall FUN_00408f60(CWnd *param_1)

{
  int iVar1;
  CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *pCVar2;
  CWnd *pCVar3;
  int iVar4;
  code *pcVar5;
  int iVar6;
  char *pcVar7;
  CFileDialog local_7ed8 [4];
  CFileDialog local_7ed4 [444];
  int aiStack_7d18 [8000];
  void *pvStack_18;
  int local_10;
  void *local_c;
  undefined1 *local_8;
  undefined4 local_4;
  
  local_4 = 0xffffffff;
  local_8 = &LAB_0041127f;
  local_c = ExceptionList;
  local_10 = 0x408f7f;
  iVar6 = 0;
  ExceptionList = &local_c;
  CFileDialog::CFileDialog
            (local_7ed4,1,(char *)0x0,(char *)0x0,0x1000,"Bios  (*.bin)|*.bin",param_1,0);
  local_4 = 0;
  DAT_00421500 = 0;
  iVar1 = CFileDialog::DoModal(local_7ed4);
  if (iVar1 == 1) {
    remove("c:\\temp\\2bl.img");
    remove("c:\\temp\\remainder.img");
    remove("c:\\temp\\xboxkrnl.img");
    remove("c:\\temp\\xboxkrnl.img.bak");
    remove("c:\\temp\\output.img");
    pCVar2 = (CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *)
             CFileDialog::GetFileTitle(local_7ed4);
    local_8._0_1_ = 1;
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd58),
               pCVar2);
    local_8 = (undefined1 *)((uint)local_8._1_3_ << 8);
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
    ~CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&stack0xffff8124);
    pCVar2 = (CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *)
             CFileDialog::GetFileName(local_7ed8);
    local_c._0_1_ = 2;
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&DAT_00421510,pCVar2
              );
    local_c = (void *)((uint)local_c._1_3_ << 8);
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
    ~CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&stack0xffff8120);
    iVar1 = ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::Compare
                      ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)
                       (param_1 + 0xd58),"bashed");
    if (iVar1 == 0) {
      CWnd::MessageBoxA(param_1,"READ README.TXT, DO NOT PUT BASHED.BIN BACK THROUGH PROGRAM",
                        "You Fucked up buddy",0);
      iVar1 = 0;
      pCVar3 = CWnd::GetDlgItem(param_1,1000);
      CWnd::EnableWindow(pCVar3,iVar1);
      goto LAB_00409885;
    }
    pCVar2 = (CStringT<char,class_StrTraitMFC_DLL<char,class_ATL::ChTraitsCRT<char>_>_> *)
             CFileDialog::GetPathName((CFileDialog *)&stack0xffff8124);
    local_10._0_1_ = 3;
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&DAT_00421504,pCVar2
              );
    local_10 = (uint)local_10._1_3_ << 8;
    ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
    ~CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
              ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)&stack0xffff811c);
    DAT_0041fee0 = fopen(DAT_00421504,"r");
    fseek(DAT_0041fee0,0,0);
    iVar1 = 0;
    do {
      iVar4 = fgetc(DAT_0041fee0);
      iVar6 = iVar6 + iVar4;
      aiStack_7d18[iVar1] = iVar4;
      iVar1 = iVar1 + 1;
    } while (iVar1 < 8000);
    if (iVar6 == 0x516c1) {
      pcVar7 = "Xecuter 4983.06";
LAB_0040912f:
      ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
                ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0xd60),
                 pcVar7);
      DAT_00421500 = 2;
    }
    else {
      if (iVar6 == 0x5160d) {
        pcVar7 = "Xecuter 4983.67";
        goto LAB_0040912f;
      }
      if (iVar6 == 0x501f9) {
        ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
                  ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)
                   (param_1 + 0xd60),"Xecuter 4981");
        DAT_00421500 = 1;
      }
      else if (iVar6 == 0x4a03a) {
        ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
                  ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)
                   (param_1 + 0xd60),"Evox M8 1.6");
        DAT_00421500 = 2;
        pcVar7 = "Evox M8 1.6";
LAB_0040919c:
        ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
                  ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)
                   (param_1 + 0xd60),pcVar7);
        DAT_00421500 = 4;
      }
      else if (iVar6 == 0x4fab7) {
        ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
                  ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)
                   (param_1 + 0xd60),"Evox M7");
        DAT_00421500 = 3;
      }
      else {
        if (iVar6 == 0x4a0c2) {
          pcVar7 = "Evox M8";
          goto LAB_0040919c;
        }
        if (DAT_00421500 == 0) {
          ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::operator=
                    ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)
                     (param_1 + 0xd60),"Unknown");
          CWnd::UpdateData(param_1,0);
          iVar1 = 0;
          pCVar3 = CWnd::GetDlgItem(param_1,1000);
          CWnd::EnableWindow(pCVar3,iVar1);
          CWnd::UpdateData(param_1,0);
          goto LAB_00409885;
        }
      }
    }
    iVar1 = 1;
    pCVar3 = CWnd::GetDlgItem(param_1,1000);
    CWnd::EnableWindow(pCVar3,iVar1);
    pcVar5 = fopen_exref;
    if (DAT_00421500 == 4) {
      DAT_004214f4 = DAT_00421504;
      unpack(DAT_00421504,s_c__temp_xboxkrnl_img_00419698);
      pcVar5 = fopen_exref;
      DAT_0041fee8 = (int)fopen(s_c__temp_xboxkrnl_img_00419698,"rb");
      if ((FILE *)DAT_0041fee8 == (FILE *)0x0) {
        CWnd::MessageBoxA(param_1,"ErRor",(char *)0x0,0);
        goto LAB_00409885;
      }
      DAT_004214f0 = (int)fopen(s_c__temp_output_img_004196d0,"wb");
      iVar1 = 0;
      if ((FILE *)DAT_004214f0 != (FILE *)0x0) {
        pCVar3 = CWnd::GetDlgItem(param_1,0x3f2);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 0;
        pCVar3 = CWnd::GetDlgItem(param_1,0x3f4);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13be);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13bf);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13c0);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13ac);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13ad);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13ae);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a1);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x139b);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a0);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a2);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a3);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a4);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13c4);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13c5);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13c6);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13b4);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13b5);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13b6);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13b7);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13bc);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x3f6);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13d7);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,5000);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x3ee);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13e7);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 0;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13e6);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13df);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13e0);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13e5);
        CWnd::EnableWindow(pCVar3,iVar1);
        if (DAT_00421500 != 4) goto LAB_00409558;
LAB_00409868:
        FUN_00402420();
        CWnd::UpdateData(param_1,0);
        goto LAB_00409876;
      }
    }
    else {
LAB_00409558:
      iVar1 = xb_unpack(DAT_00421504,"c:\\temp");
      if (iVar1 == 0) {
        CWnd::MessageBoxA(param_1,"Could not open bios.bin","You Fucked up Buddy",0);
        goto LAB_00409885;
      }
      DAT_0041fee8 = (*pcVar5)("c:\\temp\\xboxkrnl.img",&DAT_004130d0);
      if (DAT_0041fee8 == 0) {
        CWnd::MessageBoxA(param_1,"Error: Problem Extracting M8 Kernel",(char *)0x0,0);
        goto LAB_00409885;
      }
      DAT_004214f0 = (*pcVar5)("c:\\temp\\output.img",&DAT_004130a0);
      if (DAT_004214f0 != 0) {
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x3f2);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x3f4);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13be);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13bf);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13c0);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13ac);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13ad);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13ae);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a1);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x139b);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a0);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a2);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a3);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13a4);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13c4);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13c5);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13c6);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13b4);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13b5);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13b6);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13b7);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13bc);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x3f6);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13d7);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,5000);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x3ee);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13e7);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13e6);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13df);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13e0);
        CWnd::EnableWindow(pCVar3,iVar1);
        iVar1 = 1;
        pCVar3 = CWnd::GetDlgItem(param_1,0x13e5);
        CWnd::EnableWindow(pCVar3,iVar1);
        goto LAB_00409868;
      }
    }
    CWnd::MessageBoxA(param_1,"Cannot create temporary file",(char *)0x0,0);
  }
  else {
LAB_00409876:
    fclose(DAT_0041fee0);
  }
LAB_00409885:
  local_10 = 0xffffffff;
  CFileDialog::~CFileDialog((CFileDialog *)&stack0xffff8120);
  ExceptionList = pvStack_18;
  return;
}

