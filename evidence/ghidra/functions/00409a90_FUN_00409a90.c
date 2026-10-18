/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00409a90 */


void __fastcall FUN_00409a90(CWnd *param_1)

{
  int iVar1;
  HDC pHVar2;
  HBITMAP pHVar3;
  void *pvVar4;
  CGdiObject *pCVar5;
  int bottom;
  int left;
  int right;
  undefined4 uVar6;
  int local_c4;
  HDC local_c0;
  tagRECT local_b4;
  undefined **local_a4;
  HGDIOBJ local_a0;
  int local_9c;
  undefined **local_98 [2];
  undefined **local_90 [2];
  POINT local_88;
  int local_80;
  int local_7c;
  int local_78;
  int local_74;
  int local_6c;
  CPaintDC local_60 [4];
  HDC local_5c;
  void *pvStack_c;
  undefined1 *puStack_8;
  int local_4;
  
  local_4 = 0xffffffff;
  puStack_8 = &LAB_004112e4;
  pvStack_c = ExceptionList;
  ExceptionList = &pvStack_c;
  CPaintDC::CPaintDC(local_60,param_1);
  local_4 = 0;
  GetClientRect(*(HWND *)(param_1 + 0x20),&local_b4);
  if (*(int *)(param_1 + 0x5c) < 0) {
    *(LONG *)(param_1 + 0x5c) = local_b4.right + -0x28;
  }
  if (*(int *)(param_1 + 0x60) < 0) {
    *(LONG *)(param_1 + 0x60) = local_b4.bottom + -0x14;
  }
  local_6c = local_b4.bottom / 2 - *(int *)(param_1 + 0x60) / 2;
  left = local_b4.right / 2 - *(int *)(param_1 + 0x5c) / 2;
  right = local_b4.right / 2 + *(int *)(param_1 + 0x5c) / 2;
  bottom = *(int *)(param_1 + 0x60) / 2 + local_b4.bottom / 2;
  CDC::CDC((CDC *)&local_c4);
  local_4._0_1_ = 1;
  pHVar2 = CreateCompatibleDC(local_5c);
  CDC::Attach((CDC *)&local_c4,pHVar2);
  local_9c = CDC::SaveDC((CDC *)&local_c4);
  local_a0 = (HGDIOBJ)0x0;
  local_a4 = &PTR_LAB_00413730;
  local_4 = CONCAT31(local_4._1_3_,2);
  pHVar3 = CreateCompatibleBitmap
                     (local_5c,local_b4.right - local_b4.left,local_b4.bottom - local_b4.top);
  CGdiObject::Attach((CGdiObject *)&local_a4,pHVar3);
  if (local_a0 != (HGDIOBJ)0x0) {
    SelectObject(local_c0,local_a0);
  }
  CPen::CPen((CPen *)local_98,0,1,*(ulong *)(param_1 + 0x70));
  local_4._0_1_ = 3;
  CDC::SelectObject((CDC *)&local_c4,(CPen *)local_98);
  CBrush::CBrush((CBrush *)local_90,*(ulong *)(param_1 + 0x70));
  local_4 = CONCAT31(local_4._1_3_,4);
  CDC::SelectObject((CDC *)&local_c4,(CBrush *)local_90);
  CDC::FillSolidRect((CDC *)&local_c4,&local_b4,*(ulong *)(param_1 + 0x6c));
  if (*(int *)(param_1 + 100) == 0) {
    iVar1 = *(int *)(param_1 + 0x58);
    if (iVar1 == 0) {
      Rectangle(local_c0,left,local_6c,right,bottom);
    }
    else if (iVar1 == 1) {
      local_80 = (right - left) / 2 + left;
      local_7c = local_6c;
      local_88.x = left;
      local_88.y = bottom;
      local_78 = right;
      local_74 = bottom;
      Polygon(local_c0,&local_88,3);
    }
    else if (iVar1 == 2) {
      Ellipse(local_c0,left,local_6c,right,bottom);
    }
  }
  else {
    if (*(int *)(param_1 + 0x68) == 0) {
      pvVar4 = (void *)SendMessageA(*(HWND *)(param_1 + 0x20),0x31,0,0);
      uVar6 = 0;
      pCVar5 = CGdiObject::FromHandle(pvVar4);
      FUN_004099e0(pCVar5,uVar6);
    }
    if (*(CFont **)(param_1 + 0x68) != (CFont *)0x0) {
      CDC::SelectObject((CDC *)&local_c4,*(CFont **)(param_1 + 0x68));
    }
    CDC::SetTextColor((CDC *)&local_c4,*(ulong *)(param_1 + 0x70));
    CDC::SetBkColor((CDC *)&local_c4,*(ulong *)(param_1 + 0x6c));
    (**(code **)(local_c4 + 0x70))
              (*(int *)(param_1 + 0x54),*(undefined4 *)(*(int *)(param_1 + 0x54) + -0xc),&local_b4,
               0x25);
  }
  BitBlt(local_5c,0,0,local_b4.right - local_b4.left,local_b4.bottom - local_b4.top,local_c0,0,0,
         0xcc0020);
  CDC::RestoreDC((CDC *)&local_c4,local_9c);
  local_4._0_1_ = 3;
  local_90[0] = &PTR_LAB_00413708;
  CGdiObject::DeleteObject((CGdiObject *)local_90);
  local_4._0_1_ = 2;
  local_98[0] = &PTR_LAB_00413708;
  CGdiObject::DeleteObject((CGdiObject *)local_98);
  local_4._0_1_ = 1;
  local_a4 = &PTR_LAB_00413708;
  CGdiObject::DeleteObject((CGdiObject *)&local_a4);
  local_4 = (uint)local_4._1_3_ << 8;
  CDC::~CDC((CDC *)&local_c4);
  local_4 = 0xffffffff;
  CPaintDC::~CPaintDC(local_60);
  ExceptionList = pvStack_c;
  return;
}

