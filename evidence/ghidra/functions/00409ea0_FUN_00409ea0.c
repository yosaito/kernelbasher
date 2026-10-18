/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00409ea0 */


undefined1 FUN_00409ea0(int param_1,undefined4 param_2,uint param_3)

{
  uint local_2c;
  int local_28;
  undefined4 local_24;
  undefined1 local_1d;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  
  local_c = 0;
  local_1d = 0;
  local_10 = 1;
  local_18 = 1;
  local_1c = 0x20000;
  local_24 = 0x8000;
  FUN_0040a380(&local_24,&local_1c,FUN_00409dc0,FUN_00409de0,&local_14,&local_c,FUN_00409e00,0);
  local_28 = param_1;
  local_8 = param_2;
  do {
    if (param_3 < 0x8001) {
      local_2c = param_3;
    }
    else {
      local_2c = 0x8000;
    }
    local_10 = 0;
    FUN_0040a440(local_c,local_28,local_2c,0,local_14,&local_10);
    local_28 = local_28 + local_2c;
    param_3 = param_3 - local_2c;
  } while (param_3 != 0);
  local_1d = 1;
  FUN_0040a4d0(local_c);
  FUN_0040a500(local_c);
  return local_1d;
}

