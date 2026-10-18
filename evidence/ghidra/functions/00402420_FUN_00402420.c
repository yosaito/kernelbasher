/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00402420 */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00402420(void)

{
  int iVar1;
  long lVar2;
  
  DAT_0041fef8 = -1;
  DAT_0041fefc = -1;
  DAT_0041ff00 = -1;
  DAT_0041ff04 = -1;
  DAT_0041ff08 = -1;
  DAT_0041ff0c = -1;
  DAT_0041ff10 = -1;
  DAT_0041ff14 = -1;
  DAT_0041ff18 = -1;
  DAT_0041ff1c = -1;
  DAT_0041ff20 = -1;
  DAT_0041ff24 = -1;
  DAT_0041ff28 = -1;
  DAT_0041ff2c = -1;
  DAT_0041ff30 = -1;
  DAT_0041ff34 = -1;
  DAT_0041ff38 = -1;
  DAT_0041ff3c = -1;
  DAT_0041ff40 = -1;
  _DAT_0041ff44 = -1;
  DAT_0041ff48 = 0xffffffff;
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if ((((iVar1 == 0x80) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x10)) &&
        (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x32)) &&
       ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x54 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x76))
       )) {
      DAT_0041fef8 = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((iVar1 == 0) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
       ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xc1 &&
        (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xe0 &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x18)) &&
         (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xd)))))) {
      DAT_0041fefc = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((iVar1 == 0x46) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x1c)) &&
       (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 6 &&
         ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0))))
        && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))) {
      DAT_0041ff00 = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  if (DAT_00421500 == 4) {
    fseek(DAT_0041fee8,0,0);
    iVar1 = fgetc(DAT_0041fee8);
    while (iVar1 != -1) {
      if ((((iVar1 == 0x2f) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xfe)) &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xff)) &&
         ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xd9 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 5)))
         ) {
        lVar2 = ftell(DAT_0041fee8);
        DAT_0041ff04 = lVar2 + -2;
      }
      iVar1 = fgetc(DAT_0041fee8);
    }
    if (DAT_00421500 == 4) goto LAB_00402792;
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((iVar1 == 0x2e) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xfe)) &&
       ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xff &&
        ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xd9 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 5))))
       )) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff04 = lVar2 + -2;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
LAB_00402792:
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if ((((iVar1 == 0x6a) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xff)) &&
        (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xdd)) &&
       (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xd8)) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff24 = lVar2 + -3;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if ((((iVar1 == 0x30) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x7c)) &&
        ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xc0 &&
         ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x6a &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xff)))))) &&
       (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x68)) {
      DAT_0041ff08 = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if ((((iVar1 == 0xfe) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xff)) &&
        (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x68)) &&
       ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff0c = lVar2 + -2;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((iVar1 == 0xfe) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xff)) &&
       ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x8b &&
        ((((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x45 &&
           (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x6c)) &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xff)) &&
         ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x70 &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x24)))))))) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff10 = lVar2 + -3;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((iVar1 == 0x6c) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x8b)) &&
       ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x45 &&
        ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x6c && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xd))
        )))) {
      DAT_0041ff14 = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if ((((iVar1 == 0x53) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x51)) &&
        (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xd9)) &&
       (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x1c && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x24)
         ) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xbf)))) {
      DAT_0041ff18 = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((iVar1 == 0x80) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x7c)) &&
       (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xe6)) {
      DAT_0041ff1c = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if ((((iVar1 == 0xd) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x40)) &&
        (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xff)) &&
       (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xa0)) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff20 = lVar2 + -3;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((iVar1 == 0) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
       (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x66 &&
         ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x66 &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x36)))) &&
        (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x41)))) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff28 = lVar2 + -8;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((((((iVar1 == 0) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
           (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
          ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xff))
          )) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xeb)) &&
        ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xb && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x57))
        )) && ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xe8 &&
               (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x11)))) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff2c = lVar2 + -9;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((((iVar1 == 0) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 1)) &&
         (iVar1 = fgetc(DAT_0041fee8), iVar1 == 1)) &&
        (((((iVar1 = fgetc(DAT_0041fee8), iVar1 == 1 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xfd)
            ) && ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 2 &&
                  ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
                   (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))))) &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
         (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))))) &&
       (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x48)) {
      DAT_0041ff30 = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((iVar1 == 0x55) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x8b)) &&
       (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xec &&
         ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x83 &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xec)))) &&
        ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x68 &&
         (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x8b &&
           (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x55)) &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 8)))))))) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff34 = lVar2 + -3;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if ((((((iVar1 == 0x80) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x42)) &&
          ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
           ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0))))
          )) && ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
                 (((((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
                     (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
                    (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x80)) &&
                   ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x3f &&
                    (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))) &&
                  ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
                   ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
                    (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))))))))) &&
        (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
       (((((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
         ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0))))
        && (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
             ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 2))
             )) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x1b)))))) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff38 = lVar2 + -2;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if ((((iVar1 == 0x2d) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xc2)) &&
        (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x59)) &&
       (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xc2 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0))
        && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))) {
      lVar2 = ftell(DAT_0041fee8);
      DAT_0041ff3c = lVar2 + -2;
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((((iVar1 == 0x40) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0xc1)) &&
         ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
          ((((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0))
            && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
           ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0))))
          )))) && (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
                    ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
                     (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))) &&
                   ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
                    (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 &&
                      (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
                     (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))))))) &&
       (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0 && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
        (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)))) {
      DAT_0041ff40 = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  fseek(DAT_0041fee8,0,0);
  iVar1 = fgetc(DAT_0041fee8);
  while (iVar1 != -1) {
    if (((iVar1 == 0) && (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0)) &&
       ((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x66 &&
        (((iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x66 &&
          (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x36)) &&
         (iVar1 = fgetc(DAT_0041fee8), iVar1 == 0x41)))))) {
      _DAT_0041ff44 = ftell(DAT_0041fee8);
    }
    iVar1 = fgetc(DAT_0041fee8);
  }
  return;
}

