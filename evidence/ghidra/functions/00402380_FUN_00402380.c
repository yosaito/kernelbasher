/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 00402380 */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_00402380(void)

{
  short sVar1;
  int *piVar2;
  short *psVar3;
  
  psVar3 = &DAT_0041e990;
  piVar2 = &DAT_0041efe4;
  do {
    sVar1 = FUN_004106f4();
    *psVar3 = sVar1;
    piVar2[-1] = (int)(char)sVar1;
    *piVar2 = (int)(char)((ushort)sVar1 >> 8);
    piVar2[1] = (int)(char)(sVar1 >> 0xf);
    piVar2[2] = (int)(char)(sVar1 >> 0xf);
    piVar2 = piVar2 + 2;
    psVar3 = psVar3 + 1;
  } while ((int)piVar2 < 0x41fe85);
  piVar2 = &DAT_004214f0;
  do {
    *piVar2 = *piVar2 - piVar2[-1];
    piVar2 = piVar2 + -1;
  } while (0x41ff4b < (int)piVar2);
  DAT_0041fee4 = DAT_0041ff48;
  return 0;
}

