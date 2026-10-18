/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00409950 */


CWnd * __fastcall FUN_00409950(CWnd *param_1)

{
  DWORD DVar1;
  
  CWnd::CWnd(param_1);
  *(undefined ***)param_1 = &PTR_LAB_004135c8;
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0x54));
  DVar1 = GetSysColor(5);
  *(DWORD *)(param_1 + 0x6c) = DVar1;
  DVar1 = GetSysColor(8);
  *(DWORD *)(param_1 + 0x70) = DVar1;
  *(undefined4 *)(param_1 + 0x68) = 0;
  *(undefined4 *)(param_1 + 0x58) = 0;
  *(undefined4 *)(param_1 + 0x5c) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x60) = 0xffffffff;
  *(undefined4 *)(param_1 + 100) = 1;
  return param_1;
}

