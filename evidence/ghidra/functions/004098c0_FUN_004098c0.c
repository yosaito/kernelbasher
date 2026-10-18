/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004098c0 */


void __fastcall FUN_004098c0(CStatic *param_1)

{
  void *pvStack_c;
  undefined1 *puStack_8;
  undefined4 local_4;
  
  puStack_8 = &LAB_004112a4;
  pvStack_c = ExceptionList;
  ExceptionList = &pvStack_c;
  *(undefined ***)param_1 = &PTR_LAB_004135c8;
  local_4 = 1;
  if (*(int **)(param_1 + 0x68) != (int *)0x0) {
    (**(code **)(**(int **)(param_1 + 0x68) + 4))(1);
  }
  ATL::CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>::
  ~CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_>
            ((CStringT<char,StrTraitMFC_DLL<char,ATL::ChTraitsCRT<char>_>_> *)(param_1 + 0x54));
  local_4 = 0xffffffff;
  CStatic::~CStatic(param_1);
  ExceptionList = pvStack_c;
  return;
}

