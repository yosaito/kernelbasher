/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004099c0 */


void __thiscall FUN_004099c0(int param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 0x6c) = param_2;
  RedrawWindow(*(HWND *)(param_1 + 0x20),(RECT *)0x0,(HRGN)0x0,0x105);
  return;
}

