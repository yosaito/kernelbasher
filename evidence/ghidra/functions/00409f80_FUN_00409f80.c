/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00409f80 */


char * FUN_00409f80(char *param_1)

{
  int iVar1;
  char *local_c;
  int local_8;
  
  local_c = (char *)(DAT_0042151c + 0x18 + (uint)*(ushort *)(DAT_0042151c + 0x14));
  local_8 = 0;
  while( true ) {
    if ((int)(uint)*(ushort *)(DAT_0042151c + 6) <= local_8) {
      return (char *)0x0;
    }
    iVar1 = strncmp(local_c,param_1,8);
    if (iVar1 == 0) break;
    local_c = local_c + 0x28;
    local_8 = local_8 + 1;
  }
  return local_c;
}

