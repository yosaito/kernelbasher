/* Machine-generated Ghidra pseudocode. Not original source; types and behavior are not fully validated.
 * Program: KernelBasher.exe; VA: 0040cb10 */


void FUN_0040cb10(int param_1,uint param_2)

{
  int iVar1;
  char *pcVar2;
  byte bVar3;
  char cVar4;
  undefined1 *puVar5;
  byte bVar6;
  uint uVar7;
  uint uVar8;
  byte bVar9;
  uint local_c;
  uint local_8;
  int local_4;
  
  local_c = 0;
  if (param_2 != 0) {
    local_4 = 0;
    do {
      if ((1 << ((byte)local_c & 7) & (uint)*(byte *)((local_c >> 3) + *(int *)(param_1 + 0x34))) ==
          0) {
        uVar7 = (uint)*(byte *)(*(int *)(param_1 + 0x30) + local_c);
        pcVar2 = (char *)(uVar7 + 0x2540 + param_1);
        *(uint *)(param_1 + 0x14) =
             *(uint *)(param_1 + 0x14) |
             (uint)*(ushort *)(param_1 + 0x33e8 + uVar7 * 2) <<
             (*(char *)(param_1 + 0x18) - *pcVar2 & 0x1fU);
        cVar4 = *(char *)(param_1 + 0x18) - *pcVar2;
        *(char *)(param_1 + 0x18) = cVar4;
        while (cVar4 < '\x11') {
          if (*(uint *)(param_1 + 0x864) <= *(uint *)(param_1 + 0x860)) {
            *(undefined4 *)(param_1 + 0x1c) = 1;
            *(undefined4 *)(param_1 + 0x860) = *(undefined4 *)(param_1 + 0x85c);
          }
          **(undefined1 **)(param_1 + 0x860) = (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x10)
          ;
          puVar5 = (undefined1 *)(*(int *)(param_1 + 0x860) + 1);
          *(undefined1 **)(param_1 + 0x860) = puVar5;
          *puVar5 = (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x18);
          cVar4 = *(char *)(param_1 + 0x18) + '\x10';
          *(int *)(param_1 + 0x860) = *(int *)(param_1 + 0x860) + 1;
          *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) << 0x10;
          *(char *)(param_1 + 0x18) = cVar4;
        }
        *(int *)(param_1 + 0x868) = *(int *)(param_1 + 0x868) + 1;
      }
      else {
        bVar3 = *(byte *)(*(int *)(param_1 + 0x30) + local_c);
        uVar7 = *(uint *)(*(int *)(param_1 + 0x2c) + local_4);
        if (uVar7 < 0x400) {
          bVar9 = *(byte *)(param_1 + 0x45c + uVar7);
        }
        else if (uVar7 < 0x80000) {
          bVar9 = *(char *)((uVar7 >> 9) + 0x45c + param_1) + 0x12;
        }
        else {
          bVar9 = (char)(uVar7 >> 0x11) + 0x22;
        }
        if (bVar3 < 7) {
          iVar1 = (uint)bVar3 + (uint)bVar9 * 8;
          local_8 = (uint)*(ushort *)(param_1 + 0x35e8 + iVar1 * 2);
          *(uint *)(param_1 + 0x14) =
               *(uint *)(param_1 + 0x14) |
               local_8 << (*(char *)(param_1 + 0x18) - *(char *)(iVar1 + 0x2640 + param_1) & 0x1fU);
          cVar4 = *(char *)(param_1 + 0x18) - *(char *)(iVar1 + 0x2640 + param_1);
          *(char *)(param_1 + 0x18) = cVar4;
          while (cVar4 < '\x11') {
            if (*(uint *)(param_1 + 0x864) <= *(uint *)(param_1 + 0x860)) {
              *(undefined4 *)(param_1 + 0x1c) = 1;
              *(undefined4 *)(param_1 + 0x860) = *(undefined4 *)(param_1 + 0x85c);
            }
            **(undefined1 **)(param_1 + 0x860) =
                 (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x10);
            puVar5 = (undefined1 *)(*(int *)(param_1 + 0x860) + 1);
            *(undefined1 **)(param_1 + 0x860) = puVar5;
            *puVar5 = (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x18);
            cVar4 = *(char *)(param_1 + 0x18) + '\x10';
            *(int *)(param_1 + 0x860) = *(int *)(param_1 + 0x860) + 1;
            *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) << 0x10;
            *(char *)(param_1 + 0x18) = cVar4;
          }
        }
        else {
          pcVar2 = (char *)(param_1 + 0x2647 + (uint)bVar9 * 8);
          *(uint *)(param_1 + 0x14) =
               *(uint *)(param_1 + 0x14) |
               (uint)*(ushort *)((uint)bVar9 * 0x10 + 0x35f6 + param_1) <<
               (*(char *)(param_1 + 0x18) - *pcVar2 & 0x1fU);
          cVar4 = *(char *)(param_1 + 0x18) - *pcVar2;
          *(char *)(param_1 + 0x18) = cVar4;
          while (cVar4 < '\x11') {
            if (*(uint *)(param_1 + 0x864) <= *(uint *)(param_1 + 0x860)) {
              *(undefined4 *)(param_1 + 0x1c) = 1;
              *(undefined4 *)(param_1 + 0x860) = *(undefined4 *)(param_1 + 0x85c);
            }
            **(undefined1 **)(param_1 + 0x860) =
                 (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x10);
            puVar5 = (undefined1 *)(*(int *)(param_1 + 0x860) + 1);
            *(undefined1 **)(param_1 + 0x860) = puVar5;
            *puVar5 = (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x18);
            cVar4 = *(char *)(param_1 + 0x18) + '\x10';
            *(int *)(param_1 + 0x860) = *(int *)(param_1 + 0x860) + 1;
            *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) << 0x10;
            *(char *)(param_1 + 0x18) = cVar4;
          }
          uVar8 = (uint)bVar3;
          *(uint *)(param_1 + 0x14) =
               *(uint *)(param_1 + 0x14) |
               (uint)*(ushort *)(param_1 + 0x3ff4 + uVar8 * 2) <<
               (*(char *)(param_1 + 0x18) - *(char *)(uVar8 + 0x27f6 + param_1) & 0x1fU);
          cVar4 = *(char *)(param_1 + 0x18) - *(char *)(uVar8 + 0x27f6 + param_1);
          *(char *)(param_1 + 0x18) = cVar4;
          while (cVar4 < '\x11') {
            if (*(uint *)(param_1 + 0x864) <= *(uint *)(param_1 + 0x860)) {
              *(undefined4 *)(param_1 + 0x1c) = 1;
              *(undefined4 *)(param_1 + 0x860) = *(undefined4 *)(param_1 + 0x85c);
            }
            **(undefined1 **)(param_1 + 0x860) =
                 (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x10);
            puVar5 = (undefined1 *)(*(int *)(param_1 + 0x860) + 1);
            *(undefined1 **)(param_1 + 0x860) = puVar5;
            *puVar5 = (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x18);
            cVar4 = *(char *)(param_1 + 0x18) + '\x10';
            *(int *)(param_1 + 0x860) = *(int *)(param_1 + 0x860) + 1;
            *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) << 0x10;
            *(char *)(param_1 + 0x18) = cVar4;
          }
        }
        if ((&DAT_00413818)[bVar9] != '\0') {
          bVar6 = *(char *)(param_1 + 0x18) - (&DAT_00413818)[bVar9];
          *(uint *)(param_1 + 0x14) =
               *(uint *)(param_1 + 0x14) |
               (*(uint *)(&DAT_00413748 + (uint)bVar9 * 4) & uVar7) << (bVar6 & 0x1f);
          *(byte *)(param_1 + 0x18) = bVar6;
          while ((char)bVar6 < '\x11') {
            if (*(uint *)(param_1 + 0x864) <= *(uint *)(param_1 + 0x860)) {
              *(undefined4 *)(param_1 + 0x1c) = 1;
              *(undefined4 *)(param_1 + 0x860) = *(undefined4 *)(param_1 + 0x85c);
            }
            **(undefined1 **)(param_1 + 0x860) =
                 (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x10);
            puVar5 = (undefined1 *)(*(int *)(param_1 + 0x860) + 1);
            *(undefined1 **)(param_1 + 0x860) = puVar5;
            *puVar5 = (char)((uint)*(undefined4 *)(param_1 + 0x14) >> 0x18);
            bVar6 = *(char *)(param_1 + 0x18) + 0x10;
            *(int *)(param_1 + 0x860) = *(int *)(param_1 + 0x860) + 1;
            *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) << 0x10;
            *(byte *)(param_1 + 0x18) = bVar6;
          }
        }
        *(int *)(param_1 + 0x868) = *(int *)(param_1 + 0x868) + bVar3 + 2;
        local_4 = local_4 + 4;
      }
      local_c = local_c + 1;
      if (*(int *)(param_1 + 0x868) == 0x8000) {
        FUN_0040d3c0(param_1);
        *(undefined1 *)(param_1 + 0x87c) = 0;
      }
    } while (local_c < param_2);
  }
  return;
}

