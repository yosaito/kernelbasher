
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall OnVScroll(CWnd *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  LRESULT LVar1;
  
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0xbf4),0x400,0,0);
  *(int *)(param_1 + 0xd70) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0xc48),0x400,0,0);
  *(int *)(param_1 + 0xd6c) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0xba0),0x400,0,0);
  *(int *)(param_1 + 0xd68) = 0xff - LVar1;
  FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar1),param_1[0xd6c]),param_1[0xd70]));
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x954),0x400,0,0);
  *(int *)(param_1 + 0xd7c) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x9a8),0x400,0,0);
  *(int *)(param_1 + 0xd78) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x9fc),0x400,0,0);
  *(int *)(param_1 + 0xd74) = 0xff - LVar1;
  FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar1),param_1[0xd78]),param_1[0xd7c]));
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x75c),0x400,0,0);
  *(int *)(param_1 + 0xda4) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x7b0),0x400,0,0);
  *(int *)(param_1 + 0xda0) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x804),0x400,0,0);
  *(int *)(param_1 + 0xd9c) = 0xff - LVar1;
  FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar1),param_1[0xda0]),param_1[0xda4]));
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x858),0x400,0,0);
  *(int *)(param_1 + 0xd88) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x8ac),0x400,0,0);
  *(int *)(param_1 + 0xd84) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x900),0x400,0,0);
  *(int *)(param_1 + 0xd80) = 0xff - LVar1;
  FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar1),param_1[0xd84]),param_1[0xd88]));
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0xa50),0x400,0,0);
  *(int *)(param_1 + 0xd98) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0xaa4),0x400,0,0);
  *(int *)(param_1 + 0xd94) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0xaf8),0x400,0,0);
  *(int *)(param_1 + 0xd90) = 0xff - LVar1;
  FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar1),param_1[0xd94]),param_1[0xd98]));
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x60c),0x400,0,0);
  *(int *)(param_1 + 0xdb4) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x660),0x400,0,0);
  *(int *)(param_1 + 0xdb0) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x6b4),0x400,0,0);
  *(int *)(param_1 + 0xdac) = 0xff - LVar1;
  FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar1),param_1[0xdb0]),param_1[0xdb4]));
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x708),0x400,0,0);
  *(int *)(param_1 + 0xda8) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x5b8),0x400,0,0);
  *(float *)(param_1 + 0xdcc) = (float)(0xff - LVar1) * _DAT_00413080;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x4bc),0x400,0,0);
  *(int *)(param_1 + 0xdc0) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x510),0x400,0,0);
  *(int *)(param_1 + 0xdbc) = 0xff - LVar1;
  LVar1 = SendMessageA(*(HWND *)(param_1 + 0x564),0x400,0,0);
  *(int *)(param_1 + 0xdb8) = 0xff - LVar1;
  FUN_004099c0((uint)CONCAT21(CONCAT11((char)(0xff - LVar1),param_1[0xdbc]),param_1[0xdc0]));
  CWnd::UpdateData(param_1,0);
  func_0x0041051a(param_2,param_3,param_4);
  return;
}

