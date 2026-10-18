/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 004021a0 */


int FUN_004021a0(void)

{
  int iVar1;
  long lVar2;
  undefined4 *puVar3;
  int local_4;
  
  local_4 = 0;
  fseek(DAT_0041efdc,DAT_0041fe84,0);
  iVar1 = fgetc(DAT_0041efdc);
  while( true ) {
    if (iVar1 == -1) {
      return 1;
    }
    if ((iVar1 == 0x3b) && (iVar1 = fgetc(DAT_0041efdc), iVar1 == 10)) break;
    iVar1 = fgetc(DAT_0041efdc);
  }
  iVar1 = fgetc(DAT_0041efdc);
  puVar3 = &DAT_0041ff48;
  do {
    if ((iVar1 == 0x33) && (iVar1 = fgetc(DAT_0041efdc), iVar1 == 0x3b)) {
      fscanf(DAT_0041efdc,"%d",puVar3);
      local_4 = local_4 + 1;
      puVar3 = puVar3 + 1;
    }
    fgetc(DAT_0041efdc);
    fscanf(DAT_0041efdc,"%d",puVar3);
    iVar1 = fgetc(DAT_0041efdc);
    fscanf(DAT_0041efdc,"%d",puVar3 + 1);
    local_4 = local_4 + 2;
    puVar3 = puVar3 + 2;
    if (iVar1 == 0x2c) {
      iVar1 = fgetc(DAT_0041efdc);
      if (iVar1 == 0x3b) {
        iVar1 = fgetc(DAT_0041efdc);
        if ((iVar1 == 0x2c) && (iVar1 = fgetc(DAT_0041efdc), iVar1 == 10)) {
          iVar1 = fgetc(DAT_0041efdc);
        }
        goto LAB_004022e9;
      }
    }
    else {
LAB_004022e9:
      if (iVar1 == 0x3b) {
        iVar1 = fgetc(DAT_0041efdc);
        if (iVar1 == 10) {
          DAT_0041e980 = local_4 / 3;
          printf("Ind Count %d\n",DAT_0041e980);
          return DAT_0041e980;
        }
        lVar2 = ftell(DAT_0041efdc);
        fseek(DAT_0041efdc,lVar2 + -1,0);
      }
    }
    if (0x420680 < (int)puVar3) {
      printf("To Many Inds\n");
      return 1;
    }
  } while( true );
}

