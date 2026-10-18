/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004099e0 */


void __thiscall FUN_004099e0(int param_1,int param_2,int param_3)

{
  CGdiObject *this;
  undefined4 *puVar1;
  HFONT pHVar2;
  LOGFONTA LStack_3c;
  
  if (*(int **)(param_1 + 0x68) != (int *)0x0) {
    (**(code **)(**(int **)(param_1 + 0x68) + 4))(1);
  }
  puVar1 = operator_new(8);
  if (puVar1 == (undefined4 *)0x0) {
    puVar1 = (undefined4 *)0x0;
  }
  else {
    puVar1[1] = 0;
    *puVar1 = &PTR_LAB_0041371c;
  }
  *(undefined4 **)(param_1 + 0x68) = puVar1;
  GetObjectA(*(HANDLE *)(param_2 + 4),0x3c,&LStack_3c);
  this = *(CGdiObject **)(param_1 + 0x68);
  pHVar2 = CreateFontIndirectA(&LStack_3c);
  CGdiObject::Attach(this,pHVar2);
  if (param_3 != 0) {
    RedrawWindow(*(HWND *)(param_1 + 0x20),(RECT *)0x0,(HRGN)0x0,0x105);
  }
  return;
}

