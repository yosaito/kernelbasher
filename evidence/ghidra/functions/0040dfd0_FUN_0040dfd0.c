/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040dfd0 */


undefined1 FUN_0040dfd0(ushort *param_1,int param_2,uint param_3)

{
  int iVar1;
  ushort *puVar2;
  ushort *local_28;
  undefined4 local_24;
  undefined1 local_1d;
  undefined4 local_1c;
  undefined4 local_18;
  uint local_14;
  undefined1 local_10 [4];
  undefined4 local_c;
  int local_8;
  
  local_1d = 0;
  local_18 = 1;
  local_1c = 0x20000;
  local_24 = 0x8000;
  FUN_0040e250(&local_24,&local_1c,FUN_0040df90,FUN_0040dfb0,local_10,&local_c,0,0,0,0,0);
  local_28 = param_1;
  local_8 = param_2;
  do {
    local_14 = (uint)local_28[1];
    iVar1 = FUN_0040e350(local_c,local_28 + 2,*local_28,local_8,&local_14);
    if (iVar1 != 0) goto LAB_0040e091;
    puVar2 = (ushort *)((uint)*local_28 + (int)(local_28 + 2));
    local_8 = (uint)local_28[1] + local_8;
    local_28 = puVar2;
  } while ((uint)((int)puVar2 - (int)param_1) < param_3);
  local_1d = 1;
LAB_0040e091:
  FUN_0040e3d0(local_c);
  return local_1d;
}

