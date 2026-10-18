/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00401fa0 */


int FUN_00401fa0(void)

{
  int iVar1;
  float *pfVar2;
  undefined4 *puVar3;
  int local_c;
  
  puVar3 = &DAT_0041e230;
  for (iVar1 = 0x1d5; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar3 = 0;
    puVar3 = puVar3 + 1;
  }
  iVar1 = fgetc(DAT_0041efdc);
  if (iVar1 == -1) {
    return 1;
  }
  while ((((iVar1 != 0x4d || (iVar1 = fgetc(DAT_0041efdc), iVar1 != 0x65)) ||
          (iVar1 = fgetc(DAT_0041efdc), iVar1 != 0x73)) ||
         (iVar1 = fgetc(DAT_0041efdc), iVar1 != 0x68))) {
    iVar1 = fgetc(DAT_0041efdc);
    if (iVar1 == -1) {
      return 1;
    }
  }
  do {
    iVar1 = fgetc(DAT_0041efdc);
  } while (iVar1 != 0x3b);
  fgetc(DAT_0041efdc);
  local_c = 0;
  pfVar2 = (float *)&DAT_0041e230;
  do {
    printf("3CURRENT %x\n");
    fscanf(DAT_0041efdc,"%f",pfVar2);
    printf("%f\n",(double)*pfVar2);
    getchar();
    iVar1 = fgetc(DAT_0041efdc);
    if (iVar1 == 0x3b) {
      printf("if 3B %x\n");
      iVar1 = fgetc(DAT_0041efdc);
      if (iVar1 == 0x2d) {
        iVar1 = ftell(DAT_0041efdc);
      }
      else {
        if (iVar1 == 0x2c) {
          iVar1 = fgetc(DAT_0041efdc);
        }
        if (iVar1 != 0x3b) goto LAB_00402123;
        iVar1 = fgetc(DAT_0041efdc);
        if (iVar1 == 10) {
          DAT_0041e984 = (local_c + 1) / 3;
          printf("Vert Count %d\n");
          DAT_0041fe84 = ftell(DAT_0041efdc);
          return DAT_0041e984;
        }
        iVar1 = ftell(DAT_0041efdc);
      }
      fseek(DAT_0041efdc,iVar1 + -1,0);
    }
LAB_00402123:
    local_c = local_c + 1;
    pfVar2 = pfVar2 + 1;
    if (0x41e97f < (int)pfVar2) {
      printf("To many verts\n");
      return 1;
    }
  } while( true );
}

