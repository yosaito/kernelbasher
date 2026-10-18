; Reconstructed M8/LZX x86 code, original VAs in labels.
; Original author attribution must be preserved; see README.md.
.686p
.model flat
.xmm
option casemap:none
EXTERN _kb_memory:BYTE
EXTERN _kb_rdata:BYTE
EXTERN _fclose:PROC
EXTERN _fopen:PROC
EXTERN _fread:PROC
EXTERN _free:PROC
EXTERN _fseek:PROC
EXTERN _ftell:PROC
EXTERN _fwrite:PROC
EXTERN _malloc:PROC
EXTERN _memcmp:PROC
EXTERN _memcpy:PROC
EXTERN _memset:PROC
EXTERN _strncmp:PROC
.code
PUBLIC _kb_m8_pack, _kb_m8_unpack, _kb_lzx_compress, _kb_lzx_decompress
L_00409dc0:
    push ebp ; 00409dc0
L_00409dc1:
    mov ebp, esp ; 00409dc1
L_00409dc3:
    mov eax, dword ptr [ebp + 8] ; 00409dc3
L_00409dc6:
    push eax ; 00409dc6
L_00409dc7:
    call _malloc ; 00409dc7
L_00409dcc:
    add esp, 4 ; 00409dcc
L_00409dcf:
    pop ebp ; 00409dcf
L_00409dd0:
    retn  ; 00409dd0
L_00409dd1:
    db 0cch
L_00409dd2:
    db 0cch
L_00409dd3:
    db 0cch
L_00409dd4:
    db 0cch
L_00409dd5:
    db 0cch
L_00409dd6:
    db 0cch
L_00409dd7:
    db 0cch
L_00409dd8:
    db 0cch
L_00409dd9:
    db 0cch
L_00409dda:
    db 0cch
L_00409ddb:
    db 0cch
L_00409ddc:
    db 0cch
L_00409ddd:
    db 0cch
L_00409dde:
    db 0cch
L_00409ddf:
    db 0cch
L_00409de0:
    push ebp ; 00409de0
L_00409de1:
    mov ebp, esp ; 00409de1
L_00409de3:
    mov eax, dword ptr [ebp + 8] ; 00409de3
L_00409de6:
    push eax ; 00409de6
L_00409de7:
    call _free ; 00409de7
L_00409dec:
    add esp, 4 ; 00409dec
L_00409def:
    pop ebp ; 00409def
L_00409df0:
    retn  ; 00409df0
L_00409df1:
    db 0cch
L_00409df2:
    db 0cch
L_00409df3:
    db 0cch
L_00409df4:
    db 0cch
L_00409df5:
    db 0cch
L_00409df6:
    db 0cch
L_00409df7:
    db 0cch
L_00409df8:
    db 0cch
L_00409df9:
    db 0cch
L_00409dfa:
    db 0cch
L_00409dfb:
    db 0cch
L_00409dfc:
    db 0cch
L_00409dfd:
    db 0cch
L_00409dfe:
    db 0cch
L_00409dff:
    db 0cch
L_00409e00:
    push ebp ; 00409e00
L_00409e01:
    mov ebp, esp ; 00409e01
L_00409e03:
    push ecx ; 00409e03
L_00409e04:
    mov eax, dword ptr [_kb_memory + 14730660] ; 00409e04
L_00409e09:
    add eax, dword ptr [ebp + 010h] ; 00409e09
L_00409e0c:
    mov dword ptr [_kb_memory + 14730660], eax ; 00409e0c
L_00409e11:
    mov ecx, dword ptr [_kb_memory + 14730656] ; 00409e11
L_00409e17:
    add ecx, dword ptr [ebp + 014h] ; 00409e17
L_00409e1a:
    mov dword ptr [_kb_memory + 14730656], ecx ; 00409e1a
L_00409e20:
    mov dx, word ptr [ebp + 010h] ; 00409e20
L_00409e24:
    mov word ptr [ebp - 4], dx ; 00409e24
L_00409e28:
    mov ax, word ptr [ebp + 014h] ; 00409e28
L_00409e2c:
    mov word ptr [ebp - 2], ax ; 00409e2c
L_00409e30:
    mov ecx, dword ptr [_kb_memory + 14730660] ; 00409e30
L_00409e36:
    add ecx, 4 ; 00409e36
L_00409e39:
    mov dword ptr [_kb_memory + 14730660], ecx ; 00409e39
L_00409e3f:
    cmp dword ptr [_kb_memory + 50456], 0 ; 00409e3f
L_00409e46:
    je L_00409e91 ; 00409e46
L_00409e48:
    push 4 ; 00409e48
L_00409e4a:
    lea edx, [ebp - 4] ; 00409e4a
L_00409e4d:
    push edx ; 00409e4d
L_00409e4e:
    mov eax, dword ptr [_kb_memory + 50456] ; 00409e4e
L_00409e53:
    push eax ; 00409e53
L_00409e54:
    call _memcpy ; 00409e54
L_00409e59:
    add esp, 0ch ; 00409e59
L_00409e5c:
    mov ecx, dword ptr [_kb_memory + 50456] ; 00409e5c
L_00409e62:
    add ecx, 4 ; 00409e62
L_00409e65:
    mov dword ptr [_kb_memory + 50456], ecx ; 00409e65
L_00409e6b:
    mov edx, dword ptr [ebp + 010h] ; 00409e6b
L_00409e6e:
    push edx ; 00409e6e
L_00409e6f:
    mov eax, dword ptr [ebp + 0ch] ; 00409e6f
L_00409e72:
    push eax ; 00409e72
L_00409e73:
    mov ecx, dword ptr [_kb_memory + 50456] ; 00409e73
L_00409e79:
    push ecx ; 00409e79
L_00409e7a:
    call _memcpy ; 00409e7a
L_00409e7f:
    add esp, 0ch ; 00409e7f
L_00409e82:
    mov edx, dword ptr [_kb_memory + 50456] ; 00409e82
L_00409e88:
    add edx, dword ptr [ebp + 010h] ; 00409e88
L_00409e8b:
    mov dword ptr [_kb_memory + 50456], edx ; 00409e8b
L_00409e91:
    mov esp, ebp ; 00409e91
L_00409e93:
    pop ebp ; 00409e93
L_00409e94:
    retn  ; 00409e94
L_00409e95:
    db 0cch
L_00409e96:
    db 0cch
L_00409e97:
    db 0cch
L_00409e98:
    db 0cch
L_00409e99:
    db 0cch
L_00409e9a:
    db 0cch
L_00409e9b:
    db 0cch
L_00409e9c:
    db 0cch
L_00409e9d:
    db 0cch
L_00409e9e:
    db 0cch
L_00409e9f:
    db 0cch
_kb_lzx_compress LABEL NEAR
L_00409ea0:
    push ebp ; 00409ea0
L_00409ea1:
    mov ebp, esp ; 00409ea1
L_00409ea3:
    sub esp, 02ch ; 00409ea3
L_00409ea6:
    mov dword ptr [ebp - 8], 0 ; 00409ea6
L_00409ead:
    mov byte ptr [ebp - 019h], 0 ; 00409ead
L_00409eb1:
    mov dword ptr [ebp - 0ch], 1 ; 00409eb1
L_00409eb8:
    mov dword ptr [ebp - 014h], 1 ; 00409eb8
L_00409ebf:
    mov dword ptr [ebp - 018h], 020000h ; 00409ebf
L_00409ec6:
    mov dword ptr [ebp - 020h], 08000h ; 00409ec6
L_00409ecd:
    push 0 ; 00409ecd
L_00409ecf:
    push OFFSET L_00409e00 ; 00409ecf
L_00409ed4:
    lea eax, [ebp - 8] ; 00409ed4
L_00409ed7:
    push eax ; 00409ed7
L_00409ed8:
    lea ecx, [ebp - 010h] ; 00409ed8
L_00409edb:
    push ecx ; 00409edb
L_00409edc:
    push OFFSET L_00409de0 ; 00409edc
L_00409ee1:
    push OFFSET L_00409dc0 ; 00409ee1
L_00409ee6:
    lea edx, [ebp - 018h] ; 00409ee6
L_00409ee9:
    push edx ; 00409ee9
L_00409eea:
    lea eax, [ebp - 020h] ; 00409eea
L_00409eed:
    push eax ; 00409eed
L_00409eee:
    call L_0040a380 ; 00409eee
L_00409ef3:
    add esp, 020h ; 00409ef3
L_00409ef6:
    mov ecx, dword ptr [ebp + 8] ; 00409ef6
L_00409ef9:
    mov dword ptr [ebp - 024h], ecx ; 00409ef9
L_00409efc:
    mov edx, dword ptr [ebp + 0ch] ; 00409efc
L_00409eff:
    mov dword ptr [ebp - 4], edx ; 00409eff
L_00409f02:
    cmp dword ptr [ebp + 010h], 08000h ; 00409f02
L_00409f09:
    jbe L_00409f14 ; 00409f09
L_00409f0b:
    mov dword ptr [ebp - 028h], 08000h ; 00409f0b
L_00409f12:
    jmp L_00409f1a ; 00409f12
L_00409f14:
    mov eax, dword ptr [ebp + 010h] ; 00409f14
L_00409f17:
    mov dword ptr [ebp - 028h], eax ; 00409f17
L_00409f1a:
    mov dword ptr [ebp - 0ch], 0 ; 00409f1a
L_00409f21:
    lea ecx, [ebp - 0ch] ; 00409f21
L_00409f24:
    push ecx ; 00409f24
L_00409f25:
    mov edx, dword ptr [ebp - 010h] ; 00409f25
L_00409f28:
    push edx ; 00409f28
L_00409f29:
    push 0 ; 00409f29
L_00409f2b:
    mov eax, dword ptr [ebp - 028h] ; 00409f2b
L_00409f2e:
    push eax ; 00409f2e
L_00409f2f:
    mov ecx, dword ptr [ebp - 024h] ; 00409f2f
L_00409f32:
    push ecx ; 00409f32
L_00409f33:
    mov edx, dword ptr [ebp - 8] ; 00409f33
L_00409f36:
    push edx ; 00409f36
L_00409f37:
    call L_0040a440 ; 00409f37
L_00409f3c:
    add esp, 018h ; 00409f3c
L_00409f3f:
    mov eax, dword ptr [ebp - 024h] ; 00409f3f
L_00409f42:
    add eax, dword ptr [ebp - 028h] ; 00409f42
L_00409f45:
    mov dword ptr [ebp - 024h], eax ; 00409f45
L_00409f48:
    mov ecx, dword ptr [ebp + 010h] ; 00409f48
L_00409f4b:
    sub ecx, dword ptr [ebp - 028h] ; 00409f4b
L_00409f4e:
    mov dword ptr [ebp + 010h], ecx ; 00409f4e
L_00409f51:
    jne L_00409f55 ; 00409f51
L_00409f53:
    jmp L_00409f57 ; 00409f53
L_00409f55:
    jmp L_00409f02 ; 00409f55
L_00409f57:
    mov byte ptr [ebp - 019h], 1 ; 00409f57
L_00409f5b:
    mov edx, dword ptr [ebp - 8] ; 00409f5b
L_00409f5e:
    push edx ; 00409f5e
L_00409f5f:
    call L_0040a4d0 ; 00409f5f
L_00409f64:
    add esp, 4 ; 00409f64
L_00409f67:
    mov eax, dword ptr [ebp - 8] ; 00409f67
L_00409f6a:
    push eax ; 00409f6a
L_00409f6b:
    call L_0040a500 ; 00409f6b
L_00409f70:
    add esp, 4 ; 00409f70
L_00409f73:
    mov al, byte ptr [ebp - 019h] ; 00409f73
L_00409f76:
    mov esp, ebp ; 00409f76
L_00409f78:
    pop ebp ; 00409f78
L_00409f79:
    retn  ; 00409f79
L_00409f7a:
    db 0cch
L_00409f7b:
    db 0cch
L_00409f7c:
    db 0cch
L_00409f7d:
    db 0cch
L_00409f7e:
    db 0cch
L_00409f7f:
    db 0cch
L_00409f80:
    push ebp ; 00409f80
L_00409f81:
    mov ebp, esp ; 00409f81
L_00409f83:
    sub esp, 8 ; 00409f83
L_00409f86:
    mov eax, dword ptr [_kb_memory + 50460] ; 00409f86
L_00409f8b:
    movzx ecx, word ptr [eax + 014h] ; 00409f8b
L_00409f8f:
    mov edx, dword ptr [_kb_memory + 50460] ; 00409f8f
L_00409f95:
    lea eax, [edx + ecx + 018h] ; 00409f95
L_00409f99:
    mov dword ptr [ebp - 8], eax ; 00409f99
L_00409f9c:
    mov dword ptr [ebp - 4], 0 ; 00409f9c
L_00409fa3:
    jmp L_00409fae ; 00409fa3
L_00409fa5:
    mov ecx, dword ptr [ebp - 4] ; 00409fa5
L_00409fa8:
    add ecx, 1 ; 00409fa8
L_00409fab:
    mov dword ptr [ebp - 4], ecx ; 00409fab
L_00409fae:
    mov edx, dword ptr [_kb_memory + 50460] ; 00409fae
L_00409fb4:
    movzx eax, word ptr [edx + 6] ; 00409fb4
L_00409fb8:
    cmp dword ptr [ebp - 4], eax ; 00409fb8
L_00409fbb:
    jge L_00409fe3 ; 00409fbb
L_00409fbd:
    push 8 ; 00409fbd
L_00409fbf:
    mov ecx, dword ptr [ebp + 8] ; 00409fbf
L_00409fc2:
    push ecx ; 00409fc2
L_00409fc3:
    mov edx, dword ptr [ebp - 8] ; 00409fc3
L_00409fc6:
    push edx ; 00409fc6
L_00409fc7:
    call _strncmp ; 00409fc7
L_00409fcc:
    add esp, 0ch ; 00409fcc
L_00409fcf:
    test eax, eax ; 00409fcf
L_00409fd1:
    jne L_00409fd8 ; 00409fd1
L_00409fd3:
    mov eax, dword ptr [ebp - 8] ; 00409fd3
L_00409fd6:
    jmp L_00409fe5 ; 00409fd6
L_00409fd8:
    mov eax, dword ptr [ebp - 8] ; 00409fd8
L_00409fdb:
    add eax, 028h ; 00409fdb
L_00409fde:
    mov dword ptr [ebp - 8], eax ; 00409fde
L_00409fe1:
    jmp L_00409fa5 ; 00409fe1
L_00409fe3:
    xor eax, eax ; 00409fe3
L_00409fe5:
    mov esp, ebp ; 00409fe5
L_00409fe7:
    pop ebp ; 00409fe7
L_00409fe8:
    retn  ; 00409fe8
L_00409fe9:
    db 0cch
L_00409fea:
    db 0cch
L_00409feb:
    db 0cch
L_00409fec:
    db 0cch
L_00409fed:
    db 0cch
L_00409fee:
    db 0cch
L_00409fef:
    db 0cch
_kb_m8_pack LABEL NEAR
L_00409ff0:
    push ebp ; 00409ff0
L_00409ff1:
    mov ebp, esp ; 00409ff1
L_00409ff3:
    sub esp, 040h ; 00409ff3
L_00409ff6:
    mov dword ptr [ebp - 024h], 0 ; 00409ff6
L_00409ffd:
    mov dword ptr [ebp - 01ch], 0 ; 00409ffd
L_0040a004:
    mov dword ptr [ebp - 018h], 0 ; 0040a004
L_0040a00b:
    mov dword ptr [ebp - 038h], 0 ; 0040a00b
L_0040a012:
    mov dword ptr [ebp - 8], 0 ; 0040a012
L_0040a019:
    mov dword ptr [_kb_memory + 14730660], 0 ; 0040a019
L_0040a023:
    mov dword ptr [_kb_memory + 14730656], 0 ; 0040a023
L_0040a02d:
    push 0600000h ; 0040a02d
L_0040a032:
    push 0 ; 0040a032
L_0040a034:
    push OFFSET _kb_memory + 8439200 ; 0040a034
L_0040a039:
    call _memset ; 0040a039
L_0040a03e:
    add esp, 0ch ; 0040a03e
L_0040a041:
    push OFFSET _kb_memory + 37172 ; 0040a041
L_0040a046:
    mov eax, dword ptr [ebp + 8] ; 0040a046
L_0040a049:
    push eax ; 0040a049
L_0040a04a:
    call _fopen ; 0040a04a
L_0040a04f:
    add esp, 8 ; 0040a04f
L_0040a052:
    mov dword ptr [ebp - 0ch], eax ; 0040a052
L_0040a055:
    cmp dword ptr [ebp - 0ch], 0 ; 0040a055
L_0040a059:
    je L_0040a084 ; 0040a059
L_0040a05b:
    mov ecx, dword ptr [ebp - 0ch] ; 0040a05b
L_0040a05e:
    push ecx ; 0040a05e
L_0040a05f:
    push 0600000h ; 0040a05f
L_0040a064:
    push 1 ; 0040a064
L_0040a066:
    push OFFSET _kb_memory + 8439200 ; 0040a066
L_0040a06b:
    call _fread ; 0040a06b
L_0040a070:
    add esp, 010h ; 0040a070
L_0040a073:
    mov dword ptr [ebp - 024h], eax ; 0040a073
L_0040a076:
    mov edx, dword ptr [ebp - 0ch] ; 0040a076
L_0040a079:
    push edx ; 0040a079
L_0040a07a:
    call _fclose ; 0040a07a
L_0040a07f:
    add esp, 4 ; 0040a07f
L_0040a082:
    jmp L_0040a08e ; 0040a082
L_0040a084:
    mov eax, 1 ; 0040a084
L_0040a089:
    jmp L_0040a375 ; 0040a089
L_0040a08e:
    push OFFSET _kb_memory + 37176 ; 0040a08e
L_0040a093:
    mov eax, dword ptr [ebp + 010h] ; 0040a093
L_0040a096:
    push eax ; 0040a096
L_0040a097:
    call _fopen ; 0040a097
L_0040a09c:
    add esp, 8 ; 0040a09c
L_0040a09f:
    mov dword ptr [ebp - 0ch], eax ; 0040a09f
L_0040a0a2:
    cmp dword ptr [ebp - 0ch], 0 ; 0040a0a2
L_0040a0a6:
    je L_0040a10a ; 0040a0a6
L_0040a0a8:
    push 2 ; 0040a0a8
L_0040a0aa:
    push 0 ; 0040a0aa
L_0040a0ac:
    mov ecx, dword ptr [ebp - 0ch] ; 0040a0ac
L_0040a0af:
    push ecx ; 0040a0af
L_0040a0b0:
    call _fseek ; 0040a0b0
L_0040a0b5:
    add esp, 0ch ; 0040a0b5
L_0040a0b8:
    mov edx, dword ptr [ebp - 0ch] ; 0040a0b8
L_0040a0bb:
    push edx ; 0040a0bb
L_0040a0bc:
    call _ftell ; 0040a0bc
L_0040a0c1:
    add esp, 4 ; 0040a0c1
L_0040a0c4:
    mov dword ptr [ebp - 028h], eax ; 0040a0c4
L_0040a0c7:
    push 0 ; 0040a0c7
L_0040a0c9:
    push 0 ; 0040a0c9
L_0040a0cb:
    mov eax, dword ptr [ebp - 0ch] ; 0040a0cb
L_0040a0ce:
    push eax ; 0040a0ce
L_0040a0cf:
    call _fseek ; 0040a0cf
L_0040a0d4:
    add esp, 0ch ; 0040a0d4
L_0040a0d7:
    mov ecx, dword ptr [ebp - 028h] ; 0040a0d7
L_0040a0da:
    push ecx ; 0040a0da
L_0040a0db:
    call _malloc ; 0040a0db
L_0040a0e0:
    add esp, 4 ; 0040a0e0
L_0040a0e3:
    mov dword ptr [ebp - 01ch], eax ; 0040a0e3
L_0040a0e6:
    mov edx, dword ptr [ebp - 0ch] ; 0040a0e6
L_0040a0e9:
    push edx ; 0040a0e9
L_0040a0ea:
    mov eax, dword ptr [ebp - 028h] ; 0040a0ea
L_0040a0ed:
    push eax ; 0040a0ed
L_0040a0ee:
    push 1 ; 0040a0ee
L_0040a0f0:
    mov ecx, dword ptr [ebp - 01ch] ; 0040a0f0
L_0040a0f3:
    push ecx ; 0040a0f3
L_0040a0f4:
    call _fread ; 0040a0f4
L_0040a0f9:
    add esp, 010h ; 0040a0f9
L_0040a0fc:
    mov edx, dword ptr [ebp - 0ch] ; 0040a0fc
L_0040a0ff:
    push edx ; 0040a0ff
L_0040a100:
    call _fclose ; 0040a100
L_0040a105:
    add esp, 4 ; 0040a105
L_0040a108:
    jmp L_0040a114 ; 0040a108
L_0040a10a:
    mov eax, 2 ; 0040a10a
L_0040a10f:
    jmp L_0040a375 ; 0040a10f
L_0040a114:
    mov eax, dword ptr [ebp - 028h] ; 0040a114
L_0040a117:
    and eax, 0fffffff0h ; 0040a117
L_0040a11a:
    mov dword ptr [ebp - 014h], eax ; 0040a11a
L_0040a11d:
    jmp L_0040a128 ; 0040a11d
L_0040a11f:
    mov ecx, dword ptr [ebp - 014h] ; 0040a11f
L_0040a122:
    sub ecx, 2 ; 0040a122
L_0040a125:
    mov dword ptr [ebp - 014h], ecx ; 0040a125
L_0040a128:
    mov edx, dword ptr [ebp - 028h] ; 0040a128
L_0040a12b:
    sub edx, 01000h ; 0040a12b
L_0040a131:
    cmp dword ptr [ebp - 014h], edx ; 0040a131
L_0040a134:
    jle L_0040a164 ; 0040a134
L_0040a136:
    push 0ah ; 0040a136
L_0040a138:
    push OFFSET _kb_memory + 37180 ; 0040a138
L_0040a13d:
    mov eax, dword ptr [ebp - 01ch] ; 0040a13d
L_0040a140:
    add eax, dword ptr [ebp - 014h] ; 0040a140
L_0040a143:
    push eax ; 0040a143
L_0040a144:
    call _memcmp ; 0040a144
L_0040a149:
    add esp, 0ch ; 0040a149
L_0040a14c:
    test eax, eax ; 0040a14c
L_0040a14e:
    jne L_0040a162 ; 0040a14e
L_0040a150:
    mov ecx, dword ptr [ebp - 01ch] ; 0040a150
L_0040a153:
    add ecx, dword ptr [ebp - 014h] ; 0040a153
L_0040a156:
    mov dword ptr [ebp - 4], ecx ; 0040a156
L_0040a159:
    mov dword ptr [ebp - 018h], 1 ; 0040a159
L_0040a160:
    jmp L_0040a164 ; 0040a160
L_0040a162:
    jmp L_0040a11f ; 0040a162
L_0040a164:
    cmp dword ptr [ebp - 018h], 0 ; 0040a164
L_0040a168:
    jne L_0040a180 ; 0040a168
L_0040a16a:
    mov edx, dword ptr [ebp - 01ch] ; 0040a16a
L_0040a16d:
    push edx ; 0040a16d
L_0040a16e:
    call _free ; 0040a16e
L_0040a173:
    add esp, 4 ; 0040a173
L_0040a176:
    mov eax, 3 ; 0040a176
L_0040a17b:
    jmp L_0040a375 ; 0040a17b
L_0040a180:
    mov eax, dword ptr [ebp - 4] ; 0040a180
L_0040a183:
    mov ecx, dword ptr [ebp - 028h] ; 0040a183
L_0040a186:
    sub ecx, dword ptr [eax + 0ah] ; 0040a186
L_0040a189:
    mov dword ptr [ebp - 8], ecx ; 0040a189
L_0040a18c:
    mov dword ptr [_kb_memory + 50464], OFFSET _kb_memory + 8439200 ; 0040a18c
L_0040a196:
    mov edx, dword ptr [_kb_memory + 50464] ; 0040a196
L_0040a19c:
    mov eax, dword ptr [edx + 03ch] ; 0040a19c
L_0040a19f:
    add eax, OFFSET _kb_memory + 8439200 ; 0040a19f
L_0040a1a4:
    mov dword ptr [_kb_memory + 50460], eax ; 0040a1a4
L_0040a1a9:
    push OFFSET _kb_memory + 37192 ; 0040a1a9
L_0040a1ae:
    call L_00409f80 ; 0040a1ae
L_0040a1b3:
    add esp, 4 ; 0040a1b3
L_0040a1b6:
    mov dword ptr [ebp - 040h], eax ; 0040a1b6
L_0040a1b9:
    mov dword ptr [ebp - 030h], 04658h ; 0040a1b9
L_0040a1c0:
    mov ecx, dword ptr [ebp - 8] ; 0040a1c0
L_0040a1c3:
    sub ecx, dword ptr [ebp - 030h] ; 0040a1c3
L_0040a1c6:
    mov dword ptr [ebp - 8], ecx ; 0040a1c6
L_0040a1c9:
    mov edx, dword ptr [ebp - 030h] ; 0040a1c9
L_0040a1cc:
    push edx ; 0040a1cc
L_0040a1cd:
    mov eax, dword ptr [ebp + 0ch] ; 0040a1cd
L_0040a1d0:
    push eax ; 0040a1d0
L_0040a1d1:
    mov ecx, dword ptr [ebp - 01ch] ; 0040a1d1
L_0040a1d4:
    add ecx, dword ptr [ebp - 8] ; 0040a1d4
L_0040a1d7:
    push ecx ; 0040a1d7
L_0040a1d8:
    call _memcpy ; 0040a1d8
L_0040a1dd:
    add esp, 0ch ; 0040a1dd
L_0040a1e0:
    mov dword ptr [ebp - 014h], 0 ; 0040a1e0
L_0040a1e7:
    jmp L_0040a1f2 ; 0040a1e7
L_0040a1e9:
    mov edx, dword ptr [ebp - 014h] ; 0040a1e9
L_0040a1ec:
    add edx, 4 ; 0040a1ec
L_0040a1ef:
    mov dword ptr [ebp - 014h], edx ; 0040a1ef
L_0040a1f2:
    mov eax, dword ptr [ebp - 040h] ; 0040a1f2
L_0040a1f5:
    mov ecx, dword ptr [ebp - 014h] ; 0040a1f5
L_0040a1f8:
    cmp ecx, dword ptr [eax + 8] ; 0040a1f8
L_0040a1fb:
    jae L_0040a218 ; 0040a1fb
L_0040a1fd:
    mov edx, dword ptr [ebp - 040h] ; 0040a1fd
L_0040a200:
    mov eax, dword ptr [edx + 014h] ; 0040a200
L_0040a203:
    mov ecx, dword ptr [ebp - 014h] ; 0040a203
L_0040a206:
    cmp dword ptr [eax + ecx + _kb_memory + 8439200], 0 ; 0040a206
L_0040a20e:
    je L_0040a216 ; 0040a20e
L_0040a210:
    mov edx, dword ptr [ebp - 014h] ; 0040a210
L_0040a213:
    mov dword ptr [ebp - 02ch], edx ; 0040a213
L_0040a216:
    jmp L_0040a1e9 ; 0040a216
L_0040a218:
    mov eax, dword ptr [ebp - 02ch] ; 0040a218
L_0040a21b:
    add eax, 4 ; 0040a21b
L_0040a21e:
    mov dword ptr [ebp - 034h], eax ; 0040a21e
L_0040a221:
    mov ecx, dword ptr [ebp - 040h] ; 0040a221
L_0040a224:
    mov edx, dword ptr [ecx + 8] ; 0040a224
L_0040a227:
    sub edx, dword ptr [ebp - 034h] ; 0040a227
L_0040a22a:
    mov dword ptr [ebp - 010h], edx ; 0040a22a
L_0040a22d:
    mov eax, dword ptr [ebp - 8] ; 0040a22d
L_0040a230:
    sub eax, dword ptr [ebp - 034h] ; 0040a230
L_0040a233:
    mov ecx, dword ptr [ebp - 028h] ; 0040a233
L_0040a236:
    sub ecx, eax ; 0040a236
L_0040a238:
    xor edx, edx ; 0040a238
L_0040a23a:
    sub edx, ecx ; 0040a23a
L_0040a23c:
    mov dword ptr [ebp - 03ch], edx ; 0040a23c
L_0040a23f:
    mov eax, dword ptr [ebp - 040h] ; 0040a23f
L_0040a242:
    mov ecx, dword ptr [eax + 0ch] ; 0040a242
L_0040a245:
    sub ecx, 07fff0000h ; 0040a245
L_0040a24b:
    mov dword ptr [ebp - 020h], ecx ; 0040a24b
L_0040a24e:
    mov edx, dword ptr [ebp - 010h] ; 0040a24e
L_0040a251:
    mov dword ptr [_kb_memory + 8439240], edx ; 0040a251
L_0040a257:
    mov eax, dword ptr [ebp - 034h] ; 0040a257
L_0040a25a:
    mov dword ptr [_kb_memory + 8439244], eax ; 0040a25a
L_0040a25f:
    mov ecx, dword ptr [ebp - 03ch] ; 0040a25f
L_0040a262:
    mov dword ptr [_kb_memory + 8439248], ecx ; 0040a262
L_0040a268:
    mov edx, dword ptr [ebp - 020h] ; 0040a268
L_0040a26b:
    mov dword ptr [_kb_memory + 8439252], edx ; 0040a26b
L_0040a271:
    mov eax, dword ptr [ebp - 030h] ; 0040a271
L_0040a274:
    mov dword ptr [_kb_memory + 8439256], eax ; 0040a274
L_0040a279:
    mov ecx, dword ptr [ebp - 8] ; 0040a279
L_0040a27c:
    sub ecx, dword ptr [ebp - 034h] ; 0040a27c
L_0040a27f:
    mov dword ptr [ebp - 8], ecx ; 0040a27f
L_0040a282:
    mov edx, dword ptr [ebp - 034h] ; 0040a282
L_0040a285:
    push edx ; 0040a285
L_0040a286:
    mov eax, dword ptr [ebp - 040h] ; 0040a286
L_0040a289:
    mov ecx, dword ptr [eax + 014h] ; 0040a289
L_0040a28c:
    add ecx, OFFSET _kb_memory + 8439200 ; 0040a28c
L_0040a292:
    push ecx ; 0040a292
L_0040a293:
    mov edx, dword ptr [ebp - 01ch] ; 0040a293
L_0040a296:
    add edx, dword ptr [ebp - 8] ; 0040a296
L_0040a299:
    push edx ; 0040a299
L_0040a29a:
    call _memcpy ; 0040a29a
L_0040a29f:
    add esp, 0ch ; 0040a29f
L_0040a2a2:
    mov eax, dword ptr [ebp - 034h] ; 0040a2a2
L_0040a2a5:
    push eax ; 0040a2a5
L_0040a2a6:
    push 0 ; 0040a2a6
L_0040a2a8:
    mov ecx, dword ptr [ebp - 040h] ; 0040a2a8
L_0040a2ab:
    mov edx, dword ptr [ecx + 014h] ; 0040a2ab
L_0040a2ae:
    add edx, OFFSET _kb_memory + 8439200 ; 0040a2ae
L_0040a2b4:
    push edx ; 0040a2b4
L_0040a2b5:
    call _memset ; 0040a2b5
L_0040a2ba:
    add esp, 0ch ; 0040a2ba
L_0040a2bd:
    mov dword ptr [_kb_memory + 50456], OFFSET _kb_memory + 50560 ; 0040a2bd
L_0040a2c7:
    mov eax, dword ptr [ebp - 024h] ; 0040a2c7
L_0040a2ca:
    push eax ; 0040a2ca
L_0040a2cb:
    push OFFSET _kb_memory + 50560 ; 0040a2cb
L_0040a2d0:
    push OFFSET _kb_memory + 8439200 ; 0040a2d0
L_0040a2d5:
    call L_00409ea0 ; 0040a2d5
L_0040a2da:
    add esp, 0ch ; 0040a2da
L_0040a2dd:
    mov ecx, dword ptr [ebp - 8] ; 0040a2dd
L_0040a2e0:
    sub ecx, dword ptr [_kb_memory + 14730660] ; 0040a2e0
L_0040a2e6:
    mov dword ptr [ebp - 8], ecx ; 0040a2e6
L_0040a2e9:
    mov edx, dword ptr [ebp - 028h] ; 0040a2e9
L_0040a2ec:
    sub edx, dword ptr [ebp - 8] ; 0040a2ec
L_0040a2ef:
    mov eax, 0ff800000h ; 0040a2ef
L_0040a2f4:
    sub eax, edx ; 0040a2f4
L_0040a2f6:
    mov ecx, dword ptr [ebp - 4] ; 0040a2f6
L_0040a2f9:
    mov dword ptr [ecx + 0eh], eax ; 0040a2f9
L_0040a2fc:
    mov edx, dword ptr [ebp - 4] ; 0040a2fc
L_0040a2ff:
    mov eax, dword ptr [ebp - 024h] ; 0040a2ff
L_0040a302:
    mov dword ptr [edx + 016h], eax ; 0040a302
L_0040a305:
    mov ecx, dword ptr [ebp - 4] ; 0040a305
L_0040a308:
    mov edx, dword ptr [_kb_memory + 14730660] ; 0040a308
L_0040a30e:
    mov dword ptr [ecx + 012h], edx ; 0040a30e
L_0040a311:
    mov eax, dword ptr [_kb_memory + 14730660] ; 0040a311
L_0040a316:
    push eax ; 0040a316
L_0040a317:
    push OFFSET _kb_memory + 50560 ; 0040a317
L_0040a31c:
    mov ecx, dword ptr [ebp - 01ch] ; 0040a31c
L_0040a31f:
    add ecx, dword ptr [ebp - 8] ; 0040a31f
L_0040a322:
    push ecx ; 0040a322
L_0040a323:
    call _memcpy ; 0040a323
L_0040a328:
    add esp, 0ch ; 0040a328
L_0040a32b:
    push OFFSET _kb_memory + 37200 ; 0040a32b
L_0040a330:
    mov edx, dword ptr [ebp + 014h] ; 0040a330
L_0040a333:
    push edx ; 0040a333
L_0040a334:
    call _fopen ; 0040a334
L_0040a339:
    add esp, 8 ; 0040a339
L_0040a33c:
    mov dword ptr [ebp - 038h], eax ; 0040a33c
L_0040a33f:
    cmp dword ptr [ebp - 038h], 0 ; 0040a33f
L_0040a343:
    je L_0040a367 ; 0040a343
L_0040a345:
    mov eax, dword ptr [ebp - 038h] ; 0040a345
L_0040a348:
    push eax ; 0040a348
L_0040a349:
    mov ecx, dword ptr [ebp - 028h] ; 0040a349
L_0040a34c:
    push ecx ; 0040a34c
L_0040a34d:
    push 1 ; 0040a34d
L_0040a34f:
    mov edx, dword ptr [ebp - 01ch] ; 0040a34f
L_0040a352:
    push edx ; 0040a352
L_0040a353:
    call _fwrite ; 0040a353
L_0040a358:
    add esp, 010h ; 0040a358
L_0040a35b:
    mov eax, dword ptr [ebp - 038h] ; 0040a35b
L_0040a35e:
    push eax ; 0040a35e
L_0040a35f:
    call _fclose ; 0040a35f
L_0040a364:
    add esp, 4 ; 0040a364
L_0040a367:
    mov ecx, dword ptr [ebp - 01ch] ; 0040a367
L_0040a36a:
    push ecx ; 0040a36a
L_0040a36b:
    call _free ; 0040a36b
L_0040a370:
    add esp, 4 ; 0040a370
L_0040a373:
    xor eax, eax ; 0040a373
L_0040a375:
    mov esp, ebp ; 0040a375
L_0040a377:
    pop ebp ; 0040a377
L_0040a378:
    retn  ; 0040a378
L_0040a379:
    db 0cch
L_0040a37a:
    db 0cch
L_0040a37b:
    db 0cch
L_0040a37c:
    db 0cch
L_0040a37d:
    db 0cch
L_0040a37e:
    db 0cch
L_0040a37f:
    db 0cch
L_0040a380:
    push ebx ; 0040a380
L_0040a381:
    push esi ; 0040a381
L_0040a382:
    push edi ; 0040a382
L_0040a383:
    push ebp ; 0040a383
L_0040a384:
    mov edi, dword ptr [esp + 028h] ; 0040a384
L_0040a388:
    push 014h ; 0040a388
L_0040a38a:
    mov ebp, dword ptr [esp + 020h] ; 0040a38a
L_0040a38e:
    mov dword ptr [edi], 0 ; 0040a38e
L_0040a394:
    call ebp ; 0040a394
L_0040a396:
    add esp, 4 ; 0040a396
L_0040a399:
    mov esi, eax ; 0040a399
L_0040a39b:
    test esi, esi ; 0040a39b
L_0040a39d:
    jne L_0040a3a9 ; 0040a39d
L_0040a39f:
    mov eax, 1 ; 0040a39f
L_0040a3a4:
    pop ebp ; 0040a3a4
L_0040a3a5:
    pop edi ; 0040a3a5
L_0040a3a6:
    pop esi ; 0040a3a6
L_0040a3a7:
    pop ebx ; 0040a3a7
L_0040a3a8:
    retn  ; 0040a3a8
L_0040a3a9:
    push 04350h ; 0040a3a9
L_0040a3ae:
    call ebp ; 0040a3ae
L_0040a3b0:
    add esp, 4 ; 0040a3b0
L_0040a3b3:
    mov ecx, eax ; 0040a3b3
L_0040a3b5:
    mov dword ptr [esi + 010h], eax ; 0040a3b5
L_0040a3b8:
    test ecx, ecx ; 0040a3b8
L_0040a3ba:
    jne L_0040a3ce ; 0040a3ba
L_0040a3bc:
    push esi ; 0040a3bc
L_0040a3bd:
    call dword ptr [esp + 024h] ; 0040a3bd
L_0040a3c1:
    add esp, 4 ; 0040a3c1
L_0040a3c4:
    mov eax, 1 ; 0040a3c4
L_0040a3c9:
    pop ebp ; 0040a3c9
L_0040a3ca:
    pop edi ; 0040a3ca
L_0040a3cb:
    pop esi ; 0040a3cb
L_0040a3cc:
    pop ebx ; 0040a3cc
L_0040a3cd:
    retn  ; 0040a3cd
L_0040a3ce:
    mov eax, dword ptr [esp + 030h] ; 0040a3ce
L_0040a3d2:
    mov edx, dword ptr [esp + 02ch] ; 0040a3d2
L_0040a3d6:
    mov ebx, dword ptr [esp + 020h] ; 0040a3d6
L_0040a3da:
    push eax ; 0040a3da
L_0040a3db:
    mov eax, dword ptr [esp + 01ch] ; 0040a3db
L_0040a3df:
    push edx ; 0040a3df
L_0040a3e0:
    push ebx ; 0040a3e0
L_0040a3e1:
    push ebp ; 0040a3e1
L_0040a3e2:
    mov edx, dword ptr [eax + 4] ; 0040a3e2
L_0040a3e5:
    mov eax, dword ptr [eax] ; 0040a3e5
L_0040a3e7:
    push edx ; 0040a3e7
L_0040a3e8:
    push eax ; 0040a3e8
L_0040a3e9:
    push ecx ; 0040a3e9
L_0040a3ea:
    call L_0040a540 ; 0040a3ea
L_0040a3ef:
    add esp, 01ch ; 0040a3ef
L_0040a3f2:
    test eax, eax ; 0040a3f2
L_0040a3f4:
    jne L_0040a40f ; 0040a3f4
L_0040a3f6:
    mov eax, dword ptr [esi + 010h] ; 0040a3f6
L_0040a3f9:
    push eax ; 0040a3f9
L_0040a3fa:
    call ebx ; 0040a3fa
L_0040a3fc:
    add esp, 4 ; 0040a3fc
L_0040a3ff:
    push esi ; 0040a3ff
L_0040a400:
    call ebx ; 0040a400
L_0040a402:
    add esp, 4 ; 0040a402
L_0040a405:
    mov eax, 1 ; 0040a405
L_0040a40a:
    pop ebp ; 0040a40a
L_0040a40b:
    pop edi ; 0040a40b
L_0040a40c:
    pop esi ; 0040a40c
L_0040a40d:
    pop ebx ; 0040a40d
L_0040a40e:
    retn  ; 0040a40e
L_0040a40f:
    mov eax, dword ptr [esp + 014h] ; 0040a40f
L_0040a413:
    mov dword ptr [esi + 4], ebp ; 0040a413
L_0040a416:
    mov dword ptr [esi + 8], ebx ; 0040a416
L_0040a419:
    mov ecx, dword ptr [eax] ; 0040a419
L_0040a41b:
    mov dword ptr [esi + 0ch], ecx ; 0040a41b
L_0040a41e:
    mov dword ptr [esi], 04349434ch ; 0040a41e
L_0040a424:
    mov ecx, dword ptr [eax] ; 0040a424
L_0040a426:
    mov eax, dword ptr [esp + 024h] ; 0040a426
L_0040a42a:
    add ecx, 01800h ; 0040a42a
L_0040a430:
    pop ebp ; 0040a430
L_0040a431:
    mov dword ptr [eax], ecx ; 0040a431
L_0040a433:
    xor eax, eax ; 0040a433
L_0040a435:
    mov dword ptr [edi], esi ; 0040a435
L_0040a437:
    pop edi ; 0040a437
L_0040a438:
    pop esi ; 0040a438
L_0040a439:
    pop ebx ; 0040a439
L_0040a43a:
    retn  ; 0040a43a
L_0040a43b:
    db 0cch
L_0040a43c:
    db 0cch
L_0040a43d:
    db 0cch
L_0040a43e:
    db 0cch
L_0040a43f:
    db 0cch
L_0040a440:
    sub esp, 4 ; 0040a440
L_0040a443:
    push esi ; 0040a443
L_0040a444:
    mov esi, dword ptr [esp + 0ch] ; 0040a444
L_0040a448:
    cmp dword ptr [esi], 04349434ch ; 0040a448
L_0040a44e:
    je L_0040a45a ; 0040a44e
L_0040a450:
    mov eax, 2 ; 0040a450
L_0040a455:
    pop esi ; 0040a455
L_0040a456:
    add esp, 4 ; 0040a456
L_0040a459:
    retn  ; 0040a459
L_0040a45a:
    mov eax, dword ptr [esi + 0ch] ; 0040a45a
L_0040a45d:
    mov edx, dword ptr [esp + 014h] ; 0040a45d
L_0040a461:
    cmp edx, eax ; 0040a461
L_0040a463:
    jbe L_0040a46f ; 0040a463
L_0040a465:
    mov eax, 2 ; 0040a465
L_0040a46a:
    pop esi ; 0040a46a
L_0040a46b:
    add esp, 4 ; 0040a46b
L_0040a46e:
    retn  ; 0040a46e
L_0040a46f:
    add eax, 01800h ; 0040a46f
L_0040a474:
    cmp eax, dword ptr [esp + 01ch] ; 0040a474
L_0040a478:
    jbe L_0040a484 ; 0040a478
L_0040a47a:
    mov eax, 2 ; 0040a47a
L_0040a47f:
    pop esi ; 0040a47f
L_0040a480:
    add esp, 4 ; 0040a480
L_0040a483:
    retn  ; 0040a483
L_0040a484:
    lea eax, [esp + 4] ; 0040a484
L_0040a488:
    push 0b71b00h ; 0040a488 (literal Intel E8 transform size, not an address)
L_0040a48d:
    mov ecx, dword ptr [esp + 014h] ; 0040a48d
L_0040a491:
    push eax ; 0040a491
L_0040a492:
    push edx ; 0040a492
L_0040a493:
    push ecx ; 0040a493
L_0040a494:
    mov edx, dword ptr [esi + 010h] ; 0040a494
L_0040a497:
    push edx ; 0040a497
L_0040a498:
    call L_0040a5f0 ; 0040a498
L_0040a49d:
    add esp, 014h ; 0040a49d
L_0040a4a0:
    test eax, eax ; 0040a4a0
L_0040a4a2:
    jne L_0040a4b5 ; 0040a4a2
L_0040a4a4:
    mov ecx, dword ptr [esp + 4] ; 0040a4a4
L_0040a4a8:
    mov eax, dword ptr [esp + 020h] ; 0040a4a8
L_0040a4ac:
    pop esi ; 0040a4ac
L_0040a4ad:
    mov dword ptr [eax], ecx ; 0040a4ad
L_0040a4af:
    xor eax, eax ; 0040a4af
L_0040a4b1:
    add esp, 4 ; 0040a4b1
L_0040a4b4:
    retn  ; 0040a4b4
L_0040a4b5:
    mov eax, dword ptr [esp + 020h] ; 0040a4b5
L_0040a4b9:
    pop esi ; 0040a4b9
L_0040a4ba:
    mov dword ptr [eax], 0 ; 0040a4ba
L_0040a4c0:
    mov eax, 4 ; 0040a4c0
L_0040a4c5:
    add esp, 4 ; 0040a4c5
L_0040a4c8:
    retn  ; 0040a4c8
L_0040a4c9:
    db 0cch
L_0040a4ca:
    db 0cch
L_0040a4cb:
    db 0cch
L_0040a4cc:
    db 0cch
L_0040a4cd:
    db 0cch
L_0040a4ce:
    db 0cch
L_0040a4cf:
    db 0cch
L_0040a4d0:
    mov eax, dword ptr [esp + 4] ; 0040a4d0
L_0040a4d4:
    cmp dword ptr [eax], 04349434ch ; 0040a4d4
L_0040a4da:
    je L_0040a4e2 ; 0040a4da
L_0040a4dc:
    mov eax, 2 ; 0040a4dc
L_0040a4e1:
    retn  ; 0040a4e1
L_0040a4e2:
    mov eax, dword ptr [eax + 010h] ; 0040a4e2
L_0040a4e5:
    push eax ; 0040a4e5
L_0040a4e6:
    call L_0040a650 ; 0040a4e6
L_0040a4eb:
    add esp, 4 ; 0040a4eb
L_0040a4ee:
    xor eax, eax ; 0040a4ee
L_0040a4f0:
    retn  ; 0040a4f0
L_0040a4f1:
    db 0cch
L_0040a4f2:
    db 0cch
L_0040a4f3:
    db 0cch
L_0040a4f4:
    db 0cch
L_0040a4f5:
    db 0cch
L_0040a4f6:
    db 0cch
L_0040a4f7:
    db 0cch
L_0040a4f8:
    db 0cch
L_0040a4f9:
    db 0cch
L_0040a4fa:
    db 0cch
L_0040a4fb:
    db 0cch
L_0040a4fc:
    db 0cch
L_0040a4fd:
    db 0cch
L_0040a4fe:
    db 0cch
L_0040a4ff:
    db 0cch
L_0040a500:
    push esi ; 0040a500
L_0040a501:
    mov esi, dword ptr [esp + 8] ; 0040a501
L_0040a505:
    cmp dword ptr [esi], 04349434ch ; 0040a505
L_0040a50b:
    je L_0040a514 ; 0040a50b
L_0040a50d:
    mov eax, 2 ; 0040a50d
L_0040a512:
    pop esi ; 0040a512
L_0040a513:
    retn  ; 0040a513
L_0040a514:
    mov eax, dword ptr [esi + 010h] ; 0040a514
L_0040a517:
    push eax ; 0040a517
L_0040a518:
    call L_0040a5d0 ; 0040a518
L_0040a51d:
    add esp, 4 ; 0040a51d
L_0040a520:
    mov eax, dword ptr [esi + 010h] ; 0040a520
L_0040a523:
    push eax ; 0040a523
L_0040a524:
    call dword ptr [esi + 8] ; 0040a524
L_0040a527:
    add esp, 4 ; 0040a527
L_0040a52a:
    mov dword ptr [esi], 0 ; 0040a52a
L_0040a530:
    push esi ; 0040a530
L_0040a531:
    call dword ptr [esi + 8] ; 0040a531
L_0040a534:
    add esp, 4 ; 0040a534
L_0040a537:
    xor eax, eax ; 0040a537
L_0040a539:
    pop esi ; 0040a539
L_0040a53a:
    retn  ; 0040a53a
L_0040a53b:
    db 0cch
L_0040a53c:
    db 0cch
L_0040a53d:
    db 0cch
L_0040a53e:
    db 0cch
L_0040a53f:
    db 0cch
L_0040a540:
    mov eax, dword ptr [esp + 01ch] ; 0040a540
L_0040a544:
    push esi ; 0040a544
L_0040a545:
    mov esi, dword ptr [esp + 8] ; 0040a545
L_0040a549:
    mov ecx, dword ptr [esp + 010h] ; 0040a549
L_0040a54d:
    test ecx, 07fffh ; 0040a54d
L_0040a553:
    mov dword ptr [esi + 04340h], eax ; 0040a553
L_0040a559:
    mov eax, dword ptr [esp + 0ch] ; 0040a559
L_0040a55d:
    mov dword ptr [esi + 4], eax ; 0040a55d
L_0040a560:
    je L_0040a568 ; 0040a560
L_0040a562:
    and ecx, 0ffff8000h ; 0040a562
L_0040a568:
    cmp ecx, 08000h ; 0040a568
L_0040a56e:
    jge L_0040a575 ; 0040a56e
L_0040a570:
    mov ecx, 08000h ; 0040a570
L_0040a575:
    cmp eax, 08000h ; 0040a575
L_0040a57a:
    jge L_0040a580 ; 0040a57a
L_0040a57c:
    xor eax, eax ; 0040a57c
L_0040a57e:
    pop esi ; 0040a57e
L_0040a57f:
    retn  ; 0040a57f
L_0040a580:
    mov eax, dword ptr [esp + 01ch] ; 0040a580
L_0040a584:
    mov edx, dword ptr [esp + 018h] ; 0040a584
L_0040a588:
    push esi ; 0040a588
L_0040a589:
    mov dword ptr [esi + 0988h], ecx ; 0040a589
L_0040a58f:
    mov ecx, dword ptr [esp + 018h] ; 0040a58f
L_0040a593:
    mov dword ptr [esi + 0434ch], eax ; 0040a593
L_0040a599:
    mov dword ptr [esi + 04344h], ecx ; 0040a599
L_0040a59f:
    mov dword ptr [esi + 04348h], edx ; 0040a59f
L_0040a5a5:
    call L_0040a7d0 ; 0040a5a5
L_0040a5aa:
    add esp, 4 ; 0040a5aa
L_0040a5ad:
    test eax, eax ; 0040a5ad
L_0040a5af:
    jne L_0040a5b5 ; 0040a5af
L_0040a5b1:
    xor eax, eax ; 0040a5b1
L_0040a5b3:
    pop esi ; 0040a5b3
L_0040a5b4:
    retn  ; 0040a5b4
L_0040a5b5:
    push esi ; 0040a5b5
L_0040a5b6:
    call L_0040a5e0 ; 0040a5b6
L_0040a5bb:
    add esp, 4 ; 0040a5bb
L_0040a5be:
    mov eax, 1 ; 0040a5be
L_0040a5c3:
    pop esi ; 0040a5c3
L_0040a5c4:
    retn  ; 0040a5c4
L_0040a5c5:
    db 0cch
L_0040a5c6:
    db 0cch
L_0040a5c7:
    db 0cch
L_0040a5c8:
    db 0cch
L_0040a5c9:
    db 0cch
L_0040a5ca:
    db 0cch
L_0040a5cb:
    db 0cch
L_0040a5cc:
    db 0cch
L_0040a5cd:
    db 0cch
L_0040a5ce:
    db 0cch
L_0040a5cf:
    db 0cch
L_0040a5d0:
    mov eax, dword ptr [esp + 4] ; 0040a5d0
L_0040a5d4:
    push eax ; 0040a5d4
L_0040a5d5:
    call L_0040a9f0 ; 0040a5d5
L_0040a5da:
    add esp, 4 ; 0040a5da
L_0040a5dd:
    retn  ; 0040a5dd
L_0040a5de:
    db 0cch
L_0040a5df:
    db 0cch
L_0040a5e0:
    mov eax, dword ptr [esp + 4] ; 0040a5e0
L_0040a5e4:
    push eax ; 0040a5e4
L_0040a5e5:
    call L_0040a670 ; 0040a5e5
L_0040a5ea:
    add esp, 4 ; 0040a5ea
L_0040a5ed:
    retn  ; 0040a5ed
L_0040a5ee:
    db 0cch
L_0040a5ef:
    db 0cch
L_0040a5f0:
    mov eax, dword ptr [esp + 8] ; 0040a5f0
L_0040a5f4:
    push esi ; 0040a5f4
L_0040a5f5:
    mov esi, dword ptr [esp + 8] ; 0040a5f5
L_0040a5f9:
    mov ecx, dword ptr [esp + 010h] ; 0040a5f9
L_0040a5fd:
    push esi ; 0040a5fd
L_0040a5fe:
    mov dword ptr [esi + 0994h], eax ; 0040a5fe
L_0040a604:
    mov eax, dword ptr [esp + 01ch] ; 0040a604
L_0040a608:
    mov dword ptr [esi + 0998h], ecx ; 0040a608
L_0040a60e:
    mov dword ptr [esi + 0874h], eax ; 0040a60e
L_0040a614:
    call L_0040adb0 ; 0040a614
L_0040a619:
    add esp, 4 ; 0040a619
L_0040a61c:
    cmp dword ptr [esi + 01ch], 0 ; 0040a61c
L_0040a620:
    je L_0040a633 ; 0040a620
L_0040a622:
    mov ecx, dword ptr [esp + 014h] ; 0040a622
L_0040a626:
    mov eax, 2 ; 0040a626
L_0040a62b:
    pop esi ; 0040a62b
L_0040a62c:
    mov dword ptr [ecx], 0 ; 0040a62c
L_0040a632:
    retn  ; 0040a632
L_0040a633:
    push esi ; 0040a633
L_0040a634:
    call L_0040ad50 ; 0040a634
L_0040a639:
    mov ecx, dword ptr [esp + 018h] ; 0040a639
L_0040a63d:
    add esp, 4 ; 0040a63d
L_0040a640:
    pop esi ; 0040a640
L_0040a641:
    mov dword ptr [ecx], eax ; 0040a641
L_0040a643:
    xor eax, eax ; 0040a643
L_0040a645:
    retn  ; 0040a645
L_0040a646:
    db 0cch
L_0040a647:
    db 0cch
L_0040a648:
    db 0cch
L_0040a649:
    db 0cch
L_0040a64a:
    db 0cch
L_0040a64b:
    db 0cch
L_0040a64c:
    db 0cch
L_0040a64d:
    db 0cch
L_0040a64e:
    db 0cch
L_0040a64f:
    db 0cch
L_0040a650:
    push esi ; 0040a650
L_0040a651:
    mov esi, dword ptr [esp + 8] ; 0040a651
L_0040a655:
    push esi ; 0040a655
L_0040a656:
    call L_0040ad80 ; 0040a656
L_0040a65b:
    add esp, 4 ; 0040a65b
L_0040a65e:
    cmp dword ptr [esi + 01ch], 1 ; 0040a65e
L_0040a662:
    sbb eax, eax ; 0040a662
L_0040a664:
    pop esi ; 0040a664
L_0040a665:
    neg eax ; 0040a665
L_0040a667:
    retn  ; 0040a667
L_0040a668:
    db 0cch
L_0040a669:
    db 0cch
L_0040a66a:
    db 0cch
L_0040a66b:
    db 0cch
L_0040a66c:
    db 0cch
L_0040a66d:
    db 0cch
L_0040a66e:
    db 0cch
L_0040a66f:
    db 0cch
L_0040a670:
    push ebx ; 0040a670
L_0040a671:
    xor eax, eax ; 0040a671
L_0040a673:
    push esi ; 0040a673
L_0040a674:
    mov ecx, 010000h ; 0040a674
L_0040a679:
    mov esi, dword ptr [esp + 0ch] ; 0040a679
L_0040a67d:
    push edi ; 0040a67d
L_0040a67e:
    mov edi, dword ptr [esi + 8] ; 0040a67e
L_0040a681:
    rep stosd  ; 0040a681
L_0040a683:
    mov edx, dword ptr [esi + 4] ; 0040a683
L_0040a686:
    mov eax, dword ptr [esi + 04330h] ; 0040a686
L_0040a68c:
    sub eax, edx ; 0040a68c
L_0040a68e:
    lea ecx, [edx*4] ; 0040a68e
L_0040a695:
    mov dword ptr [esi], eax ; 0040a695
L_0040a697:
    mov eax, dword ptr [esi + 04334h] ; 0040a697
L_0040a69d:
    sub eax, ecx ; 0040a69d
L_0040a69f:
    mov ebx, 1 ; 0040a69f
L_0040a6a4:
    mov dword ptr [esi + 0ch], eax ; 0040a6a4
L_0040a6a7:
    mov dword ptr [esi + 0458h], edx ; 0040a6a7
L_0040a6ad:
    mov eax, dword ptr [esi + 04338h] ; 0040a6ad
L_0040a6b3:
    mov dword ptr [esi + 044h], ebx ; 0040a6b3
L_0040a6b6:
    sub eax, ecx ; 0040a6b6
L_0040a6b8:
    mov dword ptr [esi + 048h], ebx ; 0040a6b8
L_0040a6bb:
    mov dword ptr [esi + 010h], eax ; 0040a6bb
L_0040a6be:
    mov dword ptr [esi + 04ch], ebx ; 0040a6be
L_0040a6c1:
    mov dword ptr [esi + 038h], ebx ; 0040a6c1
L_0040a6c4:
    mov dword ptr [esi + 03ch], ebx ; 0040a6c4
L_0040a6c7:
    mov dword ptr [esi + 040h], ebx ; 0040a6c7
L_0040a6ca:
    mov byte ptr [esi + 097dh], bl ; 0040a6ca
L_0040a6d0:
    mov dword ptr [esi + 0980h], ebx ; 0040a6d0
L_0040a6d6:
    mov dword ptr [esi + 086ch], edx ; 0040a6d6
L_0040a6dc:
    mov edx, dword ptr [esi + 0870h] ; 0040a6dc
L_0040a6e2:
    lea edi, [esi + 03960h] ; 0040a6e2
L_0040a6e8:
    mov byte ptr [esi + 018h], 020h ; 0040a6e8
L_0040a6ec:
    lea ecx, [edx*8 + 0100h] ; 0040a6ec
L_0040a6f3:
    xor eax, eax ; 0040a6f3
L_0040a6f5:
    mov dword ptr [esi + 014h], 0 ; 0040a6f5
L_0040a6fc:
    mov dword ptr [esi + 01ch], 0 ; 0040a6fc
L_0040a703:
    shr ecx, 2 ; 0040a703
L_0040a706:
    rep stosd  ; 0040a706
L_0040a708:
    mov ecx, 03eh ; 0040a708
L_0040a70d:
    lea edi, [esi + 041f4h] ; 0040a70d
L_0040a713:
    rep stosd  ; 0040a713
L_0040a715:
    stosb  ; 0040a715
L_0040a716:
    lea edi, [esi + 02540h] ; 0040a716
L_0040a71c:
    mov eax, 08080808h ; 0040a71c
L_0040a721:
    mov ecx, 040h ; 0040a721
L_0040a726:
    rep stosd  ; 0040a726
L_0040a728:
    mov eax, 09090909h ; 0040a728
L_0040a72d:
    mov ecx, dword ptr [esi + 0870h] ; 0040a72d
L_0040a733:
    shl ecx, 3 ; 0040a733
L_0040a736:
    lea edi, [esi + 02640h] ; 0040a736
L_0040a73c:
    shr ecx, 2 ; 0040a73c
L_0040a73f:
    rep stosd  ; 0040a73f
L_0040a741:
    mov eax, 06060606h ; 0040a741
L_0040a746:
    lea edi, [esi + 027fdh] ; 0040a746
L_0040a74c:
    mov ecx, 03eh ; 0040a74c
L_0040a751:
    rep stosd  ; 0040a751
L_0040a753:
    stosb  ; 0040a753
L_0040a754:
    lea eax, [esi + 0431eh] ; 0040a754
L_0040a75a:
    push esi ; 0040a75a
L_0040a75b:
    mov dword ptr [eax], 03030303h ; 0040a75b
L_0040a761:
    mov dword ptr [eax + 4], 03030303h ; 0040a761
L_0040a768:
    call L_0040bce0 ; 0040a768
L_0040a76d:
    add esp, 4 ; 0040a76d
L_0040a770:
    mov eax, dword ptr [esi + 0458h] ; 0040a770
L_0040a776:
    mov edi, dword ptr [esi + 034h] ; 0040a776
L_0040a779:
    mov dword ptr [esi + 0990h], eax ; 0040a779
L_0040a77f:
    mov ecx, 0800h ; 0040a77f
L_0040a784:
    mov dword ptr [esi + 098ch], eax ; 0040a784
L_0040a78a:
    xor eax, eax ; 0040a78a
L_0040a78c:
    mov dword ptr [esi + 0984h], ebx ; 0040a78c
L_0040a792:
    mov dword ptr [esi + 0868h], 0 ; 0040a792
L_0040a79c:
    rep stosd  ; 0040a79c
L_0040a79e:
    mov dword ptr [esi + 024h], eax ; 0040a79e
L_0040a7a1:
    mov dword ptr [esi + 028h], eax ; 0040a7a1
L_0040a7a4:
    push esi ; 0040a7a4
L_0040a7a5:
    mov byte ptr [esi + 087ch], al ; 0040a7a5
L_0040a7ab:
    mov dword ptr [esi + 038h], ebx ; 0040a7ab
L_0040a7ae:
    mov dword ptr [esi + 03ch], ebx ; 0040a7ae
L_0040a7b1:
    mov dword ptr [esi + 040h], ebx ; 0040a7b1
L_0040a7b4:
    call L_0040b9f0 ; 0040a7b4
L_0040a7b9:
    add esp, 4 ; 0040a7b9
L_0040a7bc:
    mov dword ptr [esi + 0433ch], 0 ; 0040a7bc
L_0040a7c6:
    pop edi ; 0040a7c6
L_0040a7c7:
    pop esi ; 0040a7c7
L_0040a7c8:
    pop ebx ; 0040a7c8
L_0040a7c9:
    retn  ; 0040a7c9
L_0040a7ca:
    db 0cch
L_0040a7cb:
    db 0cch
L_0040a7cc:
    db 0cch
L_0040a7cd:
    db 0cch
L_0040a7ce:
    db 0cch
L_0040a7cf:
    db 0cch
L_0040a7d0:
    push ebx ; 0040a7d0
L_0040a7d1:
    push esi ; 0040a7d1
L_0040a7d2:
    mov esi, dword ptr [esp + 0ch] ; 0040a7d2
L_0040a7d6:
    push edi ; 0040a7d6
L_0040a7d7:
    mov dword ptr [esi + 8], 0 ; 0040a7d7
L_0040a7de:
    mov dword ptr [esi + 04334h], 0 ; 0040a7de
L_0040a7e8:
    mov dword ptr [esi + 04338h], 0 ; 0040a7e8
L_0040a7f2:
    mov dword ptr [esi + 0253ch], 0 ; 0040a7f2
L_0040a7fc:
    mov dword ptr [esi + 030h], 0 ; 0040a7fc
L_0040a803:
    mov dword ptr [esi + 02ch], 0 ; 0040a803
L_0040a80a:
    mov edx, 4 ; 0040a80a
L_0040a80f:
    mov dword ptr [esi], 0 ; 0040a80f
L_0040a815:
    mov dword ptr [esi + 034h], 0 ; 0040a815
L_0040a81c:
    mov dword ptr [esi + 085ch], 0 ; 0040a81c
L_0040a826:
    mov dword ptr [esi + 0870h], 4 ; 0040a826
L_0040a830:
    mov edi, dword ptr [esi + 4] ; 0040a830
L_0040a833:
    mov eax, dword ptr [esi + 0870h] ; 0040a833
L_0040a839:
    mov ebx, 1 ; 0040a839
L_0040a83e:
    inc eax ; 0040a83e
L_0040a83f:
    mov dword ptr [esi + 0870h], eax ; 0040a83f
L_0040a845:
    mov cl, byte ptr [eax + _kb_rdata + 6167] ; 0040a845
L_0040a84b:
    shl ebx, cl ; 0040a84b
L_0040a84d:
    add edx, ebx ; 0040a84d
L_0040a84f:
    cmp edx, edi ; 0040a84f
L_0040a851:
    jb L_0040a833 ; 0040a851
L_0040a853:
    push 040000h ; 0040a853
L_0040a858:
    call dword ptr [esi + 04344h] ; 0040a858
L_0040a85e:
    add esp, 4 ; 0040a85e
L_0040a861:
    mov dword ptr [esi + 8], eax ; 0040a861
L_0040a864:
    test eax, eax ; 0040a864
L_0040a866:
    jne L_0040a877 ; 0040a866
L_0040a868:
    push esi ; 0040a868
L_0040a869:
    call L_0040a9f0 ; 0040a869
L_0040a86e:
    add esp, 4 ; 0040a86e
L_0040a871:
    xor eax, eax ; 0040a871
L_0040a873:
    pop edi ; 0040a873
L_0040a874:
    pop esi ; 0040a874
L_0040a875:
    pop ebx ; 0040a875
L_0040a876:
    retn  ; 0040a876
L_0040a877:
    mov eax, dword ptr [esi + 0988h] ; 0040a877
L_0040a87d:
    add eax, dword ptr [esi + 4] ; 0040a87d
L_0040a880:
    lea ecx, [eax*4 + 04404h] ; 0040a880
L_0040a887:
    push ecx ; 0040a887
L_0040a888:
    call dword ptr [esi + 04344h] ; 0040a888
L_0040a88e:
    add esp, 4 ; 0040a88e
L_0040a891:
    mov dword ptr [esi + 04334h], eax ; 0040a891
L_0040a897:
    test eax, eax ; 0040a897
L_0040a899:
    jne L_0040a8aa ; 0040a899
L_0040a89b:
    push esi ; 0040a89b
L_0040a89c:
    call L_0040a9f0 ; 0040a89c
L_0040a8a1:
    add esp, 4 ; 0040a8a1
L_0040a8a4:
    xor eax, eax ; 0040a8a4
L_0040a8a6:
    pop edi ; 0040a8a6
L_0040a8a7:
    pop esi ; 0040a8a7
L_0040a8a8:
    pop ebx ; 0040a8a8
L_0040a8a9:
    retn  ; 0040a8a9
L_0040a8aa:
    mov eax, dword ptr [esi + 0988h] ; 0040a8aa
L_0040a8b0:
    add eax, dword ptr [esi + 4] ; 0040a8b0
L_0040a8b3:
    lea ecx, [eax*4 + 04404h] ; 0040a8b3
L_0040a8ba:
    push ecx ; 0040a8ba
L_0040a8bb:
    call dword ptr [esi + 04344h] ; 0040a8bb
L_0040a8c1:
    add esp, 4 ; 0040a8c1
L_0040a8c4:
    mov dword ptr [esi + 04338h], eax ; 0040a8c4
L_0040a8ca:
    test eax, eax ; 0040a8ca
L_0040a8cc:
    jne L_0040a8dd ; 0040a8cc
L_0040a8ce:
    push esi ; 0040a8ce
L_0040a8cf:
    call L_0040a9f0 ; 0040a8cf
L_0040a8d4:
    add esp, 4 ; 0040a8d4
L_0040a8d7:
    xor eax, eax ; 0040a8d7
L_0040a8d9:
    pop edi ; 0040a8d9
L_0040a8da:
    pop esi ; 0040a8da
L_0040a8db:
    pop ebx ; 0040a8db
L_0040a8dc:
    retn  ; 0040a8dc
L_0040a8dd:
    mov eax, dword ptr [esi + 4] ; 0040a8dd
L_0040a8e0:
    add eax, dword ptr [esi + 0988h] ; 0040a8e0
L_0040a8e6:
    add eax, 01101h ; 0040a8e6
L_0040a8eb:
    push eax ; 0040a8eb
L_0040a8ec:
    call dword ptr [esi + 04344h] ; 0040a8ec
L_0040a8f2:
    add esp, 4 ; 0040a8f2
L_0040a8f5:
    mov dword ptr [esi + 04330h], eax ; 0040a8f5
L_0040a8fb:
    test eax, eax ; 0040a8fb
L_0040a8fd:
    jne L_0040a90e ; 0040a8fd
L_0040a8ff:
    push esi ; 0040a8ff
L_0040a900:
    call L_0040a9f0 ; 0040a900
L_0040a905:
    add esp, 4 ; 0040a905
L_0040a908:
    xor eax, eax ; 0040a908
L_0040a90a:
    pop edi ; 0040a90a
L_0040a90b:
    pop esi ; 0040a90b
L_0040a90c:
    pop ebx ; 0040a90c
L_0040a90d:
    retn  ; 0040a90d
L_0040a90e:
    push 010000h ; 0040a90e
L_0040a913:
    mov dword ptr [esi], eax ; 0040a913
L_0040a915:
    call dword ptr [esi + 04344h] ; 0040a915
L_0040a91b:
    add esp, 4 ; 0040a91b
L_0040a91e:
    mov dword ptr [esi + 030h], eax ; 0040a91e
L_0040a921:
    test eax, eax ; 0040a921
L_0040a923:
    jne L_0040a934 ; 0040a923
L_0040a925:
    push esi ; 0040a925
L_0040a926:
    call L_0040a9f0 ; 0040a926
L_0040a92b:
    add esp, 4 ; 0040a92b
L_0040a92e:
    xor eax, eax ; 0040a92e
L_0040a930:
    pop edi ; 0040a930
L_0040a931:
    pop esi ; 0040a931
L_0040a932:
    pop ebx ; 0040a932
L_0040a933:
    retn  ; 0040a933
L_0040a934:
    push 020000h ; 0040a934
L_0040a939:
    call dword ptr [esi + 04344h] ; 0040a939
L_0040a93f:
    add esp, 4 ; 0040a93f
L_0040a942:
    mov dword ptr [esi + 02ch], eax ; 0040a942
L_0040a945:
    test eax, eax ; 0040a945
L_0040a947:
    jne L_0040a958 ; 0040a947
L_0040a949:
    push esi ; 0040a949
L_0040a94a:
    call L_0040a9f0 ; 0040a94a
L_0040a94f:
    add esp, 4 ; 0040a94f
L_0040a952:
    xor eax, eax ; 0040a952
L_0040a954:
    pop edi ; 0040a954
L_0040a955:
    pop esi ; 0040a955
L_0040a956:
    pop ebx ; 0040a956
L_0040a957:
    retn  ; 0040a957
L_0040a958:
    push 02000h ; 0040a958
L_0040a95d:
    call dword ptr [esi + 04344h] ; 0040a95d
L_0040a963:
    add esp, 4 ; 0040a963
L_0040a966:
    mov dword ptr [esi + 034h], eax ; 0040a966
L_0040a969:
    test eax, eax ; 0040a969
L_0040a96b:
    push esi ; 0040a96b
L_0040a96c:
    jne L_0040a97c ; 0040a96c
L_0040a96e:
    call L_0040a9f0 ; 0040a96e
L_0040a973:
    add esp, 4 ; 0040a973
L_0040a976:
    xor eax, eax ; 0040a976
L_0040a978:
    pop edi ; 0040a978
L_0040a979:
    pop esi ; 0040a979
L_0040a97a:
    pop ebx ; 0040a97a
L_0040a97b:
    retn  ; 0040a97b
L_0040a97c:
    call L_0040c050 ; 0040a97c
L_0040a981:
    add esp, 4 ; 0040a981
L_0040a984:
    push esi ; 0040a984
L_0040a985:
    call L_0040c100 ; 0040a985
L_0040a98a:
    add esp, 4 ; 0040a98a
L_0040a98d:
    push esi ; 0040a98d
L_0040a98e:
    call L_0040b980 ; 0040a98e
L_0040a993:
    add esp, 4 ; 0040a993
L_0040a996:
    test eax, eax ; 0040a996
L_0040a998:
    jne L_0040a9a9 ; 0040a998
L_0040a99a:
    push esi ; 0040a99a
L_0040a99b:
    call L_0040a9f0 ; 0040a99b
L_0040a9a0:
    add esp, 4 ; 0040a9a0
L_0040a9a3:
    xor eax, eax ; 0040a9a3
L_0040a9a5:
    pop edi ; 0040a9a5
L_0040a9a6:
    pop esi ; 0040a9a6
L_0040a9a7:
    pop ebx ; 0040a9a7
L_0040a9a8:
    retn  ; 0040a9a8
L_0040a9a9:
    push 018150h ; 0040a9a9
L_0040a9ae:
    call dword ptr [esi + 04344h] ; 0040a9ae
L_0040a9b4:
    add esp, 4 ; 0040a9b4
L_0040a9b7:
    mov dword ptr [esi + 0253ch], eax ; 0040a9b7
L_0040a9bd:
    test eax, eax ; 0040a9bd
L_0040a9bf:
    jne L_0040a9d0 ; 0040a9bf
L_0040a9c1:
    push esi ; 0040a9c1
L_0040a9c2:
    call L_0040a9f0 ; 0040a9c2
L_0040a9c7:
    add esp, 4 ; 0040a9c7
L_0040a9ca:
    xor eax, eax ; 0040a9ca
L_0040a9cc:
    pop edi ; 0040a9cc
L_0040a9cd:
    pop esi ; 0040a9cd
L_0040a9ce:
    pop ebx ; 0040a9ce
L_0040a9cf:
    retn  ; 0040a9cf
L_0040a9d0:
    mov eax, 1 ; 0040a9d0
L_0040a9d5:
    pop edi ; 0040a9d5
L_0040a9d6:
    mov dword ptr [esi + 0878h], 1 ; 0040a9d6
L_0040a9e0:
    pop esi ; 0040a9e0
L_0040a9e1:
    pop ebx ; 0040a9e1
L_0040a9e2:
    retn  ; 0040a9e2
L_0040a9e3:
    db 0cch
L_0040a9e4:
    db 0cch
L_0040a9e5:
    db 0cch
L_0040a9e6:
    db 0cch
L_0040a9e7:
    db 0cch
L_0040a9e8:
    db 0cch
L_0040a9e9:
    db 0cch
L_0040a9ea:
    db 0cch
L_0040a9eb:
    db 0cch
L_0040a9ec:
    db 0cch
L_0040a9ed:
    db 0cch
L_0040a9ee:
    db 0cch
L_0040a9ef:
    db 0cch
L_0040a9f0:
    push esi ; 0040a9f0
L_0040a9f1:
    mov esi, dword ptr [esp + 8] ; 0040a9f1
L_0040a9f5:
    mov eax, dword ptr [esi + 8] ; 0040a9f5
L_0040a9f8:
    test eax, eax ; 0040a9f8
L_0040a9fa:
    je L_0040aa0d ; 0040a9fa
L_0040a9fc:
    push eax ; 0040a9fc
L_0040a9fd:
    call dword ptr [esi + 04348h] ; 0040a9fd
L_0040aa03:
    mov dword ptr [esi + 8], 0 ; 0040aa03
L_0040aa0a:
    add esp, 4 ; 0040aa0a
L_0040aa0d:
    mov eax, dword ptr [esi + 04334h] ; 0040aa0d
L_0040aa13:
    test eax, eax ; 0040aa13
L_0040aa15:
    je L_0040aa2b ; 0040aa15
L_0040aa17:
    push eax ; 0040aa17
L_0040aa18:
    call dword ptr [esi + 04348h] ; 0040aa18
L_0040aa1e:
    mov dword ptr [esi + 04334h], 0 ; 0040aa1e
L_0040aa28:
    add esp, 4 ; 0040aa28
L_0040aa2b:
    mov eax, dword ptr [esi + 04338h] ; 0040aa2b
L_0040aa31:
    test eax, eax ; 0040aa31
L_0040aa33:
    je L_0040aa49 ; 0040aa33
L_0040aa35:
    push eax ; 0040aa35
L_0040aa36:
    call dword ptr [esi + 04348h] ; 0040aa36
L_0040aa3c:
    mov dword ptr [esi + 04338h], 0 ; 0040aa3c
L_0040aa46:
    add esp, 4 ; 0040aa46
L_0040aa49:
    mov eax, dword ptr [esi + 04330h] ; 0040aa49
L_0040aa4f:
    test eax, eax ; 0040aa4f
L_0040aa51:
    je L_0040aa6d ; 0040aa51
L_0040aa53:
    push eax ; 0040aa53
L_0040aa54:
    call dword ptr [esi + 04348h] ; 0040aa54
L_0040aa5a:
    add esp, 4 ; 0040aa5a
L_0040aa5d:
    mov dword ptr [esi], 0 ; 0040aa5d
L_0040aa63:
    mov dword ptr [esi + 04330h], 0 ; 0040aa63
L_0040aa6d:
    mov eax, dword ptr [esi + 030h] ; 0040aa6d
L_0040aa70:
    test eax, eax ; 0040aa70
L_0040aa72:
    je L_0040aa85 ; 0040aa72
L_0040aa74:
    push eax ; 0040aa74
L_0040aa75:
    call dword ptr [esi + 04348h] ; 0040aa75
L_0040aa7b:
    mov dword ptr [esi + 030h], 0 ; 0040aa7b
L_0040aa82:
    add esp, 4 ; 0040aa82
L_0040aa85:
    mov eax, dword ptr [esi + 02ch] ; 0040aa85
L_0040aa88:
    test eax, eax ; 0040aa88
L_0040aa8a:
    je L_0040aa9d ; 0040aa8a
L_0040aa8c:
    push eax ; 0040aa8c
L_0040aa8d:
    call dword ptr [esi + 04348h] ; 0040aa8d
L_0040aa93:
    mov dword ptr [esi + 02ch], 0 ; 0040aa93
L_0040aa9a:
    add esp, 4 ; 0040aa9a
L_0040aa9d:
    mov eax, dword ptr [esi + 034h] ; 0040aa9d
L_0040aaa0:
    test eax, eax ; 0040aaa0
L_0040aaa2:
    je L_0040aab5 ; 0040aaa2
L_0040aaa4:
    push eax ; 0040aaa4
L_0040aaa5:
    call dword ptr [esi + 04348h] ; 0040aaa5
L_0040aaab:
    mov dword ptr [esi + 034h], 0 ; 0040aaab
L_0040aab2:
    add esp, 4 ; 0040aab2
L_0040aab5:
    mov eax, dword ptr [esi + 0253ch] ; 0040aab5
L_0040aabb:
    test eax, eax ; 0040aabb
L_0040aabd:
    je L_0040aad3 ; 0040aabd
L_0040aabf:
    push eax ; 0040aabf
L_0040aac0:
    call dword ptr [esi + 04348h] ; 0040aac0
L_0040aac6:
    mov dword ptr [esi + 0253ch], 0 ; 0040aac6
L_0040aad0:
    add esp, 4 ; 0040aad0
L_0040aad3:
    push esi ; 0040aad3
L_0040aad4:
    call L_0040b9c0 ; 0040aad4
L_0040aad9:
    add esp, 4 ; 0040aad9
L_0040aadc:
    mov dword ptr [esi + 0878h], 0 ; 0040aadc
L_0040aae6:
    pop esi ; 0040aae6
L_0040aae7:
    retn  ; 0040aae7
L_0040aae8:
    db 0cch
L_0040aae9:
    db 0cch
L_0040aaea:
    db 0cch
L_0040aaeb:
    db 0cch
L_0040aaec:
    db 0cch
L_0040aaed:
    db 0cch
L_0040aaee:
    db 0cch
L_0040aaef:
    db 0cch
L_0040aaf0:
    sub esp, 8 ; 0040aaf0
L_0040aaf3:
    lea eax, [esp + 4] ; 0040aaf3
L_0040aaf7:
    push ebx ; 0040aaf7
L_0040aaf8:
    mov ebx, dword ptr [esp + 010h] ; 0040aaf8
L_0040aafc:
    push esi ; 0040aafc
L_0040aafd:
    lea ecx, [esp + 8] ; 0040aafd
L_0040ab01:
    push edi ; 0040ab01
L_0040ab02:
    push eax ; 0040ab02
L_0040ab03:
    mov edx, dword ptr [ebx + 028h] ; 0040ab03
L_0040ab06:
    push ecx ; 0040ab06
L_0040ab07:
    mov eax, dword ptr [ebx + 024h] ; 0040ab07
L_0040ab0a:
    push edx ; 0040ab0a
L_0040ab0b:
    push eax ; 0040ab0b
L_0040ab0c:
    push 0 ; 0040ab0c
L_0040ab0e:
    push ebx ; 0040ab0e
L_0040ab0f:
    call L_0040c380 ; 0040ab0f
L_0040ab14:
    mov ecx, dword ptr [esp + 028h] ; 0040ab14
L_0040ab18:
    mov edx, dword ptr [esp + 024h] ; 0040ab18
L_0040ab1c:
    add esp, 018h ; 0040ab1c
L_0040ab1f:
    push ecx ; 0040ab1f
L_0040ab20:
    push edx ; 0040ab20
L_0040ab21:
    push ebx ; 0040ab21
L_0040ab22:
    call L_0040abf0 ; 0040ab22
L_0040ab27:
    add esp, 0ch ; 0040ab27
L_0040ab2a:
    mov edx, dword ptr [ebx + 024h] ; 0040ab2a
L_0040ab2d:
    mov edi, dword ptr [ebx + 034h] ; 0040ab2d
L_0040ab30:
    cmp dword ptr [esp + 0ch], edx ; 0040ab30
L_0040ab34:
    jne L_0040ab4a ; 0040ab34
L_0040ab36:
    xor eax, eax ; 0040ab36
L_0040ab38:
    mov ecx, 0800h ; 0040ab38
L_0040ab3d:
    rep stosd  ; 0040ab3d
L_0040ab3f:
    mov dword ptr [ebx + 024h], eax ; 0040ab3f
L_0040ab42:
    mov dword ptr [ebx + 028h], eax ; 0040ab42
L_0040ab45:
    jmp L_0040abd9 ; 0040ab45
L_0040ab4a:
    shr edx, 3 ; 0040ab4a
L_0040ab4d:
    mov eax, dword ptr [esp + 0ch] ; 0040ab4d
L_0040ab51:
    shr eax, 3 ; 0040ab51
L_0040ab54:
    sub edx, eax ; 0040ab54
L_0040ab56:
    lea esi, [eax + edi] ; 0040ab56
L_0040ab59:
    inc edx ; 0040ab59
L_0040ab5a:
    mov ecx, edx ; 0040ab5a
L_0040ab5c:
    shr ecx, 2 ; 0040ab5c
L_0040ab5f:
    rep movsd  ; 0040ab5f
L_0040ab61:
    mov ecx, edx ; 0040ab61
L_0040ab63:
    mov edx, 01fffh ; 0040ab63
L_0040ab68:
    and ecx, 3 ; 0040ab68
L_0040ab6b:
    rep movsb  ; 0040ab6b
L_0040ab6d:
    mov eax, dword ptr [ebx + 024h] ; 0040ab6d
L_0040ab70:
    mov ecx, dword ptr [ebx + 034h] ; 0040ab70
L_0040ab73:
    sub eax, dword ptr [esp + 0ch] ; 0040ab73
L_0040ab77:
    shr eax, 3 ; 0040ab77
L_0040ab7a:
    sub edx, eax ; 0040ab7a
L_0040ab7c:
    lea edi, [ecx + eax + 1] ; 0040ab7c
L_0040ab80:
    xor eax, eax ; 0040ab80
L_0040ab82:
    mov ecx, edx ; 0040ab82
L_0040ab84:
    shr ecx, 2 ; 0040ab84
L_0040ab87:
    rep stosd  ; 0040ab87
L_0040ab89:
    mov ecx, edx ; 0040ab89
L_0040ab8b:
    and ecx, 3 ; 0040ab8b
L_0040ab8e:
    rep stosb  ; 0040ab8e
L_0040ab90:
    mov edi, dword ptr [ebx + 030h] ; 0040ab90
L_0040ab93:
    mov edx, dword ptr [ebx + 024h] ; 0040ab93
L_0040ab96:
    sub edx, dword ptr [esp + 0ch] ; 0040ab96
L_0040ab9a:
    mov esi, dword ptr [esp + 0ch] ; 0040ab9a
L_0040ab9e:
    add esi, edi ; 0040ab9e
L_0040aba0:
    mov ecx, edx ; 0040aba0
L_0040aba2:
    shr ecx, 2 ; 0040aba2
L_0040aba5:
    rep movsd  ; 0040aba5
L_0040aba7:
    mov ecx, edx ; 0040aba7
L_0040aba9:
    and ecx, 3 ; 0040aba9
L_0040abac:
    rep movsb  ; 0040abac
L_0040abae:
    mov edi, dword ptr [ebx + 02ch] ; 0040abae
L_0040abb1:
    mov eax, dword ptr [ebx + 028h] ; 0040abb1
L_0040abb4:
    sub eax, dword ptr [esp + 010h] ; 0040abb4
L_0040abb8:
    mov edx, dword ptr [esp + 010h] ; 0040abb8
L_0040abbc:
    lea ecx, [eax*4] ; 0040abbc
L_0040abc3:
    lea esi, [edi + edx*4] ; 0040abc3
L_0040abc6:
    shr ecx, 2 ; 0040abc6
L_0040abc9:
    rep movsd  ; 0040abc9
L_0040abcb:
    mov ecx, dword ptr [esp + 0ch] ; 0040abcb
L_0040abcf:
    mov edx, dword ptr [esp + 010h] ; 0040abcf
L_0040abd3:
    sub dword ptr [ebx + 024h], ecx ; 0040abd3
L_0040abd6:
    sub dword ptr [ebx + 028h], edx ; 0040abd6
L_0040abd9:
    push ebx ; 0040abd9
L_0040abda:
    call L_0040bc60 ; 0040abda
L_0040abdf:
    add esp, 4 ; 0040abdf
L_0040abe2:
    pop edi ; 0040abe2
L_0040abe3:
    pop esi ; 0040abe3
L_0040abe4:
    pop ebx ; 0040abe4
L_0040abe5:
    add esp, 8 ; 0040abe5
L_0040abe8:
    retn  ; 0040abe8
L_0040abe9:
    db 0cch
L_0040abea:
    db 0cch
L_0040abeb:
    db 0cch
L_0040abec:
    db 0cch
L_0040abed:
    db 0cch
L_0040abee:
    db 0cch
L_0040abef:
    db 0cch
L_0040abf0:
    sub esp, 4 ; 0040abf0
L_0040abf3:
    push ebx ; 0040abf3
L_0040abf4:
    push esi ; 0040abf4
L_0040abf5:
    push edi ; 0040abf5
L_0040abf6:
    push ebp ; 0040abf6
L_0040abf7:
    mov ebp, dword ptr [esp + 01ch] ; 0040abf7
L_0040abfb:
    mov edi, dword ptr [esp + 018h] ; 0040abfb
L_0040abff:
    push ebp ; 0040abff
L_0040ac00:
    push 0 ; 0040ac00
L_0040ac02:
    push 0 ; 0040ac02
L_0040ac04:
    push edi ; 0040ac04
L_0040ac05:
    call L_0040c1e0 ; 0040ac05
L_0040ac0a:
    mov esi, dword ptr [esp + 030h] ; 0040ac0a
L_0040ac0e:
    mov dword ptr [esp + 020h], eax ; 0040ac0e
L_0040ac12:
    add esp, 010h ; 0040ac12
L_0040ac15:
    push esi ; 0040ac15
L_0040ac16:
    push edi ; 0040ac16
L_0040ac17:
    call L_0040c130 ; 0040ac17
L_0040ac1c:
    add esp, 8 ; 0040ac1c
L_0040ac1f:
    mov ebx, eax ; 0040ac1f
L_0040ac21:
    push 1 ; 0040ac21
L_0040ac23:
    push edi ; 0040ac23
L_0040ac24:
    call L_0040bbe0 ; 0040ac24
L_0040ac29:
    add esp, 8 ; 0040ac29
L_0040ac2c:
    push edi ; 0040ac2c
L_0040ac2d:
    call L_0040ca40 ; 0040ac2d
L_0040ac32:
    add esp, 4 ; 0040ac32
L_0040ac35:
    cmp eax, dword ptr [esp + 010h] ; 0040ac35
L_0040ac39:
    jb L_0040ac4e ; 0040ac39
L_0040ac3b:
    mov eax, dword ptr [edi + 0990h] ; 0040ac3b
L_0040ac41:
    cmp dword ptr [edi + 098ch], eax ; 0040ac41
L_0040ac47:
    ja L_0040ac4e ; 0040ac47
L_0040ac49:
    mov ebx, 3 ; 0040ac49
L_0040ac4e:
    xor eax, eax ; 0040ac4e
L_0040ac50:
    mov al, bl ; 0040ac50
L_0040ac52:
    push eax ; 0040ac52
L_0040ac53:
    push 3 ; 0040ac53
L_0040ac55:
    push edi ; 0040ac55
L_0040ac56:
    call L_0040b900 ; 0040ac56
L_0040ac5b:
    mov eax, dword ptr [esp + 01ch] ; 0040ac5b
L_0040ac5f:
    add esp, 0ch ; 0040ac5f
L_0040ac62:
    and eax, 0ff0000h ; 0040ac62
L_0040ac67:
    shr eax, 010h ; 0040ac67
L_0040ac6a:
    push eax ; 0040ac6a
L_0040ac6b:
    push 8 ; 0040ac6b
L_0040ac6d:
    push edi ; 0040ac6d
L_0040ac6e:
    call L_0040b900 ; 0040ac6e
L_0040ac73:
    add esp, 0ch ; 0040ac73
L_0040ac76:
    xor eax, eax ; 0040ac76
L_0040ac78:
    mov al, byte ptr [esp + 011h] ; 0040ac78
L_0040ac7c:
    push eax ; 0040ac7c
L_0040ac7d:
    push 8 ; 0040ac7d
L_0040ac7f:
    push edi ; 0040ac7f
L_0040ac80:
    call L_0040b900 ; 0040ac80
L_0040ac85:
    mov eax, dword ptr [esp + 01ch] ; 0040ac85
L_0040ac89:
    add esp, 0ch ; 0040ac89
L_0040ac8c:
    and eax, 0ffh ; 0040ac8c
L_0040ac91:
    push eax ; 0040ac91
L_0040ac92:
    push 8 ; 0040ac92
L_0040ac94:
    push edi ; 0040ac94
L_0040ac95:
    call L_0040b900 ; 0040ac95
L_0040ac9a:
    add esp, 0ch ; 0040ac9a
L_0040ac9d:
    cmp ebx, 1 ; 0040ac9d
L_0040aca0:
    jne L_0040acc1 ; 0040aca0
L_0040aca2:
    push edi ; 0040aca2
L_0040aca3:
    call L_0040bd10 ; 0040aca3
L_0040aca8:
    add esp, 4 ; 0040aca8
L_0040acab:
    push ebp ; 0040acab
L_0040acac:
    push edi ; 0040acac
L_0040acad:
    call L_0040cb10 ; 0040acad
L_0040acb2:
    add esp, 8 ; 0040acb2
L_0040acb5:
    push esi ; 0040acb5
L_0040acb6:
    push edi ; 0040acb6
L_0040acb7:
    call L_0040c8f0 ; 0040acb7
L_0040acbc:
    add esp, 8 ; 0040acbc
L_0040acbf:
    jmp L_0040ad12 ; 0040acbf
L_0040acc1:
    cmp ebx, 2 ; 0040acc1
L_0040acc4:
    jne L_0040acee ; 0040acc4
L_0040acc6:
    push edi ; 0040acc6
L_0040acc7:
    call L_0040c000 ; 0040acc7
L_0040accc:
    add esp, 4 ; 0040accc
L_0040accf:
    push edi ; 0040accf
L_0040acd0:
    call L_0040bd10 ; 0040acd0
L_0040acd5:
    add esp, 4 ; 0040acd5
L_0040acd8:
    push ebp ; 0040acd8
L_0040acd9:
    push edi ; 0040acd9
L_0040acda:
    call L_0040ced0 ; 0040acda
L_0040acdf:
    add esp, 8 ; 0040acdf
L_0040ace2:
    push esi ; 0040ace2
L_0040ace3:
    push edi ; 0040ace3
L_0040ace4:
    call L_0040c8f0 ; 0040ace4
L_0040ace9:
    add esp, 8 ; 0040ace9
L_0040acec:
    jmp L_0040ad12 ; 0040acec
L_0040acee:
    cmp ebx, 3 ; 0040acee
L_0040acf1:
    jne L_0040ad12 ; 0040acf1
L_0040acf3:
    push esi ; 0040acf3
L_0040acf4:
    push edi ; 0040acf4
L_0040acf5:
    call L_0040c8f0 ; 0040acf5
L_0040acfa:
    mov eax, dword ptr [esp + 018h] ; 0040acfa
L_0040acfe:
    add esp, 8 ; 0040acfe
L_0040ad01:
    mov ecx, dword ptr [edi + 0990h] ; 0040ad01
L_0040ad07:
    push eax ; 0040ad07
L_0040ad08:
    push ecx ; 0040ad08
L_0040ad09:
    push edi ; 0040ad09
L_0040ad0a:
    call L_0040c980 ; 0040ad0a
L_0040ad0f:
    add esp, 0ch ; 0040ad0f
L_0040ad12:
    mov eax, dword ptr [esp + 010h] ; 0040ad12
L_0040ad16:
    pop ebp ; 0040ad16
L_0040ad17:
    add dword ptr [edi + 0990h], eax ; 0040ad17
L_0040ad1d:
    pop edi ; 0040ad1d
L_0040ad1e:
    pop esi ; 0040ad1e
L_0040ad1f:
    pop ebx ; 0040ad1f
L_0040ad20:
    add esp, 4 ; 0040ad20
L_0040ad23:
    retn  ; 0040ad23
L_0040ad24:
    db 0cch
L_0040ad25:
    db 0cch
L_0040ad26:
    db 0cch
L_0040ad27:
    db 0cch
L_0040ad28:
    db 0cch
L_0040ad29:
    db 0cch
L_0040ad2a:
    db 0cch
L_0040ad2b:
    db 0cch
L_0040ad2c:
    db 0cch
L_0040ad2d:
    db 0cch
L_0040ad2e:
    db 0cch
L_0040ad2f:
    db 0cch
L_0040ad30:
    mov eax, dword ptr [esp + 4] ; 0040ad30
L_0040ad34:
    mov cl, byte ptr [eax + 018h] ; 0040ad34
L_0040ad37:
    cmp cl, 020h ; 0040ad37
L_0040ad3a:
    jge L_0040ad4f ; 0040ad3a
L_0040ad3c:
    sub cl, 010h ; 0040ad3c
L_0040ad3f:
    push 0 ; 0040ad3f
L_0040ad41:
    xor edx, edx ; 0040ad41
L_0040ad43:
    mov dl, cl ; 0040ad43
L_0040ad45:
    push edx ; 0040ad45
L_0040ad46:
    push eax ; 0040ad46
L_0040ad47:
    call L_0040b900 ; 0040ad47
L_0040ad4c:
    add esp, 0ch ; 0040ad4c
L_0040ad4f:
    retn  ; 0040ad4f
L_0040ad50:
    push esi ; 0040ad50
L_0040ad51:
    push edi ; 0040ad51
L_0040ad52:
    mov esi, dword ptr [esp + 0ch] ; 0040ad52
L_0040ad56:
    push 0 ; 0040ad56
L_0040ad58:
    push esi ; 0040ad58
L_0040ad59:
    call L_0040bbe0 ; 0040ad59
L_0040ad5e:
    add esp, 8 ; 0040ad5e
L_0040ad61:
    push esi ; 0040ad61
L_0040ad62:
    call L_0040ca40 ; 0040ad62
L_0040ad67:
    add esp, 4 ; 0040ad67
L_0040ad6a:
    mov edi, eax ; 0040ad6a
L_0040ad6c:
    push esi ; 0040ad6c
L_0040ad6d:
    call L_0040bc60 ; 0040ad6d
L_0040ad72:
    add esp, 4 ; 0040ad72
L_0040ad75:
    mov eax, edi ; 0040ad75
L_0040ad77:
    pop edi ; 0040ad77
L_0040ad78:
    pop esi ; 0040ad78
L_0040ad79:
    retn  ; 0040ad79
L_0040ad7a:
    db 0cch
L_0040ad7b:
    db 0cch
L_0040ad7c:
    db 0cch
L_0040ad7d:
    db 0cch
L_0040ad7e:
    db 0cch
L_0040ad7f:
    db 0cch
L_0040ad80:
    push esi ; 0040ad80
L_0040ad81:
    mov esi, dword ptr [esp + 8] ; 0040ad81
L_0040ad85:
    cmp dword ptr [esi + 024h], 0 ; 0040ad85
L_0040ad89:
    jbe L_0040ad9a ; 0040ad89
L_0040ad8b:
    push esi ; 0040ad8b
L_0040ad8c:
    call L_0040aaf0 ; 0040ad8c
L_0040ad91:
    add esp, 4 ; 0040ad91
L_0040ad94:
    cmp dword ptr [esi + 024h], 0 ; 0040ad94
L_0040ad98:
    ja L_0040ad8b ; 0040ad98
L_0040ad9a:
    push esi ; 0040ad9a
L_0040ad9b:
    call L_0040d3c0 ; 0040ad9b
L_0040ada0:
    add esp, 4 ; 0040ada0
L_0040ada3:
    pop esi ; 0040ada3
L_0040ada4:
    retn  ; 0040ada4
L_0040ada5:
    db 0cch
L_0040ada6:
    db 0cch
L_0040ada7:
    db 0cch
L_0040ada8:
    db 0cch
L_0040ada9:
    db 0cch
L_0040adaa:
    db 0cch
L_0040adab:
    db 0cch
L_0040adac:
    db 0cch
L_0040adad:
    db 0cch
L_0040adae:
    db 0cch
L_0040adaf:
    db 0cch
L_0040adb0:
    push esi ; 0040adb0
L_0040adb1:
    push 08000h ; 0040adb1
L_0040adb6:
    mov esi, dword ptr [esp + 0ch] ; 0040adb6
L_0040adba:
    mov eax, dword ptr [esi + 0458h] ; 0040adba
L_0040adc0:
    sub eax, dword ptr [esi + 04330h] ; 0040adc0
L_0040adc6:
    add eax, dword ptr [esi] ; 0040adc6
L_0040adc8:
    push eax ; 0040adc8
L_0040adc9:
    push esi ; 0040adc9
L_0040adca:
    call L_0040ba00 ; 0040adca
L_0040adcf:
    add esp, 0ch ; 0040adcf
L_0040add2:
    test eax, eax ; 0040add2
L_0040add4:
    jle L_0040ade0 ; 0040add4
L_0040add6:
    push eax ; 0040add6
L_0040add7:
    push esi ; 0040add7
L_0040add8:
    call L_0040adf0 ; 0040add8
L_0040addd:
    add esp, 8 ; 0040addd
L_0040ade0:
    pop esi ; 0040ade0
L_0040ade1:
    retn  ; 0040ade1
L_0040ade2:
    db 0cch
L_0040ade3:
    db 0cch
L_0040ade4:
    db 0cch
L_0040ade5:
    db 0cch
L_0040ade6:
    db 0cch
L_0040ade7:
    db 0cch
L_0040ade8:
    db 0cch
L_0040ade9:
    db 0cch
L_0040adea:
    db 0cch
L_0040adeb:
    db 0cch
L_0040adec:
    db 0cch
L_0040aded:
    db 0cch
L_0040adee:
    db 0cch
L_0040adef:
    db 0cch
L_0040adf0:
    sub esp, 024h ; 0040adf0
L_0040adf3:
    push ebx ; 0040adf3
L_0040adf4:
    push esi ; 0040adf4
L_0040adf5:
    mov ebx, dword ptr [esp + 030h] ; 0040adf5
L_0040adf9:
    push edi ; 0040adf9
L_0040adfa:
    push ebp ; 0040adfa
L_0040adfb:
    mov eax, dword ptr [ebx + 0458h] ; 0040adfb
L_0040ae01:
    mov dword ptr [esp + 010h], eax ; 0040ae01
L_0040ae05:
    add eax, dword ptr [esp + 03ch] ; 0040ae05
L_0040ae09:
    cmp dword ptr [ebx + 0984h], 0 ; 0040ae09
L_0040ae10:
    mov dword ptr [esp + 024h], eax ; 0040ae10
L_0040ae14:
    je L_0040ae7d ; 0040ae14
L_0040ae16:
    mov dword ptr [ebx + 0984h], 0 ; 0040ae16
L_0040ae20:
    mov dword ptr [ebx + 02530h], 02710h ; 0040ae20
L_0040ae2a:
    cmp dword ptr [ebx + 0874h], 0 ; 0040ae2a
L_0040ae31:
    je L_0040ae6e ; 0040ae31
L_0040ae33:
    push 1 ; 0040ae33
L_0040ae35:
    push 1 ; 0040ae35
L_0040ae37:
    push ebx ; 0040ae37
L_0040ae38:
    call L_0040b900 ; 0040ae38
L_0040ae3d:
    add esp, 0ch ; 0040ae3d
L_0040ae40:
    mov eax, dword ptr [ebx + 0874h] ; 0040ae40
L_0040ae46:
    shr eax, 010h ; 0040ae46
L_0040ae49:
    push eax ; 0040ae49
L_0040ae4a:
    push 010h ; 0040ae4a
L_0040ae4c:
    push ebx ; 0040ae4c
L_0040ae4d:
    call L_0040b900 ; 0040ae4d
L_0040ae52:
    add esp, 0ch ; 0040ae52
L_0040ae55:
    mov eax, dword ptr [ebx + 0874h] ; 0040ae55
L_0040ae5b:
    and eax, 0ffffh ; 0040ae5b
L_0040ae60:
    push eax ; 0040ae60
L_0040ae61:
    push 010h ; 0040ae61
L_0040ae63:
    push ebx ; 0040ae63
L_0040ae64:
    call L_0040b900 ; 0040ae64
L_0040ae69:
    add esp, 0ch ; 0040ae69
L_0040ae6c:
    jmp L_0040aea0 ; 0040ae6c
L_0040ae6e:
    push 0 ; 0040ae6e
L_0040ae70:
    push 1 ; 0040ae70
L_0040ae72:
    push ebx ; 0040ae72
L_0040ae73:
    call L_0040b900 ; 0040ae73
L_0040ae78:
    add esp, 0ch ; 0040ae78
L_0040ae7b:
    jmp L_0040aea0 ; 0040ae7b
L_0040ae7d:
    mov esi, 032h ; 0040ae7d
L_0040ae82:
    mov eax, dword ptr [esp + 010h] ; 0040ae82
L_0040ae86:
    sub eax, dword ptr [ebx + 4] ; 0040ae86
L_0040ae89:
    add eax, 4 ; 0040ae89
L_0040ae8c:
    push eax ; 0040ae8c
L_0040ae8d:
    mov eax, dword ptr [esp + 014h] ; 0040ae8d
L_0040ae91:
    sub eax, esi ; 0040ae91
L_0040ae93:
    push eax ; 0040ae93
L_0040ae94:
    push ebx ; 0040ae94
L_0040ae95:
    call L_0040d420 ; 0040ae95
L_0040ae9a:
    add esp, 0ch ; 0040ae9a
L_0040ae9d:
    dec esi ; 0040ae9d
L_0040ae9e:
    jne L_0040ae82 ; 0040ae9e
L_0040aea0:
    mov eax, dword ptr [esp + 024h] ; 0040aea0
L_0040aea4:
    cmp eax, dword ptr [esp + 010h] ; 0040aea4
L_0040aea8:
    jbe L_0040b628 ; 0040aea8
L_0040aeae:
    mov eax, dword ptr [esp + 010h] ; 0040aeae
L_0040aeb2:
    push eax ; 0040aeb2
L_0040aeb3:
    push ebx ; 0040aeb3
L_0040aeb4:
    call L_0040d664 ; 0040aeb4
L_0040aeb9:
    mov dword ptr [esp + 01ch], eax ; 0040aeb9
L_0040aebd:
    add esp, 8 ; 0040aebd
L_0040aec0:
    cmp eax, 2 ; 0040aec0
L_0040aec3:
    jl L_0040b5e7 ; 0040aec3
L_0040aec9:
    mov eax, dword ptr [esp + 010h] ; 0040aec9
L_0040aecd:
    add eax, dword ptr [esp + 014h] ; 0040aecd
L_0040aed1:
    cmp eax, dword ptr [esp + 024h] ; 0040aed1
L_0040aed5:
    jbe L_0040aeec ; 0040aed5
L_0040aed7:
    mov eax, dword ptr [esp + 024h] ; 0040aed7
L_0040aedb:
    sub eax, dword ptr [esp + 010h] ; 0040aedb
L_0040aedf:
    mov dword ptr [esp + 014h], eax ; 0040aedf
L_0040aee3:
    cmp eax, 2 ; 0040aee3
L_0040aee6:
    jl L_0040b5e7 ; 0040aee6
L_0040aeec:
    cmp dword ptr [esp + 014h], 032h ; 0040aeec
L_0040aef1:
    mov eax, dword ptr [esp + 014h] ; 0040aef1
L_0040aef5:
    jge L_0040b513 ; 0040aef5
L_0040aefb:
    add eax, dword ptr [esp + 010h] ; 0040aefb
L_0040aeff:
    mov ecx, dword ptr [esp + 010h] ; 0040aeff
L_0040af03:
    add ecx, 0efdh ; 0040af03
L_0040af09:
    mov ebp, dword ptr [ebx] ; 0040af09
L_0040af0b:
    xor edx, edx ; 0040af0b
L_0040af0d:
    mov dword ptr [esp + 028h], eax ; 0040af0d
L_0040af11:
    mov eax, dword ptr [esp + 010h] ; 0040af11
L_0040af15:
    mov dword ptr [esp + 01ch], ecx ; 0040af15
L_0040af19:
    xor ecx, ecx ; 0040af19
L_0040af1b:
    mov dword ptr [esp + 02ch], eax ; 0040af1b
L_0040af1f:
    mov dl, byte ptr [ebp + eax] ; 0040af1f
L_0040af23:
    mov eax, dword ptr [ebx + 0253ch] ; 0040af23
L_0040af29:
    mov edi, 2 ; 0040af29
L_0040af2e:
    mov cl, byte ptr [edx + ebx + 02540h] ; 0040af2e
L_0040af35:
    mov dword ptr [eax + 02ch], ecx ; 0040af35
L_0040af38:
    cmp dword ptr [esp + 014h], edi ; 0040af38
L_0040af3c:
    mov edx, dword ptr [esp + 010h] ; 0040af3c
L_0040af40:
    mov eax, dword ptr [ebx + 0253ch] ; 0040af40
L_0040af46:
    mov dword ptr [eax + 01ch], edx ; 0040af46
L_0040af49:
    jb L_0040b032 ; 0040af49
L_0040af4f:
    mov esi, 030h ; 0040af4f
L_0040af54:
    lea ebp, [ebx + 058h] ; 0040af54
L_0040af57:
    mov ecx, dword ptr [ebp] ; 0040af57
L_0040af5a:
    cmp ecx, 0400h ; 0040af5a
L_0040af60:
    jb L_0040af81 ; 0040af60
L_0040af62:
    cmp ecx, 080000h ; 0040af62
L_0040af68:
    jb L_0040af72 ; 0040af68
L_0040af6a:
    shr ecx, 011h ; 0040af6a
L_0040af6d:
    add cl, 022h ; 0040af6d
L_0040af70:
    jmp L_0040af88 ; 0040af70
L_0040af72:
    shr ecx, 9 ; 0040af72
L_0040af75:
    mov cl, byte ptr [ecx + ebx + 045ch] ; 0040af75
L_0040af7c:
    add cl, 012h ; 0040af7c
L_0040af7f:
    jmp L_0040af88 ; 0040af7f
L_0040af81:
    mov cl, byte ptr [ecx + ebx + 045ch] ; 0040af81
L_0040af88:
    cmp esi, 0d8h ; 0040af88
L_0040af8e:
    jae L_0040afc2 ; 0040af8e
L_0040af90:
    xor eax, eax ; 0040af90
L_0040af92:
    mov al, cl ; 0040af92
L_0040af94:
    xor ecx, ecx ; 0040af94
L_0040af96:
    mov dword ptr [esp + 018h], 0 ; 0040af96
L_0040af9e:
    lea edx, [edi + eax*8] ; 0040af9e
L_0040afa1:
    mov al, byte ptr [eax + _kb_rdata + 6168] ; 0040afa1
L_0040afa7:
    mov byte ptr [esp + 018h], al ; 0040afa7
L_0040afab:
    mov cl, byte ptr [edx + ebx + 0263eh] ; 0040afab
L_0040afb2:
    add ecx, dword ptr [esp + 018h] ; 0040afb2
L_0040afb6:
    mov edx, dword ptr [ebx + 0253ch] ; 0040afb6
L_0040afbc:
    mov dword ptr [edx + esi + 014h], ecx ; 0040afbc
L_0040afc0:
    jmp L_0040b006 ; 0040afc0
L_0040afc2:
    xor eax, eax ; 0040afc2
L_0040afc4:
    xor edx, edx ; 0040afc4
L_0040afc6:
    mov dword ptr [esp + 018h], 0 ; 0040afc6
L_0040afce:
    mov al, cl ; 0040afce
L_0040afd0:
    mov cl, byte ptr [ebx + edi + 027f4h] ; 0040afd0
L_0040afd7:
    mov byte ptr [esp + 018h], cl ; 0040afd7
L_0040afdb:
    mov dl, byte ptr [ebx + eax*8 + 02647h] ; 0040afdb
L_0040afe2:
    add edx, dword ptr [esp + 018h] ; 0040afe2
L_0040afe6:
    mov al, byte ptr [eax + _kb_rdata + 6168] ; 0040afe6
L_0040afec:
    mov dword ptr [esp + 018h], 0 ; 0040afec
L_0040aff4:
    mov ecx, dword ptr [ebx + 0253ch] ; 0040aff4
L_0040affa:
    mov byte ptr [esp + 018h], al ; 0040affa
L_0040affe:
    add edx, dword ptr [esp + 018h] ; 0040affe
L_0040b002:
    mov dword ptr [ecx + esi + 014h], edx ; 0040b002
L_0040b006:
    mov eax, dword ptr [esp + 010h] ; 0040b006
L_0040b00a:
    mov ecx, dword ptr [ebx + 0253ch] ; 0040b00a
L_0040b010:
    add esi, 018h ; 0040b010
L_0040b013:
    add ebp, 4 ; 0040b013
L_0040b016:
    inc edi ; 0040b016
L_0040b017:
    mov dword ptr [ecx + esi - 014h], eax ; 0040b017
L_0040b01b:
    mov edx, dword ptr [ebp - 4] ; 0040b01b
L_0040b01e:
    mov ecx, dword ptr [ebx + 0253ch] ; 0040b01e
L_0040b024:
    cmp edi, dword ptr [esp + 014h] ; 0040b024
L_0040b028:
    mov dword ptr [ecx + esi - 018h], edx ; 0040b028
L_0040b02c:
    jbe L_0040af57 ; 0040b02c
L_0040b032:
    mov eax, dword ptr [ebx + 0253ch] ; 0040b032
L_0040b038:
    mov dword ptr [eax + 014h], 0 ; 0040b038
L_0040b03f:
    mov edx, dword ptr [ebx + 044h] ; 0040b03f
L_0040b042:
    mov eax, dword ptr [ebx + 0253ch] ; 0040b042
L_0040b048:
    mov dword ptr [eax + 8], edx ; 0040b048
L_0040b04b:
    mov eax, dword ptr [ebx + 0253ch] ; 0040b04b
L_0040b051:
    mov ebp, dword ptr [ebx + 048h] ; 0040b051
L_0040b054:
    mov ecx, dword ptr [esp + 02ch] ; 0040b054
L_0040b058:
    mov dword ptr [eax + 0ch], ebp ; 0040b058
L_0040b05b:
    mov eax, dword ptr [ebx + 0253ch] ; 0040b05b
L_0040b061:
    mov edx, dword ptr [ebx + 04ch] ; 0040b061
L_0040b064:
    lea ebp, [ecx + ecx*2] ; 0040b064
L_0040b067:
    shl ebp, 3 ; 0040b067
L_0040b06a:
    mov dword ptr [eax + 010h], edx ; 0040b06a
L_0040b06d:
    neg ebp ; 0040b06d
L_0040b06f:
    add ebp, dword ptr [ebx + 0253ch] ; 0040b06f
L_0040b075:
    inc dword ptr [esp + 010h] ; 0040b075
L_0040b079:
    mov eax, dword ptr [esp + 010h] ; 0040b079
L_0040b07d:
    lea edx, [eax + eax*2] ; 0040b07d
L_0040b080:
    lea ecx, [ebp + edx*8] ; 0040b080
L_0040b084:
    mov edx, dword ptr [ebp + edx*8 + 4] ; 0040b084
L_0040b088:
    mov eax, edx ; 0040b088
L_0040b08a:
    sub eax, dword ptr [esp + 010h] ; 0040b08a
L_0040b08e:
    cmp eax, -1 ; 0040b08e
L_0040b091:
    je L_0040b0ff ; 0040b091
L_0040b093:
    mov eax, dword ptr [ecx] ; 0040b093
L_0040b095:
    cmp eax, 3 ; 0040b095
L_0040b098:
    jb L_0040b0b3 ; 0040b098
L_0040b09a:
    sub eax, 2 ; 0040b09a
L_0040b09d:
    lea edx, [edx + edx*2] ; 0040b09d
L_0040b0a0:
    mov dword ptr [ebx + 044h], eax ; 0040b0a0
L_0040b0a3:
    lea eax, [ebp + edx*8] ; 0040b0a3
L_0040b0a7:
    mov esi, dword ptr [ebp + edx*8 + 8] ; 0040b0a7
L_0040b0ab:
    mov dword ptr [ebx + 048h], esi ; 0040b0ab
L_0040b0ae:
    mov edx, dword ptr [eax + 0ch] ; 0040b0ae
L_0040b0b1:
    jmp L_0040b0fc ; 0040b0b1
L_0040b0b3:
    test eax, eax ; 0040b0b3
L_0040b0b5:
    jne L_0040b0d0 ; 0040b0b5
L_0040b0b7:
    lea eax, [edx + edx*2] ; 0040b0b7
L_0040b0ba:
    mov esi, dword ptr [ebp + eax*8 + 8] ; 0040b0ba
L_0040b0be:
    lea edx, [ebp + eax*8] ; 0040b0be
L_0040b0c2:
    mov dword ptr [ebx + 044h], esi ; 0040b0c2
L_0040b0c5:
    mov eax, dword ptr [edx + 0ch] ; 0040b0c5
L_0040b0c8:
    mov dword ptr [ebx + 048h], eax ; 0040b0c8
L_0040b0cb:
    mov edx, dword ptr [edx + 010h] ; 0040b0cb
L_0040b0ce:
    jmp L_0040b0fc ; 0040b0ce
L_0040b0d0:
    cmp eax, 1 ; 0040b0d0
L_0040b0d3:
    lea eax, [edx + edx*2] ; 0040b0d3
L_0040b0d6:
    lea edx, [ebp + eax*8] ; 0040b0d6
L_0040b0da:
    jne L_0040b0ed ; 0040b0da
L_0040b0dc:
    mov esi, dword ptr [edx + 0ch] ; 0040b0dc
L_0040b0df:
    mov dword ptr [ebx + 044h], esi ; 0040b0df
L_0040b0e2:
    mov eax, dword ptr [edx + 8] ; 0040b0e2
L_0040b0e5:
    mov dword ptr [ebx + 048h], eax ; 0040b0e5
L_0040b0e8:
    mov edx, dword ptr [edx + 010h] ; 0040b0e8
L_0040b0eb:
    jmp L_0040b0fc ; 0040b0eb
L_0040b0ed:
    mov esi, dword ptr [edx + 010h] ; 0040b0ed
L_0040b0f0:
    mov dword ptr [ebx + 044h], esi ; 0040b0f0
L_0040b0f3:
    mov eax, dword ptr [edx + 0ch] ; 0040b0f3
L_0040b0f6:
    mov dword ptr [ebx + 048h], eax ; 0040b0f6
L_0040b0f9:
    mov edx, dword ptr [edx + 8] ; 0040b0f9
L_0040b0fc:
    mov dword ptr [ebx + 04ch], edx ; 0040b0fc
L_0040b0ff:
    mov eax, dword ptr [ebx + 044h] ; 0040b0ff
L_0040b102:
    mov dword ptr [ecx + 8], eax ; 0040b102
L_0040b105:
    mov ecx, dword ptr [esp + 010h] ; 0040b105
L_0040b109:
    mov edx, dword ptr [ebx + 048h] ; 0040b109
L_0040b10c:
    lea eax, [ecx + ecx*2] ; 0040b10c
L_0040b10f:
    mov dword ptr [ebp + eax*8 + 0ch], edx ; 0040b10f
L_0040b113:
    mov edx, dword ptr [ebx + 04ch] ; 0040b113
L_0040b116:
    mov ecx, dword ptr [esp + 010h] ; 0040b116
L_0040b11a:
    lea eax, [ecx + ecx*2] ; 0040b11a
L_0040b11d:
    mov dword ptr [ebp + eax*8 + 010h], edx ; 0040b11d
L_0040b121:
    mov edx, dword ptr [esp + 028h] ; 0040b121
L_0040b125:
    cmp dword ptr [esp + 010h], edx ; 0040b125
L_0040b129:
    je L_0040b3d9 ; 0040b129
L_0040b12f:
    mov eax, dword ptr [esp + 010h] ; 0040b12f
L_0040b133:
    push eax ; 0040b133
L_0040b134:
    push ebx ; 0040b134
L_0040b135:
    call L_0040d664 ; 0040b135
L_0040b13a:
    add esp, 8 ; 0040b13a
L_0040b13d:
    mov esi, eax ; 0040b13d
L_0040b13f:
    mov eax, dword ptr [esp + 010h] ; 0040b13f
L_0040b143:
    add eax, esi ; 0040b143
L_0040b145:
    cmp eax, dword ptr [esp + 024h] ; 0040b145
L_0040b149:
    jbe L_0040b15a ; 0040b149
L_0040b14b:
    mov esi, dword ptr [esp + 024h] ; 0040b14b
L_0040b14f:
    sub esi, dword ptr [esp + 010h] ; 0040b14f
L_0040b153:
    cmp esi, 2 ; 0040b153
L_0040b156:
    jge L_0040b15a ; 0040b156
L_0040b158:
    xor esi, esi ; 0040b158
L_0040b15a:
    cmp esi, 032h ; 0040b15a
L_0040b15d:
    jg L_0040b327 ; 0040b15d
L_0040b163:
    mov eax, dword ptr [esp + 010h] ; 0040b163
L_0040b167:
    add eax, esi ; 0040b167
L_0040b169:
    cmp eax, dword ptr [esp + 01ch] ; 0040b169
L_0040b16d:
    jae L_0040b327 ; 0040b16d
L_0040b173:
    cmp esi, 2 ; 0040b173
L_0040b176:
    jg L_0040b183 ; 0040b176
L_0040b178:
    jne L_0040b1d5 ; 0040b178
L_0040b17a:
    cmp dword ptr [ebx + 058h], 0800h ; 0040b17a
L_0040b181:
    jae L_0040b1d5 ; 0040b181
L_0040b183:
    cmp eax, dword ptr [esp + 028h] ; 0040b183
L_0040b187:
    jbe L_0040b1d5 ; 0040b187
L_0040b189:
    mov edx, dword ptr [esp + 010h] ; 0040b189
L_0040b18d:
    sub edx, dword ptr [esp + 02ch] ; 0040b18d
L_0040b191:
    add edx, esi ; 0040b191
L_0040b193:
    cmp edx, 0efch ; 0040b193
L_0040b199:
    jb L_0040b1a0 ; 0040b199
L_0040b19b:
    mov edx, 0efch ; 0040b19b
L_0040b1a0:
    mov ecx, dword ptr [esp + 028h] ; 0040b1a0
L_0040b1a4:
    sub ecx, dword ptr [esp + 02ch] ; 0040b1a4
L_0040b1a8:
    inc ecx ; 0040b1a8
L_0040b1a9:
    cmp ecx, edx ; 0040b1a9
L_0040b1ab:
    jg L_0040b1cb ; 0040b1ab
L_0040b1ad:
    lea eax, [ecx + ecx*2] ; 0040b1ad
L_0040b1b0:
    sub edx, ecx ; 0040b1b0
L_0040b1b2:
    shl eax, 3 ; 0040b1b2
L_0040b1b5:
    inc edx ; 0040b1b5
L_0040b1b6:
    mov ecx, 0ffffffffh ; 0040b1b6
L_0040b1bb:
    mov edi, dword ptr [ebx + 0253ch] ; 0040b1bb
L_0040b1c1:
    add eax, 018h ; 0040b1c1
L_0040b1c4:
    dec edx ; 0040b1c4
L_0040b1c5:
    mov dword ptr [edi + eax - 4], ecx ; 0040b1c5
L_0040b1c9:
    jne L_0040b1bb ; 0040b1c9
L_0040b1cb:
    mov eax, dword ptr [esp + 010h] ; 0040b1cb
L_0040b1cf:
    add eax, esi ; 0040b1cf
L_0040b1d1:
    mov dword ptr [esp + 028h], eax ; 0040b1d1
L_0040b1d5:
    mov eax, dword ptr [esp + 010h] ; 0040b1d5
L_0040b1d9:
    mov edi, dword ptr [ebx] ; 0040b1d9
L_0040b1db:
    lea ecx, [eax + eax*2] ; 0040b1db
L_0040b1de:
    mov eax, dword ptr [ebp + ecx*8 + 014h] ; 0040b1de
L_0040b1e2:
    lea edx, [ebp + ecx*8] ; 0040b1e2
L_0040b1e6:
    mov ecx, dword ptr [esp + 010h] ; 0040b1e6
L_0040b1ea:
    mov dword ptr [esp + 030h], eax ; 0040b1ea
L_0040b1ee:
    xor eax, eax ; 0040b1ee
L_0040b1f0:
    mov al, byte ptr [edi + ecx] ; 0040b1f0
L_0040b1f3:
    xor ecx, ecx ; 0040b1f3
L_0040b1f5:
    mov cl, byte ptr [eax + ebx + 02540h] ; 0040b1f5
L_0040b1fc:
    mov eax, dword ptr [esp + 030h] ; 0040b1fc
L_0040b200:
    add eax, ecx ; 0040b200
L_0040b202:
    cmp dword ptr [edx + 02ch], eax ; 0040b202
L_0040b205:
    jbe L_0040b215 ; 0040b205
L_0040b207:
    mov dword ptr [edx + 02ch], eax ; 0040b207
L_0040b20a:
    mov eax, dword ptr [esp + 010h] ; 0040b20a
L_0040b20e:
    lea edx, [eax + eax*2] ; 0040b20e
L_0040b211:
    mov dword ptr [ebp + edx*8 + 01ch], eax ; 0040b211
L_0040b215:
    mov edx, 2 ; 0040b215
L_0040b21a:
    cmp esi, edx ; 0040b21a
L_0040b21c:
    jb L_0040b075 ; 0040b21c
L_0040b222:
    lea edi, [ebx + 058h] ; 0040b222
L_0040b225:
    mov eax, dword ptr [edi] ; 0040b225
L_0040b227:
    cmp eax, 0400h ; 0040b227
L_0040b22c:
    jb L_0040b24a ; 0040b22c
L_0040b22e:
    cmp eax, 080000h ; 0040b22e
L_0040b233:
    jb L_0040b23c ; 0040b233
L_0040b235:
    shr eax, 011h ; 0040b235
L_0040b238:
    add al, 022h ; 0040b238
L_0040b23a:
    jmp L_0040b251 ; 0040b23a
L_0040b23c:
    shr eax, 9 ; 0040b23c
L_0040b23f:
    mov al, byte ptr [eax + ebx + 045ch] ; 0040b23f
L_0040b246:
    add al, 012h ; 0040b246
L_0040b248:
    jmp L_0040b251 ; 0040b248
L_0040b24a:
    mov al, byte ptr [eax + ebx + 045ch] ; 0040b24a
L_0040b251:
    cmp edx, 9 ; 0040b251
L_0040b254:
    jae L_0040b28c ; 0040b254
L_0040b256:
    mov dword ptr [esp + 014h], 0 ; 0040b256
L_0040b25e:
    xor ecx, ecx ; 0040b25e
L_0040b260:
    mov cl, al ; 0040b260
L_0040b262:
    mov dword ptr [esp + 020h], 0 ; 0040b262
L_0040b26a:
    lea eax, [edx + ecx*8] ; 0040b26a
L_0040b26d:
    mov cl, byte ptr [ecx + _kb_rdata + 6168] ; 0040b26d
L_0040b273:
    mov byte ptr [esp + 020h], cl ; 0040b273
L_0040b277:
    mov al, byte ptr [eax + ebx + 0263eh] ; 0040b277
L_0040b27e:
    mov ecx, dword ptr [esp + 020h] ; 0040b27e
L_0040b282:
    mov byte ptr [esp + 014h], al ; 0040b282
L_0040b286:
    add ecx, dword ptr [esp + 014h] ; 0040b286
L_0040b28a:
    jmp L_0040b2e2 ; 0040b28a
L_0040b28c:
    mov dword ptr [esp + 020h], 0 ; 0040b28c
L_0040b294:
    xor ecx, ecx ; 0040b294
L_0040b296:
    mov cl, al ; 0040b296
L_0040b298:
    mov eax, ecx ; 0040b298
L_0040b29a:
    mov dword ptr [esp + 014h], ecx ; 0040b29a
L_0040b29e:
    mov dword ptr [esp + 018h], 0 ; 0040b29e
L_0040b2a6:
    mov cl, byte ptr [ebx + eax*8 + 02647h] ; 0040b2a6
L_0040b2ad:
    mov al, byte ptr [ebx + edx + 027f4h] ; 0040b2ad
L_0040b2b4:
    mov byte ptr [esp + 020h], cl ; 0040b2b4
L_0040b2b8:
    mov byte ptr [esp + 018h], al ; 0040b2b8
L_0040b2bc:
    mov eax, dword ptr [esp + 018h] ; 0040b2bc
L_0040b2c0:
    mov ecx, dword ptr [esp + 014h] ; 0040b2c0
L_0040b2c4:
    mov dword ptr [esp + 018h], 0 ; 0040b2c4
L_0040b2cc:
    add dword ptr [esp + 020h], eax ; 0040b2cc
L_0040b2d0:
    mov al, byte ptr [ecx + _kb_rdata + 6168] ; 0040b2d0
L_0040b2d6:
    mov ecx, dword ptr [esp + 020h] ; 0040b2d6
L_0040b2da:
    mov byte ptr [esp + 018h], al ; 0040b2da
L_0040b2de:
    add ecx, dword ptr [esp + 018h] ; 0040b2de
L_0040b2e2:
    add ecx, dword ptr [esp + 030h] ; 0040b2e2
L_0040b2e6:
    mov eax, dword ptr [esp + 010h] ; 0040b2e6
L_0040b2ea:
    add eax, edx ; 0040b2ea
L_0040b2ec:
    lea eax, [eax + eax*2] ; 0040b2ec
L_0040b2ef:
    lea eax, [ebp + eax*8 + 014h] ; 0040b2ef
L_0040b2f3:
    cmp dword ptr [eax], ecx ; 0040b2f3
L_0040b2f5:
    jbe L_0040b316 ; 0040b2f5
L_0040b2f7:
    mov dword ptr [eax], ecx ; 0040b2f7
L_0040b2f9:
    mov eax, dword ptr [esp + 010h] ; 0040b2f9
L_0040b2fd:
    lea ecx, [edx + eax] ; 0040b2fd
L_0040b300:
    lea ecx, [ecx + ecx*2] ; 0040b300
L_0040b303:
    mov dword ptr [ebp + ecx*8 + 4], eax ; 0040b303
L_0040b307:
    mov eax, dword ptr [edi] ; 0040b307
L_0040b309:
    mov ecx, dword ptr [esp + 010h] ; 0040b309
L_0040b30d:
    add ecx, edx ; 0040b30d
L_0040b30f:
    lea ecx, [ecx + ecx*2] ; 0040b30f
L_0040b312:
    mov dword ptr [ebp + ecx*8], eax ; 0040b312
L_0040b316:
    add edi, 4 ; 0040b316
L_0040b319:
    inc edx ; 0040b319
L_0040b31a:
    cmp edx, esi ; 0040b31a
L_0040b31c:
    jbe L_0040b225 ; 0040b31c
L_0040b322:
    jmp L_0040b075 ; 0040b322
L_0040b327:
    mov ecx, dword ptr [ebx + esi*4 + 050h] ; 0040b327
L_0040b32b:
    mov eax, dword ptr [esp + 010h] ; 0040b32b
L_0040b32f:
    add eax, esi ; 0040b32f
L_0040b331:
    mov dword ptr [esp + 01ch], ecx ; 0040b331
L_0040b335:
    lea edi, [eax + eax*2] ; 0040b335
L_0040b338:
    cmp dword ptr [esp + 01ch], 3 ; 0040b338
L_0040b33d:
    mov dword ptr [ebp + edi*8], ecx ; 0040b33d
L_0040b341:
    mov eax, dword ptr [esp + 010h] ; 0040b341
L_0040b345:
    lea ecx, [esi + eax] ; 0040b345
L_0040b348:
    lea edi, [ecx + ecx*2] ; 0040b348
L_0040b34b:
    mov dword ptr [ebp + edi*8 + 4], eax ; 0040b34b
L_0040b34f:
    jne L_0040b372 ; 0040b34f
L_0040b351:
    cmp esi, 010h ; 0040b351
L_0040b354:
    jle L_0040b372 ; 0040b354
L_0040b356:
    mov eax, dword ptr [esp + 010h] ; 0040b356
L_0040b35a:
    sub eax, dword ptr [ebx + 4] ; 0040b35a
L_0040b35d:
    add eax, 5 ; 0040b35d
L_0040b360:
    push eax ; 0040b360
L_0040b361:
    mov eax, dword ptr [esp + 014h] ; 0040b361
L_0040b365:
    inc eax ; 0040b365
L_0040b366:
    push eax ; 0040b366
L_0040b367:
    push ebx ; 0040b367
L_0040b368:
    call L_0040d420 ; 0040b368
L_0040b36d:
    add esp, 0ch ; 0040b36d
L_0040b370:
    jmp L_0040b39d ; 0040b370
L_0040b372:
    mov edi, 1 ; 0040b372
L_0040b377:
    cmp esi, edi ; 0040b377
L_0040b379:
    jbe L_0040b39d ; 0040b379
L_0040b37b:
    mov eax, edi ; 0040b37b
L_0040b37d:
    sub eax, dword ptr [ebx + 4] ; 0040b37d
L_0040b380:
    add eax, dword ptr [esp + 010h] ; 0040b380
L_0040b384:
    add eax, 4 ; 0040b384
L_0040b387:
    push eax ; 0040b387
L_0040b388:
    mov eax, dword ptr [esp + 014h] ; 0040b388
L_0040b38c:
    add eax, edi ; 0040b38c
L_0040b38e:
    inc edi ; 0040b38e
L_0040b38f:
    push eax ; 0040b38f
L_0040b390:
    push ebx ; 0040b390
L_0040b391:
    call L_0040d420 ; 0040b391
L_0040b396:
    add esp, 0ch ; 0040b396
L_0040b399:
    cmp edi, esi ; 0040b399
L_0040b39b:
    jb L_0040b37b ; 0040b39b
L_0040b39d:
    add dword ptr [esp + 010h], esi ; 0040b39d
L_0040b3a1:
    cmp dword ptr [esp + 01ch], 3 ; 0040b3a1
L_0040b3a6:
    jb L_0040b3c0 ; 0040b3a6
L_0040b3a8:
    mov eax, dword ptr [ebx + 048h] ; 0040b3a8
L_0040b3ab:
    mov ecx, dword ptr [ebx + 044h] ; 0040b3ab
L_0040b3ae:
    mov dword ptr [ebx + 04ch], eax ; 0040b3ae
L_0040b3b1:
    mov dword ptr [ebx + 048h], ecx ; 0040b3b1
L_0040b3b4:
    mov eax, dword ptr [esp + 01ch] ; 0040b3b4
L_0040b3b8:
    sub eax, 2 ; 0040b3b8
L_0040b3bb:
    mov dword ptr [ebx + 044h], eax ; 0040b3bb
L_0040b3be:
    jmp L_0040b3d9 ; 0040b3be
L_0040b3c0:
    cmp dword ptr [esp + 01ch], 0 ; 0040b3c0
L_0040b3c5:
    je L_0040b3d9 ; 0040b3c5
L_0040b3c7:
    mov eax, dword ptr [ebx + 044h] ; 0040b3c7
L_0040b3ca:
    mov ecx, dword ptr [esp + 01ch] ; 0040b3ca
L_0040b3ce:
    lea ecx, [ebx + ecx*4 + 044h] ; 0040b3ce
L_0040b3d2:
    mov edx, dword ptr [ecx] ; 0040b3d2
L_0040b3d4:
    mov dword ptr [ebx + 044h], edx ; 0040b3d4
L_0040b3d7:
    mov dword ptr [ecx], eax ; 0040b3d7
L_0040b3d9:
    xor esi, esi ; 0040b3d9
L_0040b3db:
    mov eax, dword ptr [esp + 010h] ; 0040b3db
L_0040b3df:
    lea edx, [eax + eax*2] ; 0040b3df
L_0040b3e2:
    mov ecx, dword ptr [ebp + edx*8 + 4] ; 0040b3e2
L_0040b3e6:
    mov edx, ecx ; 0040b3e6
L_0040b3e8:
    lea eax, [ecx + ecx*2] ; 0040b3e8
L_0040b3eb:
    mov edi, dword ptr [esp + 010h] ; 0040b3eb
L_0040b3ef:
    inc esi ; 0040b3ef
L_0040b3f0:
    lea eax, [ebp + eax*8 + 4] ; 0040b3f0
L_0040b3f4:
    cmp edx, dword ptr [esp + 02ch] ; 0040b3f4
L_0040b3f8:
    mov ecx, dword ptr [eax] ; 0040b3f8
L_0040b3fa:
    mov dword ptr [eax], edi ; 0040b3fa
L_0040b3fc:
    mov dword ptr [esp + 010h], edx ; 0040b3fc
L_0040b400:
    jne L_0040b3e6 ; 0040b400
L_0040b402:
    mov eax, dword ptr [ebx + 024h] ; 0040b402
L_0040b405:
    add eax, esi ; 0040b405
L_0040b407:
    cmp eax, 0fff8h ; 0040b407
L_0040b40c:
    jae L_0040b41a ; 0040b40c
L_0040b40e:
    mov eax, dword ptr [ebx + 028h] ; 0040b40e
L_0040b411:
    add eax, esi ; 0040b411
L_0040b413:
    cmp eax, 07ff8h ; 0040b413
L_0040b418:
    jb L_0040b428 ; 0040b418
L_0040b41a:
    mov eax, dword ptr [esp + 010h] ; 0040b41a
L_0040b41e:
    push eax ; 0040b41e
L_0040b41f:
    push ebx ; 0040b41f
L_0040b420:
    call L_0040b7c0 ; 0040b420
L_0040b425:
    add esp, 8 ; 0040b425
L_0040b428:
    mov eax, dword ptr [esp + 010h] ; 0040b428
L_0040b42c:
    lea edx, [eax + eax*2] ; 0040b42c
L_0040b42f:
    lea ecx, [eax + 1] ; 0040b42f
L_0040b432:
    cmp dword ptr [ebp + edx*8 + 4], ecx ; 0040b432
L_0040b436:
    jbe L_0040b497 ; 0040b436
L_0040b438:
    mov ecx, dword ptr [ebx + 024h] ; 0040b438
L_0040b43b:
    mov edx, dword ptr [ebx + 034h] ; 0040b43b
L_0040b43e:
    mov edi, ecx ; 0040b43e
L_0040b440:
    mov al, 1 ; 0040b440
L_0040b442:
    shr edi, 3 ; 0040b442
L_0040b445:
    and cl, 7 ; 0040b445
L_0040b448:
    shl al, cl ; 0040b448
L_0040b44a:
    or byte ptr [edi + edx], al ; 0040b44a
L_0040b44d:
    mov edx, dword ptr [esp + 010h] ; 0040b44d
L_0040b451:
    lea ecx, [edx + edx*2] ; 0040b451
L_0040b454:
    mov eax, dword ptr [ebp + ecx*8 + 4] ; 0040b454
L_0040b458:
    mov ecx, dword ptr [ebx + 024h] ; 0040b458
L_0040b45b:
    sub al, dl ; 0040b45b
L_0040b45d:
    mov edx, dword ptr [ebx + 030h] ; 0040b45d
L_0040b460:
    sub al, 2 ; 0040b460
L_0040b462:
    mov byte ptr [edx + ecx], al ; 0040b462
L_0040b465:
    mov eax, dword ptr [esp + 010h] ; 0040b465
L_0040b469:
    inc dword ptr [ebx + 024h] ; 0040b469
L_0040b46c:
    lea edx, [eax + eax*2] ; 0040b46c
L_0040b46f:
    mov ecx, dword ptr [ebp + edx*8 + 4] ; 0040b46f
L_0040b473:
    mov edx, dword ptr [ebx + 028h] ; 0040b473
L_0040b476:
    lea eax, [ecx + ecx*2] ; 0040b476
L_0040b479:
    mov edi, dword ptr [ebp + eax*8] ; 0040b479
L_0040b47d:
    mov eax, dword ptr [ebx + 02ch] ; 0040b47d
L_0040b480:
    mov dword ptr [eax + edx*4], edi ; 0040b480
L_0040b483:
    mov ecx, dword ptr [esp + 010h] ; 0040b483
L_0040b487:
    inc dword ptr [ebx + 028h] ; 0040b487
L_0040b48a:
    lea edx, [ecx + ecx*2] ; 0040b48a
L_0040b48d:
    mov eax, dword ptr [ebp + edx*8 + 4] ; 0040b48d
L_0040b491:
    mov dword ptr [esp + 010h], eax ; 0040b491
L_0040b495:
    jmp L_0040b4b0 ; 0040b495
L_0040b497:
    mov eax, dword ptr [ebx] ; 0040b497
L_0040b499:
    mov ecx, dword ptr [esp + 010h] ; 0040b499
L_0040b49d:
    mov edi, dword ptr [ebx + 030h] ; 0040b49d
L_0040b4a0:
    mov edx, dword ptr [ebx + 024h] ; 0040b4a0
L_0040b4a3:
    mov al, byte ptr [eax + ecx] ; 0040b4a3
L_0040b4a6:
    mov byte ptr [edi + edx], al ; 0040b4a6
L_0040b4a9:
    inc dword ptr [ebx + 024h] ; 0040b4a9
L_0040b4ac:
    inc dword ptr [esp + 010h] ; 0040b4ac
L_0040b4b0:
    dec esi ; 0040b4b0
L_0040b4b1:
    jne L_0040b428 ; 0040b4b1
L_0040b4b7:
    mov eax, dword ptr [ebx + 02530h] ; 0040b4b7
L_0040b4bd:
    cmp dword ptr [ebx + 024h], eax ; 0040b4bd
L_0040b4c0:
    jb L_0040b4d5 ; 0040b4c0
L_0040b4c2:
    push ebx ; 0040b4c2
L_0040b4c3:
    call L_0040b750 ; 0040b4c3
L_0040b4c8:
    add dword ptr [ebx + 02530h], 01000h ; 0040b4c8
L_0040b4d2:
    add esp, 4 ; 0040b4d2
L_0040b4d5:
    cmp byte ptr [ebx + 097dh], 0 ; 0040b4d5
L_0040b4dc:
    je L_0040b61a ; 0040b4dc
L_0040b4e2:
    cmp dword ptr [ebx + 024h], 0fe00h ; 0040b4e2
L_0040b4e9:
    jae L_0040b4f8 ; 0040b4e9
L_0040b4eb:
    cmp dword ptr [ebx + 028h], 07e00h ; 0040b4eb
L_0040b4f2:
    jb L_0040b61a ; 0040b4f2
L_0040b4f8:
    lea eax, [esp + 010h] ; 0040b4f8
L_0040b4fc:
    push eax ; 0040b4fc
L_0040b4fd:
    push ebx ; 0040b4fd
L_0040b4fe:
    call L_0040b810 ; 0040b4fe
L_0040b503:
    add esp, 8 ; 0040b503
L_0040b506:
    test eax, eax ; 0040b506
L_0040b508:
    jne L_0040aea0 ; 0040b508
L_0040b50e:
    jmp L_0040b60c ; 0040b50e
L_0040b513:
    mov esi, dword ptr [ebx + eax*4 + 050h] ; 0040b513
L_0040b517:
    cmp esi, 3 ; 0040b517
L_0040b51a:
    jne L_0040b53d ; 0040b51a
L_0040b51c:
    cmp eax, 010h ; 0040b51c
L_0040b51f:
    jle L_0040b53d ; 0040b51f
L_0040b521:
    mov eax, dword ptr [esp + 010h] ; 0040b521
L_0040b525:
    sub eax, dword ptr [ebx + 4] ; 0040b525
L_0040b528:
    add eax, 5 ; 0040b528
L_0040b52b:
    push eax ; 0040b52b
L_0040b52c:
    mov eax, dword ptr [esp + 014h] ; 0040b52c
L_0040b530:
    inc eax ; 0040b530
L_0040b531:
    push eax ; 0040b531
L_0040b532:
    push ebx ; 0040b532
L_0040b533:
    call L_0040d420 ; 0040b533
L_0040b538:
    add esp, 0ch ; 0040b538
L_0040b53b:
    jmp L_0040b56c ; 0040b53b
L_0040b53d:
    mov ebp, 1 ; 0040b53d
L_0040b542:
    mov edi, dword ptr [esp + 014h] ; 0040b542
L_0040b546:
    cmp edi, ebp ; 0040b546
L_0040b548:
    jbe L_0040b56c ; 0040b548
L_0040b54a:
    mov eax, ebp ; 0040b54a
L_0040b54c:
    sub eax, dword ptr [ebx + 4] ; 0040b54c
L_0040b54f:
    add eax, dword ptr [esp + 010h] ; 0040b54f
L_0040b553:
    add eax, 4 ; 0040b553
L_0040b556:
    push eax ; 0040b556
L_0040b557:
    mov eax, dword ptr [esp + 014h] ; 0040b557
L_0040b55b:
    add eax, ebp ; 0040b55b
L_0040b55d:
    inc ebp ; 0040b55d
L_0040b55e:
    push eax ; 0040b55e
L_0040b55f:
    push ebx ; 0040b55f
L_0040b560:
    call L_0040d420 ; 0040b560
L_0040b565:
    add esp, 0ch ; 0040b565
L_0040b568:
    cmp ebp, edi ; 0040b568
L_0040b56a:
    jb L_0040b54a ; 0040b56a
L_0040b56c:
    mov eax, dword ptr [esp + 014h] ; 0040b56c
L_0040b570:
    mov ecx, dword ptr [ebx + 024h] ; 0040b570
L_0040b573:
    mov edx, ecx ; 0040b573
L_0040b575:
    mov edi, dword ptr [ebx + 034h] ; 0040b575
L_0040b578:
    shr edx, 3 ; 0040b578
L_0040b57b:
    and cl, 7 ; 0040b57b
L_0040b57e:
    add dword ptr [esp + 010h], eax ; 0040b57e
L_0040b582:
    mov al, 1 ; 0040b582
L_0040b584:
    shl al, cl ; 0040b584
L_0040b586:
    mov ecx, dword ptr [esp + 014h] ; 0040b586
L_0040b58a:
    or byte ptr [edx + edi], al ; 0040b58a
L_0040b58d:
    mov eax, dword ptr [ebx + 024h] ; 0040b58d
L_0040b590:
    sub cl, 2 ; 0040b590
L_0040b593:
    mov edx, dword ptr [ebx + 030h] ; 0040b593
L_0040b596:
    mov byte ptr [edx + eax], cl ; 0040b596
L_0040b599:
    mov ecx, dword ptr [ebx + 028h] ; 0040b599
L_0040b59c:
    mov edx, dword ptr [ebx + 02ch] ; 0040b59c
L_0040b59f:
    inc dword ptr [ebx + 024h] ; 0040b59f
L_0040b5a2:
    mov dword ptr [edx + ecx*4], esi ; 0040b5a2
L_0040b5a5:
    inc dword ptr [ebx + 028h] ; 0040b5a5
L_0040b5a8:
    cmp esi, 3 ; 0040b5a8
L_0040b5ab:
    jb L_0040b5c1 ; 0040b5ab
L_0040b5ad:
    mov eax, dword ptr [ebx + 048h] ; 0040b5ad
L_0040b5b0:
    mov ecx, dword ptr [ebx + 044h] ; 0040b5b0
L_0040b5b3:
    sub esi, 2 ; 0040b5b3
L_0040b5b6:
    mov dword ptr [ebx + 04ch], eax ; 0040b5b6
L_0040b5b9:
    mov dword ptr [ebx + 048h], ecx ; 0040b5b9
L_0040b5bc:
    mov dword ptr [ebx + 044h], esi ; 0040b5bc
L_0040b5bf:
    jmp L_0040b5d3 ; 0040b5bf
L_0040b5c1:
    test esi, esi ; 0040b5c1
L_0040b5c3:
    je L_0040b5d3 ; 0040b5c3
L_0040b5c5:
    mov edx, dword ptr [ebx + 044h] ; 0040b5c5
L_0040b5c8:
    lea eax, [ebx + esi*4 + 044h] ; 0040b5c8
L_0040b5cc:
    mov ecx, dword ptr [eax] ; 0040b5cc
L_0040b5ce:
    mov dword ptr [ebx + 044h], ecx ; 0040b5ce
L_0040b5d1:
    mov dword ptr [eax], edx ; 0040b5d1
L_0040b5d3:
    cmp dword ptr [ebx + 024h], 0fff8h ; 0040b5d3
L_0040b5da:
    jae L_0040b60c ; 0040b5da
L_0040b5dc:
    cmp dword ptr [ebx + 028h], 07ff8h ; 0040b5dc
L_0040b5e3:
    jb L_0040b61a ; 0040b5e3
L_0040b5e5:
    jmp L_0040b60c ; 0040b5e5
L_0040b5e7:
    mov eax, dword ptr [ebx] ; 0040b5e7
L_0040b5e9:
    mov ecx, dword ptr [esp + 010h] ; 0040b5e9
L_0040b5ed:
    mov ebp, dword ptr [ebx + 030h] ; 0040b5ed
L_0040b5f0:
    mov dl, byte ptr [eax + ecx] ; 0040b5f0
L_0040b5f3:
    mov eax, dword ptr [ebx + 024h] ; 0040b5f3
L_0040b5f6:
    mov byte ptr [ebp + eax], dl ; 0040b5f6
L_0040b5fa:
    mov eax, dword ptr [ebx + 024h] ; 0040b5fa
L_0040b5fd:
    inc eax ; 0040b5fd
L_0040b5fe:
    inc dword ptr [esp + 010h] ; 0040b5fe
L_0040b602:
    mov dword ptr [ebx + 024h], eax ; 0040b602
L_0040b605:
    cmp eax, 0fff8h ; 0040b605
L_0040b60a:
    jb L_0040b61a ; 0040b60a
L_0040b60c:
    mov eax, dword ptr [esp + 010h] ; 0040b60c
L_0040b610:
    push eax ; 0040b610
L_0040b611:
    push ebx ; 0040b611
L_0040b612:
    call L_0040b7c0 ; 0040b612
L_0040b617:
    add esp, 8 ; 0040b617
L_0040b61a:
    mov eax, dword ptr [esp + 024h] ; 0040b61a
L_0040b61e:
    cmp eax, dword ptr [esp + 010h] ; 0040b61e
L_0040b622:
    ja L_0040aeae ; 0040b622
L_0040b628:
    mov edi, dword ptr [esp + 010h] ; 0040b628
L_0040b62c:
    sub edi, dword ptr [ebx + 4] ; 0040b62c
L_0040b62f:
    cmp dword ptr [esp + 03ch], 08000h ; 0040b62f
L_0040b637:
    mov dword ptr [ebx + 098ch], edi ; 0040b637
L_0040b63d:
    jge L_0040b667 ; 0040b63d
L_0040b63f:
    cmp byte ptr [ebx + 097dh], 0 ; 0040b63f
L_0040b646:
    je L_0040b733 ; 0040b646
L_0040b64c:
    lea eax, [esp + 010h] ; 0040b64c
L_0040b650:
    push eax ; 0040b650
L_0040b651:
    push ebx ; 0040b651
L_0040b652:
    call L_0040b810 ; 0040b652
L_0040b657:
    add esp, 8 ; 0040b657
L_0040b65a:
    test eax, eax ; 0040b65a
L_0040b65c:
    je L_0040b733 ; 0040b65c
L_0040b662:
    jmp L_0040aea0 ; 0040b662
L_0040b667:
    add edi, 036h ; 0040b667
L_0040b66a:
    mov esi, 1 ; 0040b66a
L_0040b66f:
    mov eax, dword ptr [esp + 010h] ; 0040b66f
L_0040b673:
    push edi ; 0040b673
L_0040b674:
    sub eax, esi ; 0040b674
L_0040b676:
    inc esi ; 0040b676
L_0040b677:
    push eax ; 0040b677
L_0040b678:
    push ebx ; 0040b678
L_0040b679:
    call L_0040d5b0 ; 0040b679
L_0040b67e:
    add esp, 0ch ; 0040b67e
L_0040b681:
    cmp esi, 032h ; 0040b681
L_0040b684:
    jbe L_0040b66f ; 0040b684
L_0040b686:
    mov eax, dword ptr [ebx] ; 0040b686
L_0040b688:
    mov ecx, dword ptr [ebx + 4] ; 0040b688
L_0040b68b:
    sub eax, dword ptr [ebx + 04330h] ; 0040b68b
L_0040b691:
    add ecx, dword ptr [ebx + 0988h] ; 0040b691
L_0040b697:
    add eax, dword ptr [esp + 010h] ; 0040b697
L_0040b69b:
    cmp eax, ecx ; 0040b69b
L_0040b69d:
    jb L_0040b733 ; 0040b69d
L_0040b6a3:
    cmp byte ptr [ebx + 097dh], 0 ; 0040b6a3
L_0040b6aa:
    je L_0040b6c2 ; 0040b6aa
L_0040b6ac:
    lea eax, [esp + 010h] ; 0040b6ac
L_0040b6b0:
    push eax ; 0040b6b0
L_0040b6b1:
    push ebx ; 0040b6b1
L_0040b6b2:
    call L_0040b810 ; 0040b6b2
L_0040b6b7:
    add esp, 8 ; 0040b6b7
L_0040b6ba:
    test eax, eax ; 0040b6ba
L_0040b6bc:
    jne L_0040aea0 ; 0040b6bc
L_0040b6c2:
    mov edi, dword ptr [ebx + 04330h] ; 0040b6c2
L_0040b6c8:
    mov edx, dword ptr [ebx + 4] ; 0040b6c8
L_0040b6cb:
    mov esi, dword ptr [ebx + 0988h] ; 0040b6cb
L_0040b6d1:
    mov ecx, edx ; 0040b6d1
L_0040b6d3:
    shr ecx, 2 ; 0040b6d3
L_0040b6d6:
    add esi, edi ; 0040b6d6
L_0040b6d8:
    rep movsd  ; 0040b6d8
L_0040b6da:
    mov ecx, edx ; 0040b6da
L_0040b6dc:
    and ecx, 3 ; 0040b6dc
L_0040b6df:
    rep movsb  ; 0040b6df
L_0040b6e1:
    mov edi, dword ptr [ebx + 04334h] ; 0040b6e1
L_0040b6e7:
    mov ecx, dword ptr [ebx + 4] ; 0040b6e7
L_0040b6ea:
    shl ecx, 2 ; 0040b6ea
L_0040b6ed:
    mov eax, dword ptr [ebx + 0988h] ; 0040b6ed
L_0040b6f3:
    shr ecx, 2 ; 0040b6f3
L_0040b6f6:
    lea esi, [edi + eax*4] ; 0040b6f6
L_0040b6f9:
    rep movsd  ; 0040b6f9
L_0040b6fb:
    mov edi, dword ptr [ebx + 04338h] ; 0040b6fb
L_0040b701:
    mov ecx, dword ptr [ebx + 4] ; 0040b701
L_0040b704:
    shl ecx, 2 ; 0040b704
L_0040b707:
    mov eax, dword ptr [ebx + 0988h] ; 0040b707
L_0040b70d:
    shr ecx, 2 ; 0040b70d
L_0040b710:
    lea esi, [edi + eax*4] ; 0040b710
L_0040b713:
    rep movsd  ; 0040b713
L_0040b715:
    mov eax, dword ptr [esp + 010h] ; 0040b715
L_0040b719:
    sub eax, dword ptr [ebx + 4] ; 0040b719
L_0040b71c:
    mov dword ptr [ebx + 098ch], eax ; 0040b71c
L_0040b722:
    mov eax, dword ptr [ebx + 0988h] ; 0040b722
L_0040b728:
    sub dword ptr [ebx], eax ; 0040b728
L_0040b72a:
    shl eax, 2 ; 0040b72a
L_0040b72d:
    sub dword ptr [ebx + 0ch], eax ; 0040b72d
L_0040b730:
    sub dword ptr [ebx + 010h], eax ; 0040b730
L_0040b733:
    mov eax, dword ptr [esp + 010h] ; 0040b733
L_0040b737:
    pop ebp ; 0040b737
L_0040b738:
    pop edi ; 0040b738
L_0040b739:
    mov dword ptr [ebx + 0458h], eax ; 0040b739
L_0040b73f:
    pop esi ; 0040b73f
L_0040b740:
    pop ebx ; 0040b740
L_0040b741:
    add esp, 024h ; 0040b741
L_0040b744:
    retn  ; 0040b744
L_0040b745:
    db 0cch
L_0040b746:
    db 0cch
L_0040b747:
    db 0cch
L_0040b748:
    db 0cch
L_0040b749:
    db 0cch
L_0040b74a:
    db 0cch
L_0040b74b:
    db 0cch
L_0040b74c:
    db 0cch
L_0040b74d:
    db 0cch
L_0040b74e:
    db 0cch
L_0040b74f:
    db 0cch
L_0040b750:
    push esi ; 0040b750
L_0040b751:
    mov esi, dword ptr [esp + 8] ; 0040b751
L_0040b755:
    mov eax, dword ptr [esi + 024h] ; 0040b755
L_0040b758:
    test eax, eax ; 0040b758
L_0040b75a:
    je L_0040b7bc ; 0040b75a
L_0040b75c:
    cmp dword ptr [esi + 0980h], 0 ; 0040b75c
L_0040b763:
    push eax ; 0040b763
L_0040b764:
    je L_0040b77f ; 0040b764
L_0040b766:
    push 0 ; 0040b766
L_0040b768:
    push 0 ; 0040b768
L_0040b76a:
    push esi ; 0040b76a
L_0040b76b:
    call L_0040c1e0 ; 0040b76b
L_0040b770:
    mov dword ptr [esi + 0980h], 0 ; 0040b770
L_0040b77a:
    add esp, 010h ; 0040b77a
L_0040b77d:
    jmp L_0040b796 ; 0040b77d
L_0040b77f:
    mov eax, dword ptr [esi + 02538h] ; 0040b77f
L_0040b785:
    mov ecx, dword ptr [esi + 02534h] ; 0040b785
L_0040b78b:
    push eax ; 0040b78b
L_0040b78c:
    push ecx ; 0040b78c
L_0040b78d:
    push esi ; 0040b78d
L_0040b78e:
    call L_0040c360 ; 0040b78e
L_0040b793:
    add esp, 010h ; 0040b793
L_0040b796:
    push 0 ; 0040b796
L_0040b798:
    push esi ; 0040b798
L_0040b799:
    call L_0040bbe0 ; 0040b799
L_0040b79e:
    add esp, 8 ; 0040b79e
L_0040b7a1:
    push esi ; 0040b7a1
L_0040b7a2:
    call L_0040bc60 ; 0040b7a2
L_0040b7a7:
    add esp, 4 ; 0040b7a7
L_0040b7aa:
    mov eax, dword ptr [esi + 024h] ; 0040b7aa
L_0040b7ad:
    mov ecx, dword ptr [esi + 028h] ; 0040b7ad
L_0040b7b0:
    mov dword ptr [esi + 02534h], eax ; 0040b7b0
L_0040b7b6:
    mov dword ptr [esi + 02538h], ecx ; 0040b7b6
L_0040b7bc:
    pop esi ; 0040b7bc
L_0040b7bd:
    retn  ; 0040b7bd
L_0040b7be:
    db 0cch
L_0040b7bf:
    db 0cch
L_0040b7c0:
    push esi ; 0040b7c0
L_0040b7c1:
    mov esi, dword ptr [esp + 8] ; 0040b7c1
L_0040b7c5:
    push esi ; 0040b7c5
L_0040b7c6:
    mov byte ptr [esi + 097dh], 0 ; 0040b7c6
L_0040b7cd:
    mov dword ptr [esi + 0980h], 1 ; 0040b7cd
L_0040b7d7:
    call L_0040aaf0 ; 0040b7d7
L_0040b7dc:
    add esp, 4 ; 0040b7dc
L_0040b7df:
    mov eax, dword ptr [esi + 024h] ; 0040b7df
L_0040b7e2:
    cmp eax, 01000h ; 0040b7e2
L_0040b7e7:
    jae L_0040b7f5 ; 0040b7e7
L_0040b7e9:
    mov dword ptr [esi + 02530h], 01000h ; 0040b7e9
L_0040b7f3:
    jmp L_0040b800 ; 0040b7f3
L_0040b7f5:
    add eax, 01000h ; 0040b7f5
L_0040b7fa:
    mov dword ptr [esi + 02530h], eax ; 0040b7fa
L_0040b800:
    mov eax, dword ptr [esp + 0ch] ; 0040b800
L_0040b804:
    mov dword ptr [esi + 086ch], eax ; 0040b804
L_0040b80a:
    pop esi ; 0040b80a
L_0040b80b:
    retn  ; 0040b80b
L_0040b80c:
    db 0cch
L_0040b80d:
    db 0cch
L_0040b80e:
    db 0cch
L_0040b80f:
    db 0cch
L_0040b810:
    sub esp, 4 ; 0040b810
L_0040b813:
    push ebx ; 0040b813
L_0040b814:
    push esi ; 0040b814
L_0040b815:
    mov esi, dword ptr [esp + 010h] ; 0040b815
L_0040b819:
    push edi ; 0040b819
L_0040b81a:
    mov ebx, dword ptr [esp + 018h] ; 0040b81a
L_0040b81e:
    push ebp ; 0040b81e
L_0040b81f:
    mov ebp, dword ptr [esi + 086ch] ; 0040b81f
L_0040b825:
    mov edi, dword ptr [esi + 4] ; 0040b825
L_0040b828:
    mov byte ptr [esi + 097dh], 0 ; 0040b828
L_0040b82f:
    mov edx, dword ptr [ebx] ; 0040b82f
L_0040b831:
    mov eax, ebp ; 0040b831
L_0040b833:
    mov ecx, edx ; 0040b833
L_0040b835:
    sub eax, edi ; 0040b835
L_0040b837:
    sub ecx, ebp ; 0040b837
L_0040b839:
    cmp eax, edi ; 0040b839
L_0040b83b:
    jae L_0040b841 ; 0040b83b
L_0040b83d:
    add ecx, eax ; 0040b83d
L_0040b83f:
    jmp L_0040b843 ; 0040b83f
L_0040b841:
    add ecx, edi ; 0040b841
L_0040b843:
    mov eax, dword ptr [esi] ; 0040b843
L_0040b845:
    sub eax, dword ptr [esi + 04330h] ; 0040b845
L_0040b84b:
    add eax, edx ; 0040b84b
L_0040b84d:
    cmp eax, ecx ; 0040b84d
L_0040b84f:
    jl L_0040b8f4 ; 0040b84f
L_0040b855:
    lea eax, [esp + 010h] ; 0040b855
L_0040b859:
    push 0 ; 0040b859
L_0040b85b:
    push eax ; 0040b85b
L_0040b85c:
    mov ecx, dword ptr [esi + 028h] ; 0040b85c
L_0040b85f:
    push ecx ; 0040b85f
L_0040b860:
    mov edx, dword ptr [esi + 024h] ; 0040b860
L_0040b863:
    push edx ; 0040b863
L_0040b864:
    push 0 ; 0040b864
L_0040b866:
    push esi ; 0040b866
L_0040b867:
    call L_0040c380 ; 0040b867
L_0040b86c:
    mov ecx, dword ptr [esp + 028h] ; 0040b86c
L_0040b870:
    add esp, 018h ; 0040b870
L_0040b873:
    push ecx ; 0040b873
L_0040b874:
    push 0 ; 0040b874
L_0040b876:
    push 0 ; 0040b876
L_0040b878:
    push esi ; 0040b878
L_0040b879:
    call L_0040c1e0 ; 0040b879
L_0040b87e:
    add esp, 010h ; 0040b87e
L_0040b881:
    push 0 ; 0040b881
L_0040b883:
    push esi ; 0040b883
L_0040b884:
    call L_0040bbe0 ; 0040b884
L_0040b889:
    add esp, 8 ; 0040b889
L_0040b88c:
    push esi ; 0040b88c
L_0040b88d:
    call L_0040bc60 ; 0040b88d
L_0040b892:
    add esp, 4 ; 0040b892
L_0040b895:
    mov edi, dword ptr [esi + 8] ; 0040b895
L_0040b898:
    xor eax, eax ; 0040b898
L_0040b89a:
    mov ecx, 010000h ; 0040b89a
L_0040b89f:
    rep stosd  ; 0040b89f
L_0040b8a1:
    mov ecx, 0800h ; 0040b8a1
L_0040b8a6:
    mov edi, dword ptr [esi + 034h] ; 0040b8a6
L_0040b8a9:
    rep stosd  ; 0040b8a9
L_0040b8ab:
    mov eax, 1 ; 0040b8ab
L_0040b8b0:
    mov dword ptr [esi + 044h], eax ; 0040b8b0
L_0040b8b3:
    mov dword ptr [esi + 048h], eax ; 0040b8b3
L_0040b8b6:
    mov dword ptr [esi + 04ch], eax ; 0040b8b6
L_0040b8b9:
    mov dword ptr [esi + 038h], eax ; 0040b8b9
L_0040b8bc:
    mov dword ptr [esi + 03ch], eax ; 0040b8bc
L_0040b8bf:
    mov dword ptr [esi + 040h], eax ; 0040b8bf
L_0040b8c2:
    mov ecx, dword ptr [esp + 010h] ; 0040b8c2
L_0040b8c6:
    mov dword ptr [esi + 0980h], eax ; 0040b8c6
L_0040b8cc:
    mov dword ptr [esi + 0868h], 0 ; 0040b8cc
L_0040b8d6:
    mov dword ptr [esi + 024h], 0 ; 0040b8d6
L_0040b8dd:
    mov dword ptr [esi + 028h], 0 ; 0040b8dd
L_0040b8e4:
    mov dword ptr [esi + 02530h], ecx ; 0040b8e4
L_0040b8ea:
    mov dword ptr [ebx], ebp ; 0040b8ea
L_0040b8ec:
    pop ebp ; 0040b8ec
L_0040b8ed:
    pop edi ; 0040b8ed
L_0040b8ee:
    pop esi ; 0040b8ee
L_0040b8ef:
    pop ebx ; 0040b8ef
L_0040b8f0:
    add esp, 4 ; 0040b8f0
L_0040b8f3:
    retn  ; 0040b8f3
L_0040b8f4:
    xor eax, eax ; 0040b8f4
L_0040b8f6:
    pop ebp ; 0040b8f6
L_0040b8f7:
    pop edi ; 0040b8f7
L_0040b8f8:
    pop esi ; 0040b8f8
L_0040b8f9:
    pop ebx ; 0040b8f9
L_0040b8fa:
    add esp, 4 ; 0040b8fa
L_0040b8fd:
    retn  ; 0040b8fd
L_0040b8fe:
    db 0cch
L_0040b8ff:
    db 0cch
L_0040b900:
    mov edx, dword ptr [esp + 4] ; 0040b900
L_0040b904:
    push ebx ; 0040b904
L_0040b905:
    mov eax, dword ptr [esp + 010h] ; 0040b905
L_0040b909:
    mov cl, byte ptr [edx + 018h] ; 0040b909
L_0040b90c:
    sub cl, byte ptr [esp + 0ch] ; 0040b90c
L_0040b910:
    shl eax, cl ; 0040b910
L_0040b912:
    or dword ptr [edx + 014h], eax ; 0040b912
L_0040b915:
    mov byte ptr [edx + 018h], cl ; 0040b915
L_0040b918:
    cmp cl, 010h ; 0040b918
L_0040b91b:
    jg L_0040b978 ; 0040b91b
L_0040b91d:
    mov ecx, 1 ; 0040b91d
L_0040b922:
    mov eax, dword ptr [edx + 0864h] ; 0040b922
L_0040b928:
    cmp dword ptr [edx + 0860h], eax ; 0040b928
L_0040b92e:
    jb L_0040b93f ; 0040b92e
L_0040b930:
    mov eax, dword ptr [edx + 085ch] ; 0040b930
L_0040b936:
    mov dword ptr [edx + 01ch], ecx ; 0040b936
L_0040b939:
    mov dword ptr [edx + 0860h], eax ; 0040b939
L_0040b93f:
    mov ebx, dword ptr [edx + 014h] ; 0040b93f
L_0040b942:
    mov eax, dword ptr [edx + 0860h] ; 0040b942
L_0040b948:
    shr ebx, 010h ; 0040b948
L_0040b94b:
    mov byte ptr [eax], bl ; 0040b94b
L_0040b94d:
    mov eax, dword ptr [edx + 0860h] ; 0040b94d
L_0040b953:
    inc eax ; 0040b953
L_0040b954:
    mov ebx, dword ptr [edx + 014h] ; 0040b954
L_0040b957:
    shr ebx, 018h ; 0040b957
L_0040b95a:
    mov dword ptr [edx + 0860h], eax ; 0040b95a
L_0040b960:
    mov byte ptr [eax], bl ; 0040b960
L_0040b962:
    mov al, byte ptr [edx + 018h] ; 0040b962
L_0040b965:
    add al, 010h ; 0040b965
L_0040b967:
    inc dword ptr [edx + 0860h] ; 0040b967
L_0040b96d:
    shl dword ptr [edx + 014h], 010h ; 0040b96d
L_0040b971:
    mov byte ptr [edx + 018h], al ; 0040b971
L_0040b974:
    cmp al, 010h ; 0040b974
L_0040b976:
    jle L_0040b922 ; 0040b976
L_0040b978:
    pop ebx ; 0040b978
L_0040b979:
    retn  ; 0040b979
L_0040b97a:
    db 0cch
L_0040b97b:
    db 0cch
L_0040b97c:
    db 0cch
L_0040b97d:
    db 0cch
L_0040b97e:
    db 0cch
L_0040b97f:
    db 0cch
L_0040b980:
    push esi ; 0040b980
L_0040b981:
    push 09800h ; 0040b981
L_0040b986:
    mov esi, dword ptr [esp + 0ch] ; 0040b986
L_0040b98a:
    call dword ptr [esi + 04344h] ; 0040b98a
L_0040b990:
    add esp, 4 ; 0040b990
L_0040b993:
    mov dword ptr [esi + 085ch], eax ; 0040b993
L_0040b999:
    test eax, eax ; 0040b999
L_0040b99b:
    jne L_0040b9a1 ; 0040b99b
L_0040b99d:
    xor eax, eax ; 0040b99d
L_0040b99f:
    pop esi ; 0040b99f
L_0040b9a0:
    retn  ; 0040b9a0
L_0040b9a1:
    mov dword ptr [esi + 0860h], eax ; 0040b9a1
L_0040b9a7:
    add eax, 097c0h ; 0040b9a7
L_0040b9ac:
    mov dword ptr [esi + 0864h], eax ; 0040b9ac
L_0040b9b2:
    mov eax, 1 ; 0040b9b2
L_0040b9b7:
    pop esi ; 0040b9b7
L_0040b9b8:
    retn  ; 0040b9b8
L_0040b9b9:
    db 0cch
L_0040b9ba:
    db 0cch
L_0040b9bb:
    db 0cch
L_0040b9bc:
    db 0cch
L_0040b9bd:
    db 0cch
L_0040b9be:
    db 0cch
L_0040b9bf:
    db 0cch
L_0040b9c0:
    push esi ; 0040b9c0
L_0040b9c1:
    mov esi, dword ptr [esp + 8] ; 0040b9c1
L_0040b9c5:
    mov eax, dword ptr [esi + 085ch] ; 0040b9c5
L_0040b9cb:
    test eax, eax ; 0040b9cb
L_0040b9cd:
    je L_0040b9e3 ; 0040b9cd
L_0040b9cf:
    push eax ; 0040b9cf
L_0040b9d0:
    call dword ptr [esi + 04348h] ; 0040b9d0
L_0040b9d6:
    mov dword ptr [esi + 085ch], 0 ; 0040b9d6
L_0040b9e0:
    add esp, 4 ; 0040b9e0
L_0040b9e3:
    pop esi ; 0040b9e3
L_0040b9e4:
    retn  ; 0040b9e4
L_0040b9e5:
    db 0cch
L_0040b9e6:
    db 0cch
L_0040b9e7:
    db 0cch
L_0040b9e8:
    db 0cch
L_0040b9e9:
    db 0cch
L_0040b9ea:
    db 0cch
L_0040b9eb:
    db 0cch
L_0040b9ec:
    db 0cch
L_0040b9ed:
    db 0cch
L_0040b9ee:
    db 0cch
L_0040b9ef:
    db 0cch
L_0040b9f0:
    mov eax, dword ptr [esp + 4] ; 0040b9f0
L_0040b9f4:
    mov dword ptr [eax + 099ch], 0 ; 0040b9f4
L_0040b9fe:
    retn  ; 0040b9fe
L_0040b9ff:
    db 0cch
L_0040ba00:
    mov eax, dword ptr [esp + 0ch] ; 0040ba00
L_0040ba04:
    push ebx ; 0040ba04
L_0040ba05:
    push esi ; 0040ba05
L_0040ba06:
    test eax, eax ; 0040ba06
L_0040ba08:
    push edi ; 0040ba08
L_0040ba09:
    jg L_0040ba11 ; 0040ba09
L_0040ba0b:
    xor eax, eax ; 0040ba0b
L_0040ba0d:
    pop edi ; 0040ba0d
L_0040ba0e:
    pop esi ; 0040ba0e
L_0040ba0f:
    pop ebx ; 0040ba0f
L_0040ba10:
    retn  ; 0040ba10
L_0040ba11:
    mov esi, dword ptr [esp + 010h] ; 0040ba11
L_0040ba15:
    push eax ; 0040ba15
L_0040ba16:
    mov edi, dword ptr [esp + 018h] ; 0040ba16
L_0040ba1a:
    mov eax, dword ptr [esi + 04330h] ; 0040ba1a
L_0040ba20:
    add eax, edi ; 0040ba20
L_0040ba22:
    push eax ; 0040ba22
L_0040ba23:
    push esi ; 0040ba23
L_0040ba24:
    call L_0040ba80 ; 0040ba24
L_0040ba29:
    add esp, 0ch ; 0040ba29
L_0040ba2c:
    mov ebx, eax ; 0040ba2c
L_0040ba2e:
    test ebx, ebx ; 0040ba2e
L_0040ba30:
    jge L_0040ba38 ; 0040ba30
L_0040ba32:
    xor eax, eax ; 0040ba32
L_0040ba34:
    pop edi ; 0040ba34
L_0040ba35:
    pop esi ; 0040ba35
L_0040ba36:
    pop ebx ; 0040ba36
L_0040ba37:
    retn  ; 0040ba37
L_0040ba38:
    cmp dword ptr [esi + 0874h], 0 ; 0040ba38
L_0040ba3f:
    je L_0040ba6c ; 0040ba3f
L_0040ba41:
    cmp dword ptr [esi + 0433ch], 08000h ; 0040ba41
L_0040ba4b:
    jae L_0040ba6c ; 0040ba4b
L_0040ba4d:
    push ebx ; 0040ba4d
L_0040ba4e:
    mov eax, dword ptr [esi + 04330h] ; 0040ba4e
L_0040ba54:
    add eax, edi ; 0040ba54
L_0040ba56:
    push eax ; 0040ba56
L_0040ba57:
    push esi ; 0040ba57
L_0040ba58:
    call L_0040bb00 ; 0040ba58
L_0040ba5d:
    add esp, 0ch ; 0040ba5d
L_0040ba60:
    mov eax, ebx ; 0040ba60
L_0040ba62:
    inc dword ptr [esi + 0433ch] ; 0040ba62
L_0040ba68:
    pop edi ; 0040ba68
L_0040ba69:
    pop esi ; 0040ba69
L_0040ba6a:
    pop ebx ; 0040ba6a
L_0040ba6b:
    retn  ; 0040ba6b
L_0040ba6c:
    mov eax, ebx ; 0040ba6c
L_0040ba6e:
    pop edi ; 0040ba6e
L_0040ba6f:
    inc dword ptr [esi + 0433ch] ; 0040ba6f
L_0040ba75:
    pop esi ; 0040ba75
L_0040ba76:
    pop ebx ; 0040ba76
L_0040ba77:
    retn  ; 0040ba77
L_0040ba78:
    db 0cch
L_0040ba79:
    db 0cch
L_0040ba7a:
    db 0cch
L_0040ba7b:
    db 0cch
L_0040ba7c:
    db 0cch
L_0040ba7d:
    db 0cch
L_0040ba7e:
    db 0cch
L_0040ba7f:
    db 0cch
L_0040ba80:
    mov eax, dword ptr [esp + 0ch] ; 0040ba80
L_0040ba84:
    push ebx ; 0040ba84
L_0040ba85:
    mov ebx, dword ptr [esp + 8] ; 0040ba85
L_0040ba89:
    push esi ; 0040ba89
L_0040ba8a:
    push edi ; 0040ba8a
L_0040ba8b:
    mov edx, dword ptr [ebx + 0998h] ; 0040ba8b
L_0040ba91:
    cmp eax, edx ; 0040ba91
L_0040ba93:
    jg L_0040babd ; 0040ba93
L_0040ba95:
    mov edi, dword ptr [esp + 014h] ; 0040ba95
L_0040ba99:
    mov esi, dword ptr [ebx + 0994h] ; 0040ba99
L_0040ba9f:
    mov ecx, eax ; 0040ba9f
L_0040baa1:
    shr ecx, 2 ; 0040baa1
L_0040baa4:
    rep movsd  ; 0040baa4
L_0040baa6:
    mov ecx, eax ; 0040baa6
L_0040baa8:
    and ecx, 3 ; 0040baa8
L_0040baab:
    rep movsb  ; 0040baab
L_0040baad:
    pop edi ; 0040baad
L_0040baae:
    sub dword ptr [ebx + 0998h], eax ; 0040baae
L_0040bab4:
    pop esi ; 0040bab4
L_0040bab5:
    add dword ptr [ebx + 0994h], eax ; 0040bab5
L_0040babb:
    pop ebx ; 0040babb
L_0040babc:
    retn  ; 0040babc
L_0040babd:
    test edx, edx ; 0040babd
L_0040babf:
    jg L_0040bac7 ; 0040babf
L_0040bac1:
    xor eax, eax ; 0040bac1
L_0040bac3:
    pop edi ; 0040bac3
L_0040bac4:
    pop esi ; 0040bac4
L_0040bac5:
    pop ebx ; 0040bac5
L_0040bac6:
    retn  ; 0040bac6
L_0040bac7:
    mov eax, edx ; 0040bac7
L_0040bac9:
    mov edi, dword ptr [esp + 014h] ; 0040bac9
L_0040bacd:
    mov esi, dword ptr [ebx + 0994h] ; 0040bacd
L_0040bad3:
    mov ecx, edx ; 0040bad3
L_0040bad5:
    shr ecx, 2 ; 0040bad5
L_0040bad8:
    rep movsd  ; 0040bad8
L_0040bada:
    mov ecx, edx ; 0040bada
L_0040badc:
    and ecx, 3 ; 0040badc
L_0040badf:
    rep movsb  ; 0040badf
L_0040bae1:
    mov ecx, dword ptr [ebx + 0998h] ; 0040bae1
L_0040bae7:
    pop edi ; 0040bae7
L_0040bae8:
    pop esi ; 0040bae8
L_0040bae9:
    add dword ptr [ebx + 0994h], ecx ; 0040bae9
L_0040baef:
    mov dword ptr [ebx + 0998h], 0 ; 0040baef
L_0040baf9:
    pop ebx ; 0040baf9
L_0040bafa:
    retn  ; 0040bafa
L_0040bafb:
    db 0cch
L_0040bafc:
    db 0cch
L_0040bafd:
    db 0cch
L_0040bafe:
    db 0cch
L_0040baff:
    db 0cch
L_0040bb00:
    sub esp, 0ch ; 0040bb00
L_0040bb03:
    cmp dword ptr [esp + 018h], 6 ; 0040bb03
L_0040bb08:
    push ebx ; 0040bb08
L_0040bb09:
    push esi ; 0040bb09
L_0040bb0a:
    push edi ; 0040bb0a
L_0040bb0b:
    push ebp ; 0040bb0b
L_0040bb0c:
    jg L_0040bb24 ; 0040bb0c
L_0040bb0e:
    mov ecx, dword ptr [esp + 020h] ; 0040bb0e
L_0040bb12:
    mov eax, dword ptr [esp + 028h] ; 0040bb12
L_0040bb16:
    pop ebp ; 0040bb16
L_0040bb17:
    pop edi ; 0040bb17
L_0040bb18:
    pop esi ; 0040bb18
L_0040bb19:
    add dword ptr [ecx + 099ch], eax ; 0040bb19
L_0040bb1f:
    pop ebx ; 0040bb1f
L_0040bb20:
    add esp, 0ch ; 0040bb20
L_0040bb23:
    retn  ; 0040bb23
L_0040bb24:
    mov edx, dword ptr [esp + 024h] ; 0040bb24
L_0040bb28:
    mov eax, dword ptr [esp + 028h] ; 0040bb28
L_0040bb2c:
    lea ecx, [edx + eax - 6] ; 0040bb2c
L_0040bb30:
    lea esi, [esp + 014h] ; 0040bb30
L_0040bb34:
    mov dword ptr [esp + 010h], edx ; 0040bb34
L_0040bb38:
    mov eax, dword ptr [ecx] ; 0040bb38
L_0040bb3a:
    mov dword ptr [esi], eax ; 0040bb3a
L_0040bb3c:
    mov eax, dword ptr [esp + 028h] ; 0040bb3c
L_0040bb40:
    mov bx, word ptr [ecx + 4] ; 0040bb40
L_0040bb44:
    mov word ptr [esi + 4], bx ; 0040bb44
L_0040bb48:
    mov dword ptr [ecx], 0e8e8e8e8h ; 0040bb48
L_0040bb4e:
    mov word ptr [ecx + 4], 0e8e8h ; 0040bb4e
L_0040bb54:
    mov ecx, dword ptr [esp + 020h] ; 0040bb54
L_0040bb58:
    mov esi, dword ptr [ecx + 099ch] ; 0040bb58
L_0040bb5e:
    lea esi, [esi + eax - 6] ; 0040bb5e
L_0040bb62:
    mov eax, edx ; 0040bb62
L_0040bb64:
    inc edx ; 0040bb64
L_0040bb65:
    cmp byte ptr [eax], 0e8h ; 0040bb65
L_0040bb68:
    je L_0040bb78 ; 0040bb68
L_0040bb6a:
    mov eax, edx ; 0040bb6a
L_0040bb6c:
    inc dword ptr [ecx + 099ch] ; 0040bb6c
L_0040bb72:
    inc edx ; 0040bb72
L_0040bb73:
    cmp byte ptr [eax], 0e8h ; 0040bb73
L_0040bb76:
    jne L_0040bb6a ; 0040bb76
L_0040bb78:
    mov ebx, dword ptr [ecx + 099ch] ; 0040bb78
L_0040bb7e:
    cmp esi, ebx ; 0040bb7e
L_0040bb80:
    jbe L_0040bbad ; 0040bb80
L_0040bb82:
    mov ebp, dword ptr [edx] ; 0040bb82
L_0040bb84:
    lea eax, [ebx + ebp] ; 0040bb84
L_0040bb87:
    test eax, eax ; 0040bb87
L_0040bb89:
    jl L_0040bba1 ; 0040bb89
L_0040bb8b:
    mov edi, dword ptr [ecx + 0874h] ; 0040bb8b
L_0040bb91:
    add ebx, edi ; 0040bb91
L_0040bb93:
    cmp ebx, eax ; 0040bb93
L_0040bb95:
    jbe L_0040bba1 ; 0040bb95
L_0040bb97:
    cmp edi, eax ; 0040bb97
L_0040bb99:
    ja L_0040bb9f ; 0040bb99
L_0040bb9b:
    sub ebp, edi ; 0040bb9b
L_0040bb9d:
    mov eax, ebp ; 0040bb9d
L_0040bb9f:
    mov dword ptr [edx], eax ; 0040bb9f
L_0040bba1:
    add dword ptr [ecx + 099ch], 5 ; 0040bba1
L_0040bba8:
    add edx, 4 ; 0040bba8
L_0040bbab:
    jmp L_0040bb62 ; 0040bbab
L_0040bbad:
    lea edx, [esp + 014h] ; 0040bbad
L_0040bbb1:
    mov edi, dword ptr [esp + 010h] ; 0040bbb1
L_0040bbb5:
    add edi, dword ptr [esp + 028h] ; 0040bbb5
L_0040bbb9:
    add esi, 6 ; 0040bbb9
L_0040bbbc:
    sub edi, 6 ; 0040bbbc
L_0040bbbf:
    mov eax, dword ptr [edx] ; 0040bbbf
L_0040bbc1:
    pop ebp ; 0040bbc1
L_0040bbc2:
    mov dword ptr [edi], eax ; 0040bbc2
L_0040bbc4:
    mov dx, word ptr [edx + 4] ; 0040bbc4
L_0040bbc8:
    mov word ptr [edi + 4], dx ; 0040bbc8
L_0040bbcc:
    pop edi ; 0040bbcc
L_0040bbcd:
    mov dword ptr [ecx + 099ch], esi ; 0040bbcd
L_0040bbd3:
    pop esi ; 0040bbd3
L_0040bbd4:
    pop ebx ; 0040bbd4
L_0040bbd5:
    add esp, 0ch ; 0040bbd5
L_0040bbd8:
    retn  ; 0040bbd8
L_0040bbd9:
    db 0cch
L_0040bbda:
    db 0cch
L_0040bbdb:
    db 0cch
L_0040bbdc:
    db 0cch
L_0040bbdd:
    db 0cch
L_0040bbde:
    db 0cch
L_0040bbdf:
    db 0cch
L_0040bbe0:
    push esi ; 0040bbe0
L_0040bbe1:
    push edi ; 0040bbe1
L_0040bbe2:
    mov edi, dword ptr [esp + 010h] ; 0040bbe2
L_0040bbe6:
    mov esi, dword ptr [esp + 0ch] ; 0040bbe6
L_0040bbea:
    push edi ; 0040bbea
L_0040bbeb:
    lea eax, [esi + 033e8h] ; 0040bbeb
L_0040bbf1:
    push eax ; 0040bbf1
L_0040bbf2:
    lea ecx, [esi + 02540h] ; 0040bbf2
L_0040bbf8:
    push ecx ; 0040bbf8
L_0040bbf9:
    lea edx, [esi + 028f8h] ; 0040bbf9
L_0040bbff:
    push edx ; 0040bbff
L_0040bc00:
    mov eax, dword ptr [esi + 0870h] ; 0040bc00
L_0040bc06:
    lea ecx, [eax*8 + 0100h] ; 0040bc06
L_0040bc0d:
    push ecx ; 0040bc0d
L_0040bc0e:
    push esi ; 0040bc0e
L_0040bc0f:
    call L_0040d9e0 ; 0040bc0f
L_0040bc14:
    add esp, 018h ; 0040bc14
L_0040bc17:
    lea ecx, [esi + 04002h] ; 0040bc17
L_0040bc1d:
    lea edx, [esi + 027fdh] ; 0040bc1d
L_0040bc23:
    lea eax, [esi + 03c1eh] ; 0040bc23
L_0040bc29:
    push edi ; 0040bc29
L_0040bc2a:
    push ecx ; 0040bc2a
L_0040bc2b:
    push edx ; 0040bc2b
L_0040bc2c:
    push eax ; 0040bc2c
L_0040bc2d:
    push 0f9h ; 0040bc2d
L_0040bc32:
    push esi ; 0040bc32
L_0040bc33:
    call L_0040d9e0 ; 0040bc33
L_0040bc38:
    add esp, 018h ; 0040bc38
L_0040bc3b:
    lea ecx, [esi + 0430eh] ; 0040bc3b
L_0040bc41:
    lea edx, [esi + 0431eh] ; 0040bc41
L_0040bc47:
    lea eax, [esi + 042eeh] ; 0040bc47
L_0040bc4d:
    push 1 ; 0040bc4d
L_0040bc4f:
    push ecx ; 0040bc4f
L_0040bc50:
    push edx ; 0040bc50
L_0040bc51:
    push eax ; 0040bc51
L_0040bc52:
    push 8 ; 0040bc52
L_0040bc54:
    push esi ; 0040bc54
L_0040bc55:
    call L_0040d9e0 ; 0040bc55
L_0040bc5a:
    add esp, 018h ; 0040bc5a
L_0040bc5d:
    pop edi ; 0040bc5d
L_0040bc5e:
    pop esi ; 0040bc5e
L_0040bc5f:
    retn  ; 0040bc5f
L_0040bc60:
    xor ecx, ecx ; 0040bc60
L_0040bc62:
    mov edx, dword ptr [esp + 4] ; 0040bc62
L_0040bc66:
    lea eax, [edx + ecx + 02540h] ; 0040bc66
L_0040bc6d:
    cmp byte ptr [eax], 0 ; 0040bc6d
L_0040bc70:
    jne L_0040bc75 ; 0040bc70
L_0040bc72:
    mov byte ptr [eax], 0bh ; 0040bc72
L_0040bc75:
    inc ecx ; 0040bc75
L_0040bc76:
    cmp ecx, 0100h ; 0040bc76
L_0040bc7c:
    jb L_0040bc66 ; 0040bc7c
L_0040bc7e:
    mov eax, dword ptr [edx + 0870h] ; 0040bc7e
L_0040bc84:
    lea eax, [eax*8 + 0100h] ; 0040bc84
L_0040bc8b:
    cmp eax, ecx ; 0040bc8b
L_0040bc8d:
    jbe L_0040bcb0 ; 0040bc8d
L_0040bc8f:
    lea eax, [edx + ecx + 02540h] ; 0040bc8f
L_0040bc96:
    cmp byte ptr [eax], 0 ; 0040bc96
L_0040bc99:
    jne L_0040bc9e ; 0040bc99
L_0040bc9b:
    mov byte ptr [eax], 0ch ; 0040bc9b
L_0040bc9e:
    inc ecx ; 0040bc9e
L_0040bc9f:
    mov eax, dword ptr [edx + 0870h] ; 0040bc9f
L_0040bca5:
    lea eax, [eax*8 + 0100h] ; 0040bca5
L_0040bcac:
    cmp eax, ecx ; 0040bcac
L_0040bcae:
    ja L_0040bc8f ; 0040bcae
L_0040bcb0:
    xor eax, eax ; 0040bcb0
L_0040bcb2:
    lea ecx, [edx + eax + 027fdh] ; 0040bcb2
L_0040bcb9:
    cmp byte ptr [ecx], 0 ; 0040bcb9
L_0040bcbc:
    jne L_0040bcc1 ; 0040bcbc
L_0040bcbe:
    mov byte ptr [ecx], 8 ; 0040bcbe
L_0040bcc1:
    inc eax ; 0040bcc1
L_0040bcc2:
    cmp eax, 0f9h ; 0040bcc2
L_0040bcc7:
    jb L_0040bcb2 ; 0040bcc7
L_0040bcc9:
    push edx ; 0040bcc9
L_0040bcca:
    call L_0040bce0 ; 0040bcca
L_0040bccf:
    add esp, 4 ; 0040bccf
L_0040bcd2:
    retn  ; 0040bcd2
L_0040bcd3:
    db 0cch
L_0040bcd4:
    db 0cch
L_0040bcd5:
    db 0cch
L_0040bcd6:
    db 0cch
L_0040bcd7:
    db 0cch
L_0040bcd8:
    db 0cch
L_0040bcd9:
    db 0cch
L_0040bcda:
    db 0cch
L_0040bcdb:
    db 0cch
L_0040bcdc:
    db 0cch
L_0040bcdd:
    db 0cch
L_0040bcde:
    db 0cch
L_0040bcdf:
    db 0cch
L_0040bce0:
    xor edx, edx ; 0040bce0
L_0040bce2:
    mov eax, dword ptr [esp + 4] ; 0040bce2
L_0040bce6:
    mov dl, byte ptr [eax + 055ch] ; 0040bce6
L_0040bcec:
    add edx, 012h ; 0040bcec
L_0040bcef:
    cmp dword ptr [eax + 0870h], edx ; 0040bcef
L_0040bcf5:
    jbe L_0040bd0d ; 0040bcf5
L_0040bcf7:
    lea ecx, [eax + edx*8 + 02640h] ; 0040bcf7
L_0040bcfe:
    mov byte ptr [ecx], 064h ; 0040bcfe
L_0040bd01:
    add ecx, 8 ; 0040bd01
L_0040bd04:
    inc edx ; 0040bd04
L_0040bd05:
    cmp dword ptr [eax + 0870h], edx ; 0040bd05
L_0040bd0b:
    ja L_0040bcfe ; 0040bd0b
L_0040bd0d:
    retn  ; 0040bd0d
L_0040bd0e:
    db 0cch
L_0040bd0f:
    db 0cch
L_0040bd10:
    push esi ; 0040bd10
L_0040bd11:
    push 0100h ; 0040bd11
L_0040bd16:
    mov esi, dword ptr [esp + 0ch] ; 0040bd16
L_0040bd1a:
    lea eax, [esi + 03960h] ; 0040bd1a
L_0040bd20:
    lea ecx, [esi + 02540h] ; 0040bd20
L_0040bd26:
    push eax ; 0040bd26
L_0040bd27:
    push ecx ; 0040bd27
L_0040bd28:
    push esi ; 0040bd28
L_0040bd29:
    call L_0040bd70 ; 0040bd29
L_0040bd2e:
    add esp, 010h ; 0040bd2e
L_0040bd31:
    mov eax, dword ptr [esi + 0870h] ; 0040bd31
L_0040bd37:
    shl eax, 3 ; 0040bd37
L_0040bd3a:
    lea ecx, [esi + 03a60h] ; 0040bd3a
L_0040bd40:
    push eax ; 0040bd40
L_0040bd41:
    lea edx, [esi + 02640h] ; 0040bd41
L_0040bd47:
    push ecx ; 0040bd47
L_0040bd48:
    push edx ; 0040bd48
L_0040bd49:
    push esi ; 0040bd49
L_0040bd4a:
    call L_0040bd70 ; 0040bd4a
L_0040bd4f:
    add esp, 010h ; 0040bd4f
L_0040bd52:
    lea ecx, [esi + 041f4h] ; 0040bd52
L_0040bd58:
    lea edx, [esi + 027fdh] ; 0040bd58
L_0040bd5e:
    push 0f9h ; 0040bd5e
L_0040bd63:
    push ecx ; 0040bd63
L_0040bd64:
    push edx ; 0040bd64
L_0040bd65:
    push esi ; 0040bd65
L_0040bd66:
    call L_0040bd70 ; 0040bd66
L_0040bd6b:
    add esp, 010h ; 0040bd6b
L_0040bd6e:
    pop esi ; 0040bd6e
L_0040bd6f:
    retn  ; 0040bd6f
L_0040bd70:
    sub esp, 0b4h ; 0040bd70
L_0040bd76:
    xor eax, eax ; 0040bd76
L_0040bd78:
    mov ecx, 018h ; 0040bd78
L_0040bd7d:
    push ebx ; 0040bd7d
L_0040bd7e:
    push esi ; 0040bd7e
L_0040bd7f:
    push edi ; 0040bd7f
L_0040bd80:
    lea edi, [esp + 060h] ; 0040bd80
L_0040bd84:
    push ebp ; 0040bd84
L_0040bd85:
    rep stosd  ; 0040bd85
L_0040bd87:
    mov esi, dword ptr [esp + 0cch] ; 0040bd87
L_0040bd8e:
    mov eax, dword ptr [esp + 0d4h] ; 0040bd8e
L_0040bd95:
    add eax, esi ; 0040bd95
L_0040bd97:
    xor ebx, ebx ; 0040bd97
L_0040bd99:
    mov edi, dword ptr [esp + 0d0h] ; 0040bd99
L_0040bda0:
    mov dword ptr [esp + 014h], eax ; 0040bda0
L_0040bda4:
    mov cl, byte ptr [eax] ; 0040bda4
L_0040bda6:
    cmp dword ptr [esp + 0d4h], ebx ; 0040bda6
L_0040bdad:
    mov byte ptr [esp + 012h], cl ; 0040bdad
L_0040bdb1:
    mov byte ptr [eax], 07bh ; 0040bdb1
L_0040bdb4:
    jle L_0040be62 ; 0040bdb4
L_0040bdba:
    xor ecx, ecx ; 0040bdba
L_0040bdbc:
    lea eax, [ebx + 1] ; 0040bdbc
L_0040bdbf:
    mov dl, byte ptr [esi + ebx] ; 0040bdbf
L_0040bdc2:
    cmp byte ptr [esi + eax], dl ; 0040bdc2
L_0040bdc5:
    jne L_0040bdce ; 0040bdc5
L_0040bdc7:
    inc ecx ; 0040bdc7
L_0040bdc8:
    inc eax ; 0040bdc8
L_0040bdc9:
    cmp byte ptr [esi + eax], dl ; 0040bdc9
L_0040bdcc:
    je L_0040bdc7 ; 0040bdcc
L_0040bdce:
    cmp ecx, 4 ; 0040bdce
L_0040bdd1:
    jl L_0040be3c ; 0040bdd1
L_0040bdd3:
    test dl, dl ; 0040bdd3
L_0040bdd5:
    jne L_0040be02 ; 0040bdd5
L_0040bdd7:
    cmp ecx, 033h ; 0040bdd7
L_0040bdda:
    jle L_0040bde1 ; 0040bdda
L_0040bddc:
    mov ecx, 033h ; 0040bddc
L_0040bde1:
    cmp ecx, 013h ; 0040bde1
L_0040bde4:
    jg L_0040bdf4 ; 0040bde4
L_0040bde6:
    inc word ptr [esp + 086h] ; 0040bde6
L_0040bdee:
    lea ebx, [ecx + ebx - 1] ; 0040bdee
L_0040bdf2:
    jmp L_0040be54 ; 0040bdf2
L_0040bdf4:
    inc word ptr [esp + 088h] ; 0040bdf4
L_0040bdfc:
    lea ebx, [ecx + ebx - 1] ; 0040bdfc
L_0040be00:
    jmp L_0040be54 ; 0040be00
L_0040be02:
    cmp ecx, 5 ; 0040be02
L_0040be05:
    jle L_0040be0c ; 0040be05
L_0040be07:
    mov ecx, 5 ; 0040be07
L_0040be0c:
    xor eax, eax ; 0040be0c
L_0040be0e:
    mov al, byte ptr [edi + ebx] ; 0040be0e
L_0040be11:
    mov dword ptr [esp + 034h], 0 ; 0040be11
L_0040be19:
    lea ebx, [ecx + ebx - 1] ; 0040be19
L_0040be1d:
    mov byte ptr [esp + 034h], dl ; 0040be1d
L_0040be21:
    sub eax, dword ptr [esp + 034h] ; 0040be21
L_0040be25:
    xor edx, edx ; 0040be25
L_0040be27:
    mov dl, byte ptr [eax + _kb_rdata + 6241] ; 0040be27
L_0040be2d:
    inc word ptr [esp + edx*2 + 064h] ; 0040be2d
L_0040be32:
    inc word ptr [esp + 08ah] ; 0040be32
L_0040be3a:
    jmp L_0040be54 ; 0040be3a
L_0040be3c:
    xor ecx, ecx ; 0040be3c
L_0040be3e:
    xor eax, eax ; 0040be3e
L_0040be40:
    mov cl, byte ptr [edi + ebx] ; 0040be40
L_0040be43:
    mov al, dl ; 0040be43
L_0040be45:
    sub ecx, eax ; 0040be45
L_0040be47:
    xor eax, eax ; 0040be47
L_0040be49:
    mov al, byte ptr [ecx + _kb_rdata + 6241] ; 0040be49
L_0040be4f:
    inc word ptr [esp + eax*2 + 064h] ; 0040be4f
L_0040be54:
    inc ebx ; 0040be54
L_0040be55:
    cmp ebx, dword ptr [esp + 0d4h] ; 0040be55
L_0040be5c:
    jl L_0040bdba ; 0040be5c
L_0040be62:
    lea eax, [esp + 034h] ; 0040be62
L_0040be66:
    push 1 ; 0040be66
L_0040be68:
    lea ecx, [esp + 020h] ; 0040be68
L_0040be6c:
    push eax ; 0040be6c
L_0040be6d:
    lea edx, [esp + 06ch] ; 0040be6d
L_0040be71:
    push ecx ; 0040be71
L_0040be72:
    mov eax, dword ptr [esp + 0d4h] ; 0040be72
L_0040be79:
    push edx ; 0040be79
L_0040be7a:
    push 014h ; 0040be7a
L_0040be7c:
    xor ebx, ebx ; 0040be7c
L_0040be7e:
    push eax ; 0040be7e
L_0040be7f:
    call L_0040d9e0 ; 0040be7f
L_0040be84:
    add esp, 018h ; 0040be84
L_0040be87:
    mov ecx, dword ptr [esp + 0c8h] ; 0040be87
L_0040be8e:
    inc ebx ; 0040be8e
L_0040be8f:
    movsx eax, byte ptr [esp + ebx + 01bh] ; 0040be8f
L_0040be94:
    push eax ; 0040be94
L_0040be95:
    push 4 ; 0040be95
L_0040be97:
    push ecx ; 0040be97
L_0040be98:
    call L_0040b900 ; 0040be98
L_0040be9d:
    add esp, 0ch ; 0040be9d
L_0040bea0:
    cmp ebx, 014h ; 0040bea0
L_0040bea3:
    jl L_0040be87 ; 0040bea3
L_0040bea5:
    xor ebx, ebx ; 0040bea5
L_0040bea7:
    cmp dword ptr [esp + 0d4h], ebx ; 0040bea7
L_0040beae:
    jle L_0040bfcb ; 0040beae
L_0040beb4:
    xor ebp, ebp ; 0040beb4
L_0040beb6:
    lea ecx, [ebx + 1] ; 0040beb6
L_0040beb9:
    lea edx, [esi + ebx] ; 0040beb9
L_0040bebc:
    mov dword ptr [esp + 018h], edx ; 0040bebc
L_0040bec0:
    mov al, byte ptr [edx] ; 0040bec0
L_0040bec2:
    cmp byte ptr [esi + ecx], al ; 0040bec2
L_0040bec5:
    jne L_0040bece ; 0040bec5
L_0040bec7:
    inc ebp ; 0040bec7
L_0040bec8:
    inc ecx ; 0040bec8
L_0040bec9:
    cmp byte ptr [esi + ecx], al ; 0040bec9
L_0040becc:
    je L_0040bec7 ; 0040becc
L_0040bece:
    cmp ebp, 4 ; 0040bece
L_0040bed1:
    jl L_0040befc ; 0040bed1
L_0040bed3:
    test al, al ; 0040bed3
L_0040bed5:
    jne L_0040beeb ; 0040bed5
L_0040bed7:
    cmp ebp, 033h ; 0040bed7
L_0040beda:
    jle L_0040bee1 ; 0040beda
L_0040bedc:
    mov ebp, 033h ; 0040bedc
L_0040bee1:
    cmp ebp, 013h ; 0040bee1
L_0040bee4:
    setg al ; 0040bee4
L_0040bee7:
    add al, 011h ; 0040bee7
L_0040bee9:
    jmp L_0040bf0d ; 0040bee9
L_0040beeb:
    cmp ebp, 5 ; 0040beeb
L_0040beee:
    jle L_0040bef5 ; 0040beee
L_0040bef0:
    mov ebp, 5 ; 0040bef0
L_0040bef5:
    mov byte ptr [esp + 013h], 013h ; 0040bef5
L_0040befa:
    jmp L_0040bf11 ; 0040befa
L_0040befc:
    xor ecx, ecx ; 0040befc
L_0040befe:
    xor edx, edx ; 0040befe
L_0040bf00:
    mov cl, byte ptr [edi + ebx] ; 0040bf00
L_0040bf03:
    mov dl, al ; 0040bf03
L_0040bf05:
    sub ecx, edx ; 0040bf05
L_0040bf07:
    mov al, byte ptr [ecx + _kb_rdata + 6241] ; 0040bf07
L_0040bf0d:
    mov byte ptr [esp + 013h], al ; 0040bf0d
L_0040bf11:
    movsx eax, byte ptr [esp + 013h] ; 0040bf11
L_0040bf16:
    mov edx, dword ptr [esp + 0c8h] ; 0040bf16
L_0040bf1d:
    mov ecx, dword ptr [esp + eax*2 + 034h] ; 0040bf1d
L_0040bf21:
    movsx eax, byte ptr [esp + eax + 01ch] ; 0040bf21
L_0040bf26:
    and ecx, 0ffffh ; 0040bf26
L_0040bf2c:
    push ecx ; 0040bf2c
L_0040bf2d:
    push eax ; 0040bf2d
L_0040bf2e:
    push edx ; 0040bf2e
L_0040bf2f:
    call L_0040b900 ; 0040bf2f
L_0040bf34:
    add esp, 0ch ; 0040bf34
L_0040bf37:
    cmp byte ptr [esp + 013h], 011h ; 0040bf37
L_0040bf3c:
    jne L_0040bf4e ; 0040bf3c
L_0040bf3e:
    lea eax, [ebp - 4] ; 0040bf3e
L_0040bf41:
    mov ecx, dword ptr [esp + 0c8h] ; 0040bf41
L_0040bf48:
    push eax ; 0040bf48
L_0040bf49:
    push 4 ; 0040bf49
L_0040bf4b:
    push ecx ; 0040bf4b
L_0040bf4c:
    jmp L_0040bfb1 ; 0040bf4c
L_0040bf4e:
    cmp byte ptr [esp + 013h], 012h ; 0040bf4e
L_0040bf53:
    jne L_0040bf65 ; 0040bf53
L_0040bf55:
    lea eax, [ebp - 014h] ; 0040bf55
L_0040bf58:
    mov ecx, dword ptr [esp + 0c8h] ; 0040bf58
L_0040bf5f:
    push eax ; 0040bf5f
L_0040bf60:
    push 5 ; 0040bf60
L_0040bf62:
    push ecx ; 0040bf62
L_0040bf63:
    jmp L_0040bfb1 ; 0040bf63
L_0040bf65:
    cmp byte ptr [esp + 013h], 013h ; 0040bf65
L_0040bf6a:
    jne L_0040bfbd ; 0040bf6a
L_0040bf6c:
    lea eax, [ebp - 4] ; 0040bf6c
L_0040bf6f:
    mov ecx, dword ptr [esp + 0c8h] ; 0040bf6f
L_0040bf76:
    push eax ; 0040bf76
L_0040bf77:
    push 1 ; 0040bf77
L_0040bf79:
    push ecx ; 0040bf79
L_0040bf7a:
    call L_0040b900 ; 0040bf7a
L_0040bf7f:
    mov edx, dword ptr [esp + 024h] ; 0040bf7f
L_0040bf83:
    add esp, 0ch ; 0040bf83
L_0040bf86:
    xor ecx, ecx ; 0040bf86
L_0040bf88:
    xor eax, eax ; 0040bf88
L_0040bf8a:
    mov cl, byte ptr [edi + ebx] ; 0040bf8a
L_0040bf8d:
    mov al, byte ptr [edx] ; 0040bf8d
L_0040bf8f:
    sub ecx, eax ; 0040bf8f
L_0040bf91:
    mov edx, dword ptr [esp + 0c8h] ; 0040bf91
L_0040bf98:
    movsx eax, byte ptr [ecx + _kb_rdata + 6241] ; 0040bf98
L_0040bf9f:
    mov ecx, dword ptr [esp + eax*2 + 034h] ; 0040bf9f
L_0040bfa3:
    movsx eax, byte ptr [esp + eax + 01ch] ; 0040bfa3
L_0040bfa8:
    and ecx, 0ffffh ; 0040bfa8
L_0040bfae:
    push ecx ; 0040bfae
L_0040bfaf:
    push eax ; 0040bfaf
L_0040bfb0:
    push edx ; 0040bfb0
L_0040bfb1:
    lea ebx, [ebp + ebx - 1] ; 0040bfb1
L_0040bfb5:
    call L_0040b900 ; 0040bfb5
L_0040bfba:
    add esp, 0ch ; 0040bfba
L_0040bfbd:
    inc ebx ; 0040bfbd
L_0040bfbe:
    cmp ebx, dword ptr [esp + 0d4h] ; 0040bfbe
L_0040bfc5:
    jl L_0040beb4 ; 0040bfc5
L_0040bfcb:
    mov eax, dword ptr [esp + 014h] ; 0040bfcb
L_0040bfcf:
    mov cl, byte ptr [esp + 012h] ; 0040bfcf
L_0040bfd3:
    mov byte ptr [eax], cl ; 0040bfd3
L_0040bfd5:
    mov eax, dword ptr [esp + 0d4h] ; 0040bfd5
L_0040bfdc:
    mov ecx, eax ; 0040bfdc
L_0040bfde:
    shr ecx, 2 ; 0040bfde
L_0040bfe1:
    rep movsd  ; 0040bfe1
L_0040bfe3:
    mov ecx, eax ; 0040bfe3
L_0040bfe5:
    pop ebp ; 0040bfe5
L_0040bfe6:
    and ecx, 3 ; 0040bfe6
L_0040bfe9:
    rep movsb  ; 0040bfe9
L_0040bfeb:
    pop edi ; 0040bfeb
L_0040bfec:
    pop esi ; 0040bfec
L_0040bfed:
    pop ebx ; 0040bfed
L_0040bfee:
    add esp, 0b4h ; 0040bfee
L_0040bff4:
    retn  ; 0040bff4
L_0040bff5:
    db 0cch
L_0040bff6:
    db 0cch
L_0040bff7:
    db 0cch
L_0040bff8:
    db 0cch
L_0040bff9:
    db 0cch
L_0040bffa:
    db 0cch
L_0040bffb:
    db 0cch
L_0040bffc:
    db 0cch
L_0040bffd:
    db 0cch
L_0040bffe:
    db 0cch
L_0040bfff:
    db 0cch
L_0040c000:
    push esi ; 0040c000
L_0040c001:
    push edi ; 0040c001
L_0040c002:
    mov esi, dword ptr [esp + 0ch] ; 0040c002
L_0040c006:
    push 1 ; 0040c006
L_0040c008:
    lea eax, [esi + 0430eh] ; 0040c008
L_0040c00e:
    lea ecx, [esi + 0431eh] ; 0040c00e
L_0040c014:
    push eax ; 0040c014
L_0040c015:
    lea edx, [esi + 042eeh] ; 0040c015
L_0040c01b:
    push ecx ; 0040c01b
L_0040c01c:
    xor edi, edi ; 0040c01c
L_0040c01e:
    push edx ; 0040c01e
L_0040c01f:
    push 8 ; 0040c01f
L_0040c021:
    push esi ; 0040c021
L_0040c022:
    call L_0040d9e0 ; 0040c022
L_0040c027:
    add esp, 018h ; 0040c027
L_0040c02a:
    xor eax, eax ; 0040c02a
L_0040c02c:
    mov al, byte ptr [esi + edi + 0431eh] ; 0040c02c
L_0040c033:
    inc edi ; 0040c033
L_0040c034:
    push eax ; 0040c034
L_0040c035:
    push 3 ; 0040c035
L_0040c037:
    push esi ; 0040c037
L_0040c038:
    call L_0040b900 ; 0040c038
L_0040c03d:
    add esp, 0ch ; 0040c03d
L_0040c040:
    cmp edi, 8 ; 0040c040
L_0040c043:
    jl L_0040c02a ; 0040c043
L_0040c045:
    pop edi ; 0040c045
L_0040c046:
    pop esi ; 0040c046
L_0040c047:
    retn  ; 0040c047
L_0040c048:
    db 0cch
L_0040c049:
    db 0cch
L_0040c04a:
    db 0cch
L_0040c04b:
    db 0cch
L_0040c04c:
    db 0cch
L_0040c04d:
    db 0cch
L_0040c04e:
    db 0cch
L_0040c04f:
    db 0cch
L_0040c050:
    sub esp, 4 ; 0040c050
L_0040c053:
    push ebx ; 0040c053
L_0040c054:
    push esi ; 0040c054
L_0040c055:
    push edi ; 0040c055
L_0040c056:
    mov ebx, 2 ; 0040c056
L_0040c05b:
    push ebp ; 0040c05b
L_0040c05c:
    mov edx, 4 ; 0040c05c
L_0040c061:
    mov ebp, dword ptr [esp + 018h] ; 0040c061
L_0040c065:
    mov byte ptr [esp + 013h], dl ; 0040c065
L_0040c069:
    mov byte ptr [ebp + 045ch], 0 ; 0040c069
L_0040c070:
    mov byte ptr [ebp + 045dh], 1 ; 0040c070
L_0040c077:
    mov byte ptr [ebp + 045fh], 3 ; 0040c077
L_0040c07e:
    mov byte ptr [ebp + 045eh], bl ; 0040c07e
L_0040c084:
    test ebx, ebx ; 0040c084
L_0040c086:
    jle L_0040c0b5 ; 0040c086
L_0040c088:
    mov esi, ebx ; 0040c088
L_0040c08a:
    xor eax, eax ; 0040c08a
L_0040c08c:
    mov al, byte ptr [esp + 013h] ; 0040c08c
L_0040c090:
    lea edi, [ebp + edx + 045ch] ; 0040c090
L_0040c097:
    mov cl, al ; 0040c097
L_0040c099:
    add edx, ebx ; 0040c099
L_0040c09b:
    mov ch, cl ; 0040c09b
L_0040c09d:
    mov cl, al ; 0040c09d
L_0040c09f:
    mov eax, ecx ; 0040c09f
L_0040c0a1:
    shl eax, 010h ; 0040c0a1
L_0040c0a4:
    mov ax, cx ; 0040c0a4
L_0040c0a7:
    mov ecx, esi ; 0040c0a7
L_0040c0a9:
    shr ecx, 2 ; 0040c0a9
L_0040c0ac:
    rep stosd  ; 0040c0ac
L_0040c0ae:
    mov ecx, esi ; 0040c0ae
L_0040c0b0:
    and ecx, 3 ; 0040c0b0
L_0040c0b3:
    rep stosb  ; 0040c0b3
L_0040c0b5:
    inc byte ptr [esp + 013h] ; 0040c0b5
L_0040c0b9:
    test ebx, ebx ; 0040c0b9
L_0040c0bb:
    jle L_0040c0ea ; 0040c0bb
L_0040c0bd:
    mov esi, ebx ; 0040c0bd
L_0040c0bf:
    xor eax, eax ; 0040c0bf
L_0040c0c1:
    mov al, byte ptr [esp + 013h] ; 0040c0c1
L_0040c0c5:
    lea edi, [ebp + edx + 045ch] ; 0040c0c5
L_0040c0cc:
    mov cl, al ; 0040c0cc
L_0040c0ce:
    mov ch, cl ; 0040c0ce
L_0040c0d0:
    mov cl, al ; 0040c0d0
L_0040c0d2:
    mov eax, ecx ; 0040c0d2
L_0040c0d4:
    shl eax, 010h ; 0040c0d4
L_0040c0d7:
    mov ax, cx ; 0040c0d7
L_0040c0da:
    mov ecx, esi ; 0040c0da
L_0040c0dc:
    shr ecx, 2 ; 0040c0dc
L_0040c0df:
    rep stosd  ; 0040c0df
L_0040c0e1:
    mov ecx, esi ; 0040c0e1
L_0040c0e3:
    and ecx, 3 ; 0040c0e3
L_0040c0e6:
    rep stosb  ; 0040c0e6
L_0040c0e8:
    add edx, esi ; 0040c0e8
L_0040c0ea:
    add ebx, ebx ; 0040c0ea
L_0040c0ec:
    inc byte ptr [esp + 013h] ; 0040c0ec
L_0040c0f0:
    cmp edx, 0400h ; 0040c0f0
L_0040c0f6:
    jl L_0040c084 ; 0040c0f6
L_0040c0f8:
    pop ebp ; 0040c0f8
L_0040c0f9:
    pop edi ; 0040c0f9
L_0040c0fa:
    pop esi ; 0040c0fa
L_0040c0fb:
    pop ebx ; 0040c0fb
L_0040c0fc:
    add esp, 4 ; 0040c0fc
L_0040c0ff:
    retn  ; 0040c0ff
L_0040c100:
    push ebx ; 0040c100
L_0040c101:
    xor ecx, ecx ; 0040c101
L_0040c103:
    mov eax, dword ptr [esp + 8] ; 0040c103
L_0040c107:
    xor bl, bl ; 0040c107
L_0040c109:
    mov edx, ecx ; 0040c109
L_0040c10b:
    test ecx, ecx ; 0040c10b
L_0040c10d:
    je L_0040c11d ; 0040c10d
L_0040c10f:
    test dl, 1 ; 0040c10f
L_0040c112:
    je L_0040c116 ; 0040c112
L_0040c114:
    inc bl ; 0040c114
L_0040c116:
    sar edx, 1 ; 0040c116
L_0040c119:
    test edx, edx ; 0040c119
L_0040c11b:
    jne L_0040c10f ; 0040c11b
L_0040c11d:
    mov byte ptr [ecx + eax + 087dh], bl ; 0040c11d
L_0040c124:
    inc ecx ; 0040c124
L_0040c125:
    cmp ecx, 0100h ; 0040c125
L_0040c12b:
    jl L_0040c107 ; 0040c12b
L_0040c12d:
    pop ebx ; 0040c12d
L_0040c12e:
    retn  ; 0040c12e
L_0040c12f:
    db 0cch
L_0040c130:
    push ebx ; 0040c130
L_0040c131:
    push esi ; 0040c131
L_0040c132:
    push edi ; 0040c132
L_0040c133:
    xor ebx, ebx ; 0040c133
L_0040c135:
    push ebp ; 0040c135
L_0040c136:
    xor edi, edi ; 0040c136
L_0040c138:
    xor ebp, ebp ; 0040c138
L_0040c13a:
    mov esi, dword ptr [esp + 014h] ; 0040c13a
L_0040c13e:
    mov ecx, dword ptr [esp + 018h] ; 0040c13e
L_0040c142:
    lea eax, [esi + 042eeh] ; 0040c142
L_0040c148:
    push ecx ; 0040c148
L_0040c149:
    push esi ; 0040c149
L_0040c14a:
    mov dword ptr [eax], ebx ; 0040c14a
L_0040c14c:
    mov dword ptr [eax + 4], ebx ; 0040c14c
L_0040c14f:
    mov dword ptr [eax + 8], ebx ; 0040c14f
L_0040c152:
    mov dword ptr [eax + 0ch], ebx ; 0040c152
L_0040c155:
    call L_0040c1b0 ; 0040c155
L_0040c15a:
    add esp, 8 ; 0040c15a
L_0040c15d:
    xor eax, eax ; 0040c15d
L_0040c15f:
    xor ecx, ecx ; 0040c15f
L_0040c161:
    mov al, bl ; 0040c161
L_0040c163:
    mov cx, word ptr [esi + eax*2 + 042eeh] ; 0040c163
L_0040c16b:
    cmp ecx, ebp ; 0040c16b
L_0040c16d:
    jbe L_0040c171 ; 0040c16d
L_0040c16f:
    mov ebp, ecx ; 0040c16f
L_0040c171:
    add edi, ecx ; 0040c171
L_0040c173:
    inc bl ; 0040c173
L_0040c175:
    cmp bl, 8 ; 0040c175
L_0040c178:
    jb L_0040c15d ; 0040c178
L_0040c17a:
    mov ecx, 5 ; 0040c17a
L_0040c17f:
    mov eax, edi ; 0040c17f
L_0040c181:
    sub edx, edx ; 0040c181
L_0040c183:
    div ecx ; 0040c183
L_0040c185:
    cmp eax, ebp ; 0040c185
L_0040c187:
    jae L_0040c19a ; 0040c187
L_0040c189:
    cmp dword ptr [esp + 018h], 064h ; 0040c189
L_0040c18e:
    jb L_0040c19a ; 0040c18e
L_0040c190:
    mov eax, 2 ; 0040c190
L_0040c195:
    pop ebp ; 0040c195
L_0040c196:
    pop edi ; 0040c196
L_0040c197:
    pop esi ; 0040c197
L_0040c198:
    pop ebx ; 0040c198
L_0040c199:
    retn  ; 0040c199
L_0040c19a:
    mov eax, 1 ; 0040c19a
L_0040c19f:
    pop ebp ; 0040c19f
L_0040c1a0:
    pop edi ; 0040c1a0
L_0040c1a1:
    pop esi ; 0040c1a1
L_0040c1a2:
    pop ebx ; 0040c1a2
L_0040c1a3:
    retn  ; 0040c1a3
L_0040c1a4:
    db 0cch
L_0040c1a5:
    db 0cch
L_0040c1a6:
    db 0cch
L_0040c1a7:
    db 0cch
L_0040c1a8:
    db 0cch
L_0040c1a9:
    db 0cch
L_0040c1aa:
    db 0cch
L_0040c1ab:
    db 0cch
L_0040c1ac:
    db 0cch
L_0040c1ad:
    db 0cch
L_0040c1ae:
    db 0cch
L_0040c1af:
    db 0cch
L_0040c1b0:
    mov eax, dword ptr [esp + 4] ; 0040c1b0
L_0040c1b4:
    push esi ; 0040c1b4
L_0040c1b5:
    mov edx, dword ptr [esp + 0ch] ; 0040c1b5
L_0040c1b9:
    mov ecx, dword ptr [eax + 02ch] ; 0040c1b9
L_0040c1bc:
    test edx, edx ; 0040c1bc
L_0040c1be:
    je L_0040c1d8 ; 0040c1be
L_0040c1c0:
    mov esi, dword ptr [ecx] ; 0040c1c0
L_0040c1c2:
    add ecx, 4 ; 0040c1c2
L_0040c1c5:
    cmp esi, 010h ; 0040c1c5
L_0040c1c8:
    jb L_0040c1d5 ; 0040c1c8
L_0040c1ca:
    and esi, 7 ; 0040c1ca
L_0040c1cd:
    inc word ptr [eax + esi*2 + 042eeh] ; 0040c1cd
L_0040c1d5:
    dec edx ; 0040c1d5
L_0040c1d6:
    jne L_0040c1c0 ; 0040c1d6
L_0040c1d8:
    pop esi ; 0040c1d8
L_0040c1d9:
    retn  ; 0040c1d9
L_0040c1da:
    db 0cch
L_0040c1db:
    db 0cch
L_0040c1dc:
    db 0cch
L_0040c1dd:
    db 0cch
L_0040c1de:
    db 0cch
L_0040c1df:
    db 0cch
L_0040c1e0:
    mov edx, dword ptr [esp + 4] ; 0040c1e0
L_0040c1e4:
    push edi ; 0040c1e4
L_0040c1e5:
    xor eax, eax ; 0040c1e5
L_0040c1e7:
    mov ecx, dword ptr [edx + 0870h] ; 0040c1e7
L_0040c1ed:
    add ecx, 020h ; 0040c1ed
L_0040c1f0:
    lea edi, [edx + 028f8h] ; 0040c1f0
L_0040c1f6:
    shl ecx, 4 ; 0040c1f6
L_0040c1f9:
    shr ecx, 2 ; 0040c1f9
L_0040c1fc:
    rep stosd  ; 0040c1fc
L_0040c1fe:
    lea edi, [edx + 03c1eh] ; 0040c1fe
L_0040c204:
    mov ecx, 07ch ; 0040c204
L_0040c209:
    rep stosd  ; 0040c209
L_0040c20b:
    stosw  ; 0040c20b
L_0040c20d:
    mov eax, dword ptr [esp + 014h] ; 0040c20d
L_0040c211:
    mov ecx, dword ptr [esp + 010h] ; 0040c211
L_0040c215:
    push eax ; 0040c215
L_0040c216:
    push ecx ; 0040c216
L_0040c217:
    mov eax, dword ptr [esp + 014h] ; 0040c217
L_0040c21b:
    push eax ; 0040c21b
L_0040c21c:
    push edx ; 0040c21c
L_0040c21d:
    call L_0040c230 ; 0040c21d
L_0040c222:
    add esp, 010h ; 0040c222
L_0040c225:
    pop edi ; 0040c225
L_0040c226:
    retn  ; 0040c226
L_0040c227:
    db 0cch
L_0040c228:
    db 0cch
L_0040c229:
    db 0cch
L_0040c22a:
    db 0cch
L_0040c22b:
    db 0cch
L_0040c22c:
    db 0cch
L_0040c22d:
    db 0cch
L_0040c22e:
    db 0cch
L_0040c22f:
    db 0cch
L_0040c230:
    sub esp, 4 ; 0040c230
L_0040c233:
    xor eax, eax ; 0040c233
L_0040c235:
    push ebx ; 0040c235
L_0040c236:
    push esi ; 0040c236
L_0040c237:
    mov esi, dword ptr [esp + 014h] ; 0040c237
L_0040c23b:
    push edi ; 0040c23b
L_0040c23c:
    cmp dword ptr [esp + 020h], esi ; 0040c23c
L_0040c240:
    push ebp ; 0040c240
L_0040c241:
    jbe L_0040c34f ; 0040c241
L_0040c247:
    mov edi, dword ptr [esp + 020h] ; 0040c247
L_0040c24b:
    mov edx, dword ptr [esp + 018h] ; 0040c24b
L_0040c24f:
    shl edi, 2 ; 0040c24f
L_0040c252:
    mov ecx, esi ; 0040c252
L_0040c254:
    mov ebp, dword ptr [edx + 034h] ; 0040c254
L_0040c257:
    shr ecx, 3 ; 0040c257
L_0040c25a:
    xor ebx, ebx ; 0040c25a
L_0040c25c:
    mov bl, byte ptr [ecx + ebp] ; 0040c25c
L_0040c25f:
    mov ebp, 1 ; 0040c25f
L_0040c264:
    mov ecx, esi ; 0040c264
L_0040c266:
    and cl, 7 ; 0040c266
L_0040c269:
    shl ebp, cl ; 0040c269
L_0040c26b:
    test ebp, ebx ; 0040c26b
L_0040c26d:
    jne L_0040c285 ; 0040c26d
L_0040c26f:
    mov ebx, dword ptr [edx + 030h] ; 0040c26f
L_0040c272:
    xor ecx, ecx ; 0040c272
L_0040c274:
    inc eax ; 0040c274
L_0040c275:
    mov cl, byte ptr [ebx + esi] ; 0040c275
L_0040c278:
    inc word ptr [edx + ecx*2 + 028f8h] ; 0040c278
L_0040c280:
    jmp L_0040c344 ; 0040c280
L_0040c285:
    mov ecx, dword ptr [edx + 030h] ; 0040c285
L_0040c288:
    mov cl, byte ptr [ecx + esi] ; 0040c288
L_0040c28b:
    mov byte ptr [esp + 010h], cl ; 0040c28b
L_0040c28f:
    cmp cl, 7 ; 0040c28f
L_0040c292:
    mov ecx, dword ptr [edx + 02ch] ; 0040c292
L_0040c295:
    mov ebx, dword ptr [ecx + edi] ; 0040c295
L_0040c298:
    jae L_0040c2e3 ; 0040c298
L_0040c29a:
    cmp ebx, 0400h ; 0040c29a
L_0040c2a0:
    jb L_0040c2c7 ; 0040c2a0
L_0040c2a2:
    cmp ebx, 080000h ; 0040c2a2
L_0040c2a8:
    jb L_0040c2b6 ; 0040c2a8
L_0040c2aa:
    shr ebx, 011h ; 0040c2aa
L_0040c2ad:
    xor ecx, ecx ; 0040c2ad
L_0040c2af:
    mov cl, bl ; 0040c2af
L_0040c2b1:
    add ecx, 022h ; 0040c2b1
L_0040c2b4:
    jmp L_0040c2d0 ; 0040c2b4
L_0040c2b6:
    shr ebx, 9 ; 0040c2b6
L_0040c2b9:
    xor ecx, ecx ; 0040c2b9
L_0040c2bb:
    mov cl, byte ptr [ebx + edx + 045ch] ; 0040c2bb
L_0040c2c2:
    add ecx, 012h ; 0040c2c2
L_0040c2c5:
    jmp L_0040c2d0 ; 0040c2c5
L_0040c2c7:
    xor ecx, ecx ; 0040c2c7
L_0040c2c9:
    mov cl, byte ptr [ebx + edx + 045ch] ; 0040c2c9
L_0040c2d0:
    xor ebx, ebx ; 0040c2d0
L_0040c2d2:
    mov bl, byte ptr [esp + 010h] ; 0040c2d2
L_0040c2d6:
    lea ecx, [ebx + ecx*8] ; 0040c2d6
L_0040c2d9:
    inc word ptr [edx + ecx*2 + 02af8h] ; 0040c2d9
L_0040c2e1:
    jmp L_0040c334 ; 0040c2e1
L_0040c2e3:
    cmp ebx, 0400h ; 0040c2e3
L_0040c2e9:
    jb L_0040c310 ; 0040c2e9
L_0040c2eb:
    cmp ebx, 080000h ; 0040c2eb
L_0040c2f1:
    jb L_0040c2ff ; 0040c2f1
L_0040c2f3:
    shr ebx, 011h ; 0040c2f3
L_0040c2f6:
    xor ecx, ecx ; 0040c2f6
L_0040c2f8:
    mov cl, bl ; 0040c2f8
L_0040c2fa:
    add ecx, 022h ; 0040c2fa
L_0040c2fd:
    jmp L_0040c319 ; 0040c2fd
L_0040c2ff:
    shr ebx, 9 ; 0040c2ff
L_0040c302:
    xor ecx, ecx ; 0040c302
L_0040c304:
    mov cl, byte ptr [ebx + edx + 045ch] ; 0040c304
L_0040c30b:
    add ecx, 012h ; 0040c30b
L_0040c30e:
    jmp L_0040c319 ; 0040c30e
L_0040c310:
    xor ecx, ecx ; 0040c310
L_0040c312:
    mov cl, byte ptr [ebx + edx + 045ch] ; 0040c312
L_0040c319:
    shl ecx, 4 ; 0040c319
L_0040c31c:
    inc word ptr [ecx + edx + 02b06h] ; 0040c31c
L_0040c324:
    xor ecx, ecx ; 0040c324
L_0040c326:
    mov ebx, dword ptr [edx + 030h] ; 0040c326
L_0040c329:
    mov cl, byte ptr [ebx + esi] ; 0040c329
L_0040c32c:
    inc word ptr [edx + ecx*2 + 03c10h] ; 0040c32c
L_0040c334:
    mov ebx, dword ptr [edx + 030h] ; 0040c334
L_0040c337:
    xor ecx, ecx ; 0040c337
L_0040c339:
    add edi, 4 ; 0040c339
L_0040c33c:
    mov cl, byte ptr [ebx + esi] ; 0040c33c
L_0040c33f:
    add ecx, 2 ; 0040c33f
L_0040c342:
    add eax, ecx ; 0040c342
L_0040c344:
    inc esi ; 0040c344
L_0040c345:
    cmp esi, dword ptr [esp + 024h] ; 0040c345
L_0040c349:
    jb L_0040c252 ; 0040c349
L_0040c34f:
    pop ebp ; 0040c34f
L_0040c350:
    pop edi ; 0040c350
L_0040c351:
    pop esi ; 0040c351
L_0040c352:
    pop ebx ; 0040c352
L_0040c353:
    add esp, 4 ; 0040c353
L_0040c356:
    retn  ; 0040c356
L_0040c357:
    db 0cch
L_0040c358:
    db 0cch
L_0040c359:
    db 0cch
L_0040c35a:
    db 0cch
L_0040c35b:
    db 0cch
L_0040c35c:
    db 0cch
L_0040c35d:
    db 0cch
L_0040c35e:
    db 0cch
L_0040c35f:
    db 0cch
L_0040c360:
    mov eax, dword ptr [esp + 010h] ; 0040c360
L_0040c364:
    mov ecx, dword ptr [esp + 0ch] ; 0040c364
L_0040c368:
    mov edx, dword ptr [esp + 8] ; 0040c368
L_0040c36c:
    push eax ; 0040c36c
L_0040c36d:
    mov eax, dword ptr [esp + 8] ; 0040c36d
L_0040c371:
    push ecx ; 0040c371
L_0040c372:
    push edx ; 0040c372
L_0040c373:
    push eax ; 0040c373
L_0040c374:
    call L_0040c230 ; 0040c374
L_0040c379:
    add esp, 010h ; 0040c379
L_0040c37c:
    retn  ; 0040c37c
L_0040c37d:
    db 0cch
L_0040c37e:
    db 0cch
L_0040c37f:
    db 0cch
L_0040c380:
    mov eax, dword ptr [esp + 014h] ; 0040c380
L_0040c384:
    mov ecx, dword ptr [esp + 0ch] ; 0040c384
L_0040c388:
    sub esp, 0818h ; 0040c388
L_0040c38e:
    mov dword ptr [eax], ecx ; 0040c38e
L_0040c390:
    cmp dword ptr [esp + 0830h], 0 ; 0040c390
L_0040c398:
    push ebx ; 0040c398
L_0040c399:
    push esi ; 0040c399
L_0040c39a:
    push edi ; 0040c39a
L_0040c39b:
    push ebp ; 0040c39b
L_0040c39c:
    je L_0040c3ae ; 0040c39c
L_0040c39e:
    mov eax, dword ptr [esp + 0838h] ; 0040c39e
L_0040c3a5:
    mov ecx, dword ptr [esp + 0840h] ; 0040c3a5
L_0040c3ac:
    mov dword ptr [ecx], eax ; 0040c3ac
L_0040c3ae:
    mov eax, dword ptr [esp + 0834h] ; 0040c3ae
L_0040c3b5:
    sub eax, dword ptr [esp + 0830h] ; 0040c3b5
L_0040c3bc:
    cmp eax, 01800h ; 0040c3bc
L_0040c3c1:
    jae L_0040c3d0 ; 0040c3c1
L_0040c3c3:
    xor eax, eax ; 0040c3c3
L_0040c3c5:
    pop ebp ; 0040c3c5
L_0040c3c6:
    pop edi ; 0040c3c6
L_0040c3c7:
    pop esi ; 0040c3c7
L_0040c3c8:
    pop ebx ; 0040c3c8
L_0040c3c9:
    add esp, 0818h ; 0040c3c9
L_0040c3cf:
    retn  ; 0040c3cf
L_0040c3d0:
    mov esi, dword ptr [esp + 082ch] ; 0040c3d0
L_0040c3d7:
    cmp byte ptr [esi + 087ch], 4 ; 0040c3d7
L_0040c3de:
    jb L_0040c3ed ; 0040c3de
L_0040c3e0:
    xor eax, eax ; 0040c3e0
L_0040c3e2:
    pop ebp ; 0040c3e2
L_0040c3e3:
    pop edi ; 0040c3e3
L_0040c3e4:
    pop esi ; 0040c3e4
L_0040c3e5:
    pop ebx ; 0040c3e5
L_0040c3e6:
    add esp, 0818h ; 0040c3e6
L_0040c3ec:
    retn  ; 0040c3ec
L_0040c3ed:
    xor edi, edi ; 0040c3ed
L_0040c3ef:
    xor eax, eax ; 0040c3ef
L_0040c3f1:
    test dword ptr [esp + 0834h], 0fffffff8h ; 0040c3f1
L_0040c3fc:
    jbe L_0040c42f ; 0040c3fc
L_0040c3fe:
    lea ebp, [esp + 018h] ; 0040c3fe
L_0040c402:
    mov ebx, dword ptr [esp + 0834h] ; 0040c402
L_0040c409:
    shr ebx, 3 ; 0040c409
L_0040c40c:
    test al, 7 ; 0040c40c
L_0040c40e:
    jne L_0040c417 ; 0040c40e
L_0040c410:
    mov word ptr [ebp], di ; 0040c410
L_0040c414:
    add ebp, 2 ; 0040c414
L_0040c417:
    xor ecx, ecx ; 0040c417
L_0040c419:
    mov edx, dword ptr [esi + 034h] ; 0040c419
L_0040c41c:
    mov cl, byte ptr [eax + edx] ; 0040c41c
L_0040c41f:
    inc eax ; 0040c41f
L_0040c420:
    xor edx, edx ; 0040c420
L_0040c422:
    mov dl, byte ptr [ecx + esi + 087dh] ; 0040c422
L_0040c429:
    add edi, edx ; 0040c429
L_0040c42b:
    cmp eax, ebx ; 0040c42b
L_0040c42d:
    jb L_0040c40c ; 0040c42d
L_0040c42f:
    mov eax, dword ptr [esp + 0830h] ; 0040c42f
L_0040c436:
    mov ecx, dword ptr [esp + 0834h] ; 0040c436
L_0040c43d:
    add eax, 03fh ; 0040c43d
L_0040c440:
    sub ecx, 01000h ; 0040c440
L_0040c446:
    and eax, 0ffffffc0h ; 0040c446
L_0040c449:
    mov dword ptr [esp + 0830h], eax ; 0040c449
L_0040c450:
    lea edi, [eax + 0800h] ; 0040c450
L_0040c456:
    cmp ecx, edi ; 0040c456
L_0040c458:
    jbe L_0040c5cb ; 0040c458
L_0040c45e:
    lea eax, [edi + 0400h] ; 0040c45e
L_0040c464:
    push 0400h ; 0040c464
L_0040c469:
    mov dword ptr [esp + 014h], eax ; 0040c469
L_0040c46d:
    and eax, 0ffffffdfh ; 0040c46d
L_0040c470:
    shr eax, 5 ; 0040c470
L_0040c473:
    mov eax, dword ptr [esp + eax + 01ch] ; 0040c473
L_0040c477:
    and eax, 0ffffh ; 0040c477
L_0040c47c:
    push eax ; 0040c47c
L_0040c47d:
    mov eax, edi ; 0040c47d
L_0040c47f:
    and eax, 0ffffffdfh ; 0040c47f
L_0040c482:
    mov ecx, dword ptr [esp + 018h] ; 0040c482
L_0040c486:
    shr eax, 5 ; 0040c486
L_0040c489:
    mov eax, dword ptr [esp + eax + 020h] ; 0040c489
L_0040c48d:
    and eax, 0ffffh ; 0040c48d
L_0040c492:
    push eax ; 0040c492
L_0040c493:
    push ecx ; 0040c493
L_0040c494:
    push edi ; 0040c494
L_0040c495:
    push esi ; 0040c495
L_0040c496:
    call L_0040c620 ; 0040c496
L_0040c49b:
    add esp, 018h ; 0040c49b
L_0040c49e:
    cmp eax, 0578h ; 0040c49e
L_0040c4a3:
    jbe L_0040c5b2 ; 0040c4a3
L_0040c4a9:
    lea edx, [edi + 0800h] ; 0040c4a9
L_0040c4af:
    lea ecx, [edi - 0400h] ; 0040c4af
L_0040c4b5:
    push 0400h ; 0040c4b5
L_0040c4ba:
    mov eax, edx ; 0040c4ba
L_0040c4bc:
    and eax, 0ffffffdfh ; 0040c4bc
L_0040c4bf:
    shr eax, 5 ; 0040c4bf
L_0040c4c2:
    mov eax, dword ptr [esp + eax + 01ch] ; 0040c4c2
L_0040c4c6:
    and eax, 0ffffh ; 0040c4c6
L_0040c4cb:
    push eax ; 0040c4cb
L_0040c4cc:
    mov eax, ecx ; 0040c4cc
L_0040c4ce:
    and eax, 0ffffffdfh ; 0040c4ce
L_0040c4d1:
    shr eax, 5 ; 0040c4d1
L_0040c4d4:
    mov eax, dword ptr [esp + eax + 020h] ; 0040c4d4
L_0040c4d8:
    and eax, 0ffffh ; 0040c4d8
L_0040c4dd:
    push eax ; 0040c4dd
L_0040c4de:
    push edx ; 0040c4de
L_0040c4df:
    push ecx ; 0040c4df
L_0040c4e0:
    push esi ; 0040c4e0
L_0040c4e1:
    call L_0040c620 ; 0040c4e1
L_0040c4e6:
    add esp, 018h ; 0040c4e6
L_0040c4e9:
    cmp eax, 0578h ; 0040c4e9
L_0040c4ee:
    jbe L_0040c5b2 ; 0040c4ee
L_0040c4f4:
    lea edx, [edi + 0c00h] ; 0040c4f4
L_0040c4fa:
    lea ecx, [edi - 0800h] ; 0040c4fa
L_0040c500:
    push 0400h ; 0040c500
L_0040c505:
    mov eax, edx ; 0040c505
L_0040c507:
    and eax, 0ffffffdfh ; 0040c507
L_0040c50a:
    shr eax, 5 ; 0040c50a
L_0040c50d:
    mov eax, dword ptr [esp + eax + 01ch] ; 0040c50d
L_0040c511:
    and eax, 0ffffh ; 0040c511
L_0040c516:
    push eax ; 0040c516
L_0040c517:
    mov eax, ecx ; 0040c517
L_0040c519:
    and eax, 0ffffffdfh ; 0040c519
L_0040c51c:
    shr eax, 5 ; 0040c51c
L_0040c51f:
    mov eax, dword ptr [esp + eax + 020h] ; 0040c51f
L_0040c523:
    and eax, 0ffffh ; 0040c523
L_0040c528:
    push eax ; 0040c528
L_0040c529:
    push edx ; 0040c529
L_0040c52a:
    push ecx ; 0040c52a
L_0040c52b:
    push esi ; 0040c52b
L_0040c52c:
    call L_0040c620 ; 0040c52c
L_0040c531:
    add esp, 018h ; 0040c531
L_0040c534:
    cmp eax, 0578h ; 0040c534
L_0040c539:
    jbe L_0040c5b2 ; 0040c539
L_0040c53b:
    lea ebx, [edi + 0200h] ; 0040c53b
L_0040c541:
    xor ebp, ebp ; 0040c541
L_0040c543:
    add edi, 0a00h ; 0040c543
L_0040c549:
    cmp ebx, edi ; 0040c549
L_0040c54b:
    jae L_0040c598 ; 0040c54b
L_0040c54d:
    mov eax, ebx ; 0040c54d
L_0040c54f:
    and eax, 0ffffffdfh ; 0040c54f
L_0040c552:
    shr eax, 5 ; 0040c552
L_0040c555:
    lea ecx, [ebx - 0400h] ; 0040c555
L_0040c55b:
    push 0400h ; 0040c55b
L_0040c560:
    mov eax, dword ptr [esp + eax + 01ch] ; 0040c560
L_0040c564:
    and eax, 0ffffh ; 0040c564
L_0040c569:
    push eax ; 0040c569
L_0040c56a:
    mov eax, ecx ; 0040c56a
L_0040c56c:
    and eax, 0ffffffdfh ; 0040c56c
L_0040c56f:
    shr eax, 5 ; 0040c56f
L_0040c572:
    mov eax, dword ptr [esp + eax + 020h] ; 0040c572
L_0040c576:
    and eax, 0ffffh ; 0040c576
L_0040c57b:
    push eax ; 0040c57b
L_0040c57c:
    push ebx ; 0040c57c
L_0040c57d:
    push ecx ; 0040c57d
L_0040c57e:
    push esi ; 0040c57e
L_0040c57f:
    call L_0040c620 ; 0040c57f
L_0040c584:
    add esp, 018h ; 0040c584
L_0040c587:
    cmp eax, ebp ; 0040c587
L_0040c589:
    jbe L_0040c591 ; 0040c589
L_0040c58b:
    mov ebp, eax ; 0040c58b
L_0040c58d:
    mov dword ptr [esp + 014h], ebx ; 0040c58d
L_0040c591:
    add ebx, 040h ; 0040c591
L_0040c594:
    cmp ebx, edi ; 0040c594
L_0040c596:
    jb L_0040c54d ; 0040c596
L_0040c598:
    cmp ebp, 06a4h ; 0040c598
L_0040c59e:
    jb L_0040c5b2 ; 0040c59e
L_0040c5a0:
    mov eax, dword ptr [esp + 014h] ; 0040c5a0
L_0040c5a4:
    sub eax, dword ptr [esp + 0830h] ; 0040c5a4
L_0040c5ab:
    cmp eax, 01000h ; 0040c5ab
L_0040c5b0:
    jae L_0040c5d8 ; 0040c5b0
L_0040c5b2:
    mov edi, dword ptr [esp + 010h] ; 0040c5b2
L_0040c5b6:
    mov ecx, dword ptr [esp + 0834h] ; 0040c5b6
L_0040c5bd:
    sub ecx, 01000h ; 0040c5bd
L_0040c5c3:
    cmp edi, ecx ; 0040c5c3
L_0040c5c5:
    jb L_0040c45e ; 0040c5c5
L_0040c5cb:
    xor eax, eax ; 0040c5cb
L_0040c5cd:
    pop ebp ; 0040c5cd
L_0040c5ce:
    pop edi ; 0040c5ce
L_0040c5cf:
    pop esi ; 0040c5cf
L_0040c5d0:
    pop ebx ; 0040c5d0
L_0040c5d1:
    add esp, 0818h ; 0040c5d1
L_0040c5d7:
    retn  ; 0040c5d7
L_0040c5d8:
    mov eax, dword ptr [esp + 083ch] ; 0040c5d8
L_0040c5df:
    mov ecx, dword ptr [esp + 014h] ; 0040c5df
L_0040c5e3:
    inc byte ptr [esi + 087ch] ; 0040c5e3
L_0040c5e9:
    cmp dword ptr [esp + 0840h], 0 ; 0040c5e9
L_0040c5f1:
    mov dword ptr [eax], ecx ; 0040c5f1
L_0040c5f3:
    je L_0040c60f ; 0040c5f3
L_0040c5f5:
    mov eax, ecx ; 0040c5f5
L_0040c5f7:
    mov ecx, dword ptr [esp + 0840h] ; 0040c5f7
L_0040c5fe:
    and eax, 0ffffffdfh ; 0040c5fe
L_0040c601:
    shr eax, 5 ; 0040c601
L_0040c604:
    mov eax, dword ptr [esp + eax + 018h] ; 0040c604
L_0040c608:
    and eax, 0ffffh ; 0040c608
L_0040c60d:
    mov dword ptr [ecx], eax ; 0040c60d
L_0040c60f:
    mov eax, 1 ; 0040c60f
L_0040c614:
    pop ebp ; 0040c614
L_0040c615:
    pop edi ; 0040c615
L_0040c616:
    pop esi ; 0040c616
L_0040c617:
    pop ebx ; 0040c617
L_0040c618:
    add esp, 0818h ; 0040c618
L_0040c61e:
    retn  ; 0040c61e
L_0040c61f:
    db 0cch
L_0040c620:
    mov edx, dword ptr [esp + 4] ; 0040c620
L_0040c624:
    sub esp, 0c90h ; 0040c624
L_0040c62a:
    push ebx ; 0040c62a
L_0040c62b:
    mov eax, dword ptr [edx + 0870h] ; 0040c62b
L_0040c631:
    push esi ; 0040c631
L_0040c632:
    add eax, 020h ; 0040c632
L_0040c635:
    mov dword ptr [esp + 8], eax ; 0040c635
L_0040c639:
    push edi ; 0040c639
L_0040c63a:
    push ebp ; 0040c63a
L_0040c63b:
    and eax, 01fffffffh ; 0040c63b
L_0040c640:
    mov dword ptr [esp + 014h], eax ; 0040c640
L_0040c644:
    cmp eax, 064h ; 0040c644
L_0040c647:
    jb L_0040c656 ; 0040c647
L_0040c649:
    xor eax, eax ; 0040c649
L_0040c64b:
    pop ebp ; 0040c64b
L_0040c64c:
    pop edi ; 0040c64c
L_0040c64d:
    pop esi ; 0040c64d
L_0040c64e:
    pop ebx ; 0040c64e
L_0040c64f:
    add esp, 0c90h ; 0040c64f
L_0040c655:
    retn  ; 0040c655
L_0040c656:
    mov esi, dword ptr [esp + 010h] ; 0040c656
L_0040c65a:
    lea edi, [esp + 0660h] ; 0040c65a
L_0040c661:
    shl esi, 4 ; 0040c661
L_0040c664:
    xor eax, eax ; 0040c664
L_0040c666:
    mov ecx, esi ; 0040c666
L_0040c668:
    shr ecx, 2 ; 0040c668
L_0040c66b:
    rep stosd  ; 0040c66b
L_0040c66d:
    mov ecx, esi ; 0040c66d
L_0040c66f:
    and ecx, 3 ; 0040c66f
L_0040c672:
    rep stosb  ; 0040c672
L_0040c674:
    lea edi, [esp + 020h] ; 0040c674
L_0040c678:
    mov ecx, esi ; 0040c678
L_0040c67a:
    shr ecx, 2 ; 0040c67a
L_0040c67d:
    rep stosd  ; 0040c67d
L_0040c67f:
    mov ecx, esi ; 0040c67f
L_0040c681:
    and ecx, 3 ; 0040c681
L_0040c684:
    rep stosb  ; 0040c684
L_0040c686:
    mov eax, dword ptr [esp + 0cb8h] ; 0040c686
L_0040c68d:
    test eax, eax ; 0040c68d
L_0040c68f:
    je L_0040c853 ; 0040c68f
L_0040c695:
    mov esi, dword ptr [esp + 0ca8h] ; 0040c695
L_0040c69c:
    mov edi, dword ptr [esp + 0cach] ; 0040c69c
L_0040c6a3:
    mov ebp, dword ptr [esp + 0cb0h] ; 0040c6a3
L_0040c6aa:
    mov dword ptr [esp + 018h], eax ; 0040c6aa
L_0040c6ae:
    mov ebx, esi ; 0040c6ae
L_0040c6b0:
    xor eax, eax ; 0040c6b0
L_0040c6b2:
    shr ebx, 3 ; 0040c6b2
L_0040c6b5:
    mov ecx, dword ptr [edx + 034h] ; 0040c6b5
L_0040c6b8:
    mov al, byte ptr [ebx + ecx] ; 0040c6b8
L_0040c6bb:
    mov ebx, 1 ; 0040c6bb
L_0040c6c0:
    mov ecx, esi ; 0040c6c0
L_0040c6c2:
    and cl, 7 ; 0040c6c2
L_0040c6c5:
    shl ebx, cl ; 0040c6c5
L_0040c6c7:
    mov ecx, dword ptr [edx + 030h] ; 0040c6c7
L_0040c6ca:
    test ebx, eax ; 0040c6ca
L_0040c6cc:
    jne L_0040c6d8 ; 0040c6cc
L_0040c6ce:
    xor eax, eax ; 0040c6ce
L_0040c6d0:
    mov al, byte ptr [ecx + esi] ; 0040c6d0
L_0040c6d3:
    jmp L_0040c767 ; 0040c6d3
L_0040c6d8:
    mov bl, byte ptr [ecx + esi] ; 0040c6d8
L_0040c6db:
    mov eax, dword ptr [edx + 02ch] ; 0040c6db
L_0040c6de:
    cmp bl, 7 ; 0040c6de
L_0040c6e1:
    mov ecx, dword ptr [eax + ebp*4] ; 0040c6e1
L_0040c6e4:
    jae L_0040c729 ; 0040c6e4
L_0040c6e6:
    cmp ecx, 0400h ; 0040c6e6
L_0040c6ec:
    jb L_0040c713 ; 0040c6ec
L_0040c6ee:
    cmp ecx, 080000h ; 0040c6ee
L_0040c6f4:
    jb L_0040c702 ; 0040c6f4
L_0040c6f6:
    shr ecx, 011h ; 0040c6f6
L_0040c6f9:
    xor eax, eax ; 0040c6f9
L_0040c6fb:
    mov al, cl ; 0040c6fb
L_0040c6fd:
    add eax, 022h ; 0040c6fd
L_0040c700:
    jmp L_0040c71c ; 0040c700
L_0040c702:
    shr ecx, 9 ; 0040c702
L_0040c705:
    xor eax, eax ; 0040c705
L_0040c707:
    mov al, byte ptr [ecx + edx + 045ch] ; 0040c707
L_0040c70e:
    add eax, 012h ; 0040c70e
L_0040c711:
    jmp L_0040c71c ; 0040c711
L_0040c713:
    xor eax, eax ; 0040c713
L_0040c715:
    mov al, byte ptr [edx + ecx + 045ch] ; 0040c715
L_0040c71c:
    xor ecx, ecx ; 0040c71c
L_0040c71e:
    mov cl, bl ; 0040c71e
L_0040c720:
    lea eax, [ecx + eax*8 + 0100h] ; 0040c720
L_0040c727:
    jmp L_0040c766 ; 0040c727
L_0040c729:
    cmp ecx, 0400h ; 0040c729
L_0040c72f:
    jb L_0040c756 ; 0040c72f
L_0040c731:
    cmp ecx, 080000h ; 0040c731
L_0040c737:
    jb L_0040c745 ; 0040c737
L_0040c739:
    shr ecx, 011h ; 0040c739
L_0040c73c:
    xor eax, eax ; 0040c73c
L_0040c73e:
    mov al, cl ; 0040c73e
L_0040c740:
    add eax, 022h ; 0040c740
L_0040c743:
    jmp L_0040c75f ; 0040c743
L_0040c745:
    shr ecx, 9 ; 0040c745
L_0040c748:
    xor eax, eax ; 0040c748
L_0040c74a:
    mov al, byte ptr [ecx + edx + 045ch] ; 0040c74a
L_0040c751:
    add eax, 012h ; 0040c751
L_0040c754:
    jmp L_0040c75f ; 0040c754
L_0040c756:
    xor eax, eax ; 0040c756
L_0040c758:
    mov al, byte ptr [edx + ecx + 045ch] ; 0040c758
L_0040c75f:
    lea eax, [eax*8 + 0107h] ; 0040c75f
L_0040c766:
    inc ebp ; 0040c766
L_0040c767:
    inc word ptr [esp + eax*2 + 0660h] ; 0040c767
L_0040c76f:
    inc esi ; 0040c76f
L_0040c770:
    mov ebx, edi ; 0040c770
L_0040c772:
    xor eax, eax ; 0040c772
L_0040c774:
    shr ebx, 3 ; 0040c774
L_0040c777:
    mov ecx, dword ptr [edx + 034h] ; 0040c777
L_0040c77a:
    mov al, byte ptr [ebx + ecx] ; 0040c77a
L_0040c77d:
    mov ebx, 1 ; 0040c77d
L_0040c782:
    mov ecx, edi ; 0040c782
L_0040c784:
    and cl, 7 ; 0040c784
L_0040c787:
    shl ebx, cl ; 0040c787
L_0040c789:
    test ebx, eax ; 0040c789
L_0040c78b:
    jne L_0040c79a ; 0040c78b
L_0040c78d:
    mov ecx, dword ptr [edx + 030h] ; 0040c78d
L_0040c790:
    xor eax, eax ; 0040c790
L_0040c792:
    mov al, byte ptr [ecx + edi] ; 0040c792
L_0040c795:
    jmp L_0040c843 ; 0040c795
L_0040c79a:
    mov eax, dword ptr [edx + 030h] ; 0040c79a
L_0040c79d:
    mov al, byte ptr [eax + edi] ; 0040c79d
L_0040c7a0:
    cmp al, 7 ; 0040c7a0
L_0040c7a2:
    jae L_0040c7f4 ; 0040c7a2
L_0040c7a4:
    mov ebx, dword ptr [edx + 02ch] ; 0040c7a4
L_0040c7a7:
    mov ecx, dword ptr [esp + 0cb4h] ; 0040c7a7
L_0040c7ae:
    mov ecx, dword ptr [ebx + ecx*4] ; 0040c7ae
L_0040c7b1:
    cmp ecx, 0400h ; 0040c7b1
L_0040c7b7:
    jb L_0040c7de ; 0040c7b7
L_0040c7b9:
    cmp ecx, 080000h ; 0040c7b9
L_0040c7bf:
    jb L_0040c7cd ; 0040c7bf
L_0040c7c1:
    shr ecx, 011h ; 0040c7c1
L_0040c7c4:
    xor ebx, ebx ; 0040c7c4
L_0040c7c6:
    mov bl, cl ; 0040c7c6
L_0040c7c8:
    add ebx, 022h ; 0040c7c8
L_0040c7cb:
    jmp L_0040c7e7 ; 0040c7cb
L_0040c7cd:
    shr ecx, 9 ; 0040c7cd
L_0040c7d0:
    xor ebx, ebx ; 0040c7d0
L_0040c7d2:
    mov bl, byte ptr [ecx + edx + 045ch] ; 0040c7d2
L_0040c7d9:
    add ebx, 012h ; 0040c7d9
L_0040c7dc:
    jmp L_0040c7e7 ; 0040c7dc
L_0040c7de:
    xor ebx, ebx ; 0040c7de
L_0040c7e0:
    mov bl, byte ptr [edx + ecx + 045ch] ; 0040c7e0
L_0040c7e7:
    xor ecx, ecx ; 0040c7e7
L_0040c7e9:
    mov cl, al ; 0040c7e9
L_0040c7eb:
    lea eax, [ecx + ebx*8 + 0100h] ; 0040c7eb
L_0040c7f2:
    jmp L_0040c83c ; 0040c7f2
L_0040c7f4:
    mov eax, dword ptr [edx + 02ch] ; 0040c7f4
L_0040c7f7:
    mov ecx, dword ptr [esp + 0cb4h] ; 0040c7f7
L_0040c7fe:
    mov eax, dword ptr [eax + ecx*4] ; 0040c7fe
L_0040c801:
    cmp eax, 0400h ; 0040c801
L_0040c806:
    jb L_0040c82c ; 0040c806
L_0040c808:
    cmp eax, 080000h ; 0040c808
L_0040c80d:
    jb L_0040c81b ; 0040c80d
L_0040c80f:
    shr eax, 011h ; 0040c80f
L_0040c812:
    xor ecx, ecx ; 0040c812
L_0040c814:
    mov cl, al ; 0040c814
L_0040c816:
    add ecx, 022h ; 0040c816
L_0040c819:
    jmp L_0040c835 ; 0040c819
L_0040c81b:
    shr eax, 9 ; 0040c81b
L_0040c81e:
    xor ecx, ecx ; 0040c81e
L_0040c820:
    mov cl, byte ptr [eax + edx + 045ch] ; 0040c820
L_0040c827:
    add ecx, 012h ; 0040c827
L_0040c82a:
    jmp L_0040c835 ; 0040c82a
L_0040c82c:
    xor ecx, ecx ; 0040c82c
L_0040c82e:
    mov cl, byte ptr [edx + eax + 045ch] ; 0040c82e
L_0040c835:
    lea eax, [ecx*8 + 0107h] ; 0040c835
L_0040c83c:
    inc dword ptr [esp + 0cb4h] ; 0040c83c
L_0040c843:
    inc word ptr [esp + eax*2 + 020h] ; 0040c843
L_0040c848:
    inc edi ; 0040c848
L_0040c849:
    dec dword ptr [esp + 018h] ; 0040c849
L_0040c84d:
    jne L_0040c6ae ; 0040c84d
L_0040c853:
    xor esi, esi ; 0040c853
L_0040c855:
    cmp dword ptr [esp + 014h], esi ; 0040c855
L_0040c859:
    je L_0040c8e0 ; 0040c859
L_0040c85f:
    lea edi, [esp + 020h] ; 0040c85f
L_0040c863:
    lea ecx, [esp + 0660h] ; 0040c863
L_0040c86a:
    mov ebx, dword ptr [esp + 010h] ; 0040c86a
L_0040c86e:
    shl ebx, 3 ; 0040c86e
L_0040c871:
    mov ax, word ptr [ecx] ; 0040c871
L_0040c874:
    cmp ax, 0100h ; 0040c874
L_0040c878:
    jb L_0040c88e ; 0040c878
L_0040c87a:
    shr ax, 8 ; 0040c87a
L_0040c87e:
    movzx edx, ax ; 0040c87e
L_0040c881:
    xor eax, eax ; 0040c881
L_0040c883:
    mov al, byte ptr [edx + _kb_rdata + 6336] ; 0040c883
L_0040c889:
    add eax, 8 ; 0040c889
L_0040c88c:
    jmp L_0040c899 ; 0040c88c
L_0040c88e:
    movzx edx, ax ; 0040c88e
L_0040c891:
    xor eax, eax ; 0040c891
L_0040c893:
    mov al, byte ptr [edx + _kb_rdata + 6336] ; 0040c893
L_0040c899:
    mov dx, word ptr [edi] ; 0040c899
L_0040c89c:
    cmp dx, 0100h ; 0040c89c
L_0040c8a1:
    jb L_0040c8b7 ; 0040c8a1
L_0040c8a3:
    shr dx, 8 ; 0040c8a3
L_0040c8a7:
    movzx ebp, dx ; 0040c8a7
L_0040c8aa:
    xor edx, edx ; 0040c8aa
L_0040c8ac:
    mov dl, byte ptr [ebp + _kb_rdata + 6336] ; 0040c8ac
L_0040c8b2:
    add edx, 8 ; 0040c8b2
L_0040c8b5:
    jmp L_0040c8c2 ; 0040c8b5
L_0040c8b7:
    movzx ebp, dx ; 0040c8b7
L_0040c8ba:
    xor edx, edx ; 0040c8ba
L_0040c8bc:
    mov dl, byte ptr [ebp + _kb_rdata + 6336] ; 0040c8bc
L_0040c8c2:
    mov eax, dword ptr [eax*4 + _kb_rdata + 6264] ; 0040c8c2
L_0040c8c9:
    add edi, 2 ; 0040c8c9
L_0040c8cc:
    sub eax, dword ptr [edx*4 + _kb_rdata + 6264] ; 0040c8cc
L_0040c8d3:
    add ecx, 2 ; 0040c8d3
L_0040c8d6:
    cdq  ; 0040c8d6
L_0040c8d7:
    xor eax, edx ; 0040c8d7
L_0040c8d9:
    sub esi, edx ; 0040c8d9
L_0040c8db:
    add esi, eax ; 0040c8db
L_0040c8dd:
    dec ebx ; 0040c8dd
L_0040c8de:
    jne L_0040c871 ; 0040c8de
L_0040c8e0:
    mov eax, esi ; 0040c8e0
L_0040c8e2:
    pop ebp ; 0040c8e2
L_0040c8e3:
    pop edi ; 0040c8e3
L_0040c8e4:
    pop esi ; 0040c8e4
L_0040c8e5:
    pop ebx ; 0040c8e5
L_0040c8e6:
    add esp, 0c90h ; 0040c8e6
L_0040c8ec:
    retn  ; 0040c8ec
L_0040c8ed:
    db 0cch
L_0040c8ee:
    db 0cch
L_0040c8ef:
    db 0cch
L_0040c8f0:
    mov edx, dword ptr [esp + 8] ; 0040c8f0
L_0040c8f4:
    push ebx ; 0040c8f4
L_0040c8f5:
    push esi ; 0040c8f5
L_0040c8f6:
    xor bl, bl ; 0040c8f6
L_0040c8f8:
    push edi ; 0040c8f8
L_0040c8f9:
    lea edi, [edx - 1] ; 0040c8f9
L_0040c8fc:
    test edi, edi ; 0040c8fc
L_0040c8fe:
    jl L_0040c926 ; 0040c8fe
L_0040c900:
    lea eax, [edi*4] ; 0040c900
L_0040c907:
    mov ecx, dword ptr [esp + 010h] ; 0040c907
L_0040c90b:
    add eax, dword ptr [ecx + 02ch] ; 0040c90b
L_0040c90e:
    cmp dword ptr [eax], 2 ; 0040c90e
L_0040c911:
    jbe L_0040c91c ; 0040c911
L_0040c913:
    inc bl ; 0040c913
L_0040c915:
    cmp bl, 3 ; 0040c915
L_0040c918:
    jb L_0040c91e ; 0040c918
L_0040c91a:
    jmp L_0040c92a ; 0040c91a
L_0040c91c:
    xor bl, bl ; 0040c91c
L_0040c91e:
    sub eax, 4 ; 0040c91e
L_0040c921:
    dec edi ; 0040c921
L_0040c922:
    jns L_0040c90e ; 0040c922
L_0040c924:
    jmp L_0040c92a ; 0040c924
L_0040c926:
    mov ecx, dword ptr [esp + 010h] ; 0040c926
L_0040c92a:
    cmp bl, 3 ; 0040c92a
L_0040c92d:
    jae L_0040c931 ; 0040c92d
L_0040c92f:
    xor edi, edi ; 0040c92f
L_0040c931:
    cmp edi, edx ; 0040c931
L_0040c933:
    jge L_0040c972 ; 0040c933
L_0040c935:
    lea esi, [edi*4] ; 0040c935
L_0040c93c:
    sub edx, edi ; 0040c93c
L_0040c93e:
    mov eax, dword ptr [ecx + 02ch] ; 0040c93e
L_0040c941:
    mov edi, dword ptr [eax + esi] ; 0040c941
L_0040c944:
    test edi, edi ; 0040c944
L_0040c946:
    je L_0040c96c ; 0040c946
L_0040c948:
    cmp edi, 2 ; 0040c948
L_0040c94b:
    ja L_0040c95a ; 0040c94b
L_0040c94d:
    lea eax, [ecx + edi*4 + 038h] ; 0040c94d
L_0040c951:
    mov ebx, dword ptr [ecx + 038h] ; 0040c951
L_0040c954:
    mov edi, dword ptr [eax] ; 0040c954
L_0040c956:
    mov dword ptr [eax], ebx ; 0040c956
L_0040c958:
    jmp L_0040c969 ; 0040c958
L_0040c95a:
    mov eax, dword ptr [ecx + 03ch] ; 0040c95a
L_0040c95d:
    mov ebx, dword ptr [ecx + 038h] ; 0040c95d
L_0040c960:
    sub edi, 2 ; 0040c960
L_0040c963:
    mov dword ptr [ecx + 040h], eax ; 0040c963
L_0040c966:
    mov dword ptr [ecx + 03ch], ebx ; 0040c966
L_0040c969:
    mov dword ptr [ecx + 038h], edi ; 0040c969
L_0040c96c:
    add esi, 4 ; 0040c96c
L_0040c96f:
    dec edx ; 0040c96f
L_0040c970:
    jne L_0040c93e ; 0040c970
L_0040c972:
    pop edi ; 0040c972
L_0040c973:
    pop esi ; 0040c973
L_0040c974:
    pop ebx ; 0040c974
L_0040c975:
    retn  ; 0040c975
L_0040c976:
    db 0cch
L_0040c977:
    db 0cch
L_0040c978:
    db 0cch
L_0040c979:
    db 0cch
L_0040c97a:
    db 0cch
L_0040c97b:
    db 0cch
L_0040c97c:
    db 0cch
L_0040c97d:
    db 0cch
L_0040c97e:
    db 0cch
L_0040c97f:
    db 0cch
L_0040c980:
    push ebx ; 0040c980
L_0040c981:
    push esi ; 0040c981
L_0040c982:
    mov esi, dword ptr [esp + 0ch] ; 0040c982
L_0040c986:
    push edi ; 0040c986
L_0040c987:
    movsx eax, byte ptr [esi + 018h] ; 0040c987
L_0040c98b:
    push ebp ; 0040c98b
L_0040c98c:
    sub eax, 010h ; 0040c98c
L_0040c98f:
    push 0 ; 0040c98f
L_0040c991:
    push eax ; 0040c991
L_0040c992:
    push esi ; 0040c992
L_0040c993:
    call L_0040b900 ; 0040c993
L_0040c998:
    add esp, 0ch ; 0040c998
L_0040c99b:
    lea ecx, [esi + 038h] ; 0040c99b
L_0040c99e:
    mov eax, 3 ; 0040c99e
L_0040c9a3:
    mov edx, dword ptr [ecx] ; 0040c9a3
L_0040c9a5:
    mov edi, 4 ; 0040c9a5
L_0040c9aa:
    mov ebx, dword ptr [esi + 0860h] ; 0040c9aa
L_0040c9b0:
    mov byte ptr [ebx], dl ; 0040c9b0
L_0040c9b2:
    shr edx, 8 ; 0040c9b2
L_0040c9b5:
    inc dword ptr [esi + 0860h] ; 0040c9b5
L_0040c9bb:
    dec edi ; 0040c9bb
L_0040c9bc:
    jne L_0040c9aa ; 0040c9bc
L_0040c9be:
    add ecx, 4 ; 0040c9be
L_0040c9c1:
    dec eax ; 0040c9c1
L_0040c9c2:
    jne L_0040c9a3 ; 0040c9c2
L_0040c9c4:
    mov ebx, dword ptr [esp + 01ch] ; 0040c9c4
L_0040c9c8:
    mov ebp, ebx ; 0040c9c8
L_0040c9ca:
    and ebp, 1 ; 0040c9ca
L_0040c9cd:
    test ebx, ebx ; 0040c9cd
L_0040c9cf:
    je L_0040ca12 ; 0040c9cf
L_0040c9d1:
    mov edi, dword ptr [esp + 018h] ; 0040c9d1
L_0040c9d5:
    mov eax, dword ptr [esi] ; 0040c9d5
L_0040c9d7:
    mov ecx, dword ptr [esi + 0860h] ; 0040c9d7
L_0040c9dd:
    mov al, byte ptr [eax + edi] ; 0040c9dd
L_0040c9e0:
    inc edi ; 0040c9e0
L_0040c9e1:
    dec ebx ; 0040c9e1
L_0040c9e2:
    mov byte ptr [ecx], al ; 0040c9e2
L_0040c9e4:
    mov eax, dword ptr [esi + 0868h] ; 0040c9e4
L_0040c9ea:
    inc eax ; 0040c9ea
L_0040c9eb:
    inc dword ptr [esi + 0860h] ; 0040c9eb
L_0040c9f1:
    mov dword ptr [esi + 0868h], eax ; 0040c9f1
L_0040c9f7:
    cmp eax, 08000h ; 0040c9f7
L_0040c9fc:
    jne L_0040ca0e ; 0040c9fc
L_0040c9fe:
    push esi ; 0040c9fe
L_0040c9ff:
    call L_0040d3c0 ; 0040c9ff
L_0040ca04:
    mov byte ptr [esi + 087ch], 0 ; 0040ca04
L_0040ca0b:
    add esp, 4 ; 0040ca0b
L_0040ca0e:
    test ebx, ebx ; 0040ca0e
L_0040ca10:
    jne L_0040c9d5 ; 0040ca10
L_0040ca12:
    test ebp, ebp ; 0040ca12
L_0040ca14:
    je L_0040ca25 ; 0040ca14
L_0040ca16:
    mov eax, dword ptr [esi + 0860h] ; 0040ca16
L_0040ca1c:
    mov byte ptr [eax], 0 ; 0040ca1c
L_0040ca1f:
    inc dword ptr [esi + 0860h] ; 0040ca1f
L_0040ca25:
    mov byte ptr [esi + 018h], 020h ; 0040ca25
L_0040ca29:
    mov dword ptr [esi + 014h], 0 ; 0040ca29
L_0040ca30:
    pop ebp ; 0040ca30
L_0040ca31:
    pop edi ; 0040ca31
L_0040ca32:
    pop esi ; 0040ca32
L_0040ca33:
    pop ebx ; 0040ca33
L_0040ca34:
    retn  ; 0040ca34
L_0040ca35:
    db 0cch
L_0040ca36:
    db 0cch
L_0040ca37:
    db 0cch
L_0040ca38:
    db 0cch
L_0040ca39:
    db 0cch
L_0040ca3a:
    db 0cch
L_0040ca3b:
    db 0cch
L_0040ca3c:
    db 0cch
L_0040ca3d:
    db 0cch
L_0040ca3e:
    db 0cch
L_0040ca3f:
    db 0cch
L_0040ca40:
    sub esp, 8 ; 0040ca40
L_0040ca43:
    mov eax, 04b0h ; 0040ca43
L_0040ca48:
    xor ecx, ecx ; 0040ca48
L_0040ca4a:
    push ebx ; 0040ca4a
L_0040ca4b:
    push esi ; 0040ca4b
L_0040ca4c:
    push edi ; 0040ca4c
L_0040ca4d:
    mov esi, dword ptr [esp + 018h] ; 0040ca4d
L_0040ca51:
    push ebp ; 0040ca51
L_0040ca52:
    xor edx, edx ; 0040ca52
L_0040ca54:
    xor edi, edi ; 0040ca54
L_0040ca56:
    mov di, word ptr [esi + ecx*2 + 028f8h] ; 0040ca56
L_0040ca5e:
    mov dl, byte ptr [esi + ecx + 02540h] ; 0040ca5e
L_0040ca65:
    imul edx, edi ; 0040ca65
L_0040ca68:
    add eax, edx ; 0040ca68
L_0040ca6a:
    inc ecx ; 0040ca6a
L_0040ca6b:
    cmp ecx, 0100h ; 0040ca6b
L_0040ca71:
    jb L_0040ca52 ; 0040ca71
L_0040ca73:
    mov byte ptr [esp + 013h], 0 ; 0040ca73
L_0040ca78:
    cmp dword ptr [esi + 0870h], 0 ; 0040ca78
L_0040ca7f:
    je L_0040cad6 ; 0040ca7f
L_0040ca81:
    xor edx, edx ; 0040ca81
L_0040ca83:
    xor ebx, ebx ; 0040ca83
L_0040ca85:
    mov dl, byte ptr [esp + 013h] ; 0040ca85
L_0040ca89:
    lea edi, [edx*8 + 0100h] ; 0040ca89
L_0040ca90:
    mov bl, byte ptr [edx + _kb_rdata + 6168] ; 0040ca90
L_0040ca96:
    mov dword ptr [esp + 014h], ebx ; 0040ca96
L_0040ca9a:
    lea ecx, [esi + edi*2 + 028f8h] ; 0040ca9a
L_0040caa1:
    mov ebx, 8 ; 0040caa1
L_0040caa6:
    xor edx, edx ; 0040caa6
L_0040caa8:
    xor ebp, ebp ; 0040caa8
L_0040caaa:
    mov bp, word ptr [ecx] ; 0040caaa
L_0040caad:
    mov dl, byte ptr [edi + esi + 02540h] ; 0040caad
L_0040cab4:
    add edx, dword ptr [esp + 014h] ; 0040cab4
L_0040cab8:
    add ecx, 2 ; 0040cab8
L_0040cabb:
    imul edx, ebp ; 0040cabb
L_0040cabe:
    add eax, edx ; 0040cabe
L_0040cac0:
    inc edi ; 0040cac0
L_0040cac1:
    dec ebx ; 0040cac1
L_0040cac2:
    jne L_0040caa6 ; 0040cac2
L_0040cac4:
    xor ecx, ecx ; 0040cac4
L_0040cac6:
    inc byte ptr [esp + 013h] ; 0040cac6
L_0040caca:
    mov cl, byte ptr [esp + 013h] ; 0040caca
L_0040cace:
    cmp ecx, dword ptr [esi + 0870h] ; 0040cace
L_0040cad4:
    jb L_0040ca81 ; 0040cad4
L_0040cad6:
    xor ecx, ecx ; 0040cad6
L_0040cad8:
    xor edx, edx ; 0040cad8
L_0040cada:
    xor edi, edi ; 0040cada
L_0040cadc:
    mov di, word ptr [esi + ecx*2 + 03c1eh] ; 0040cadc
L_0040cae4:
    mov dl, byte ptr [esi + ecx + 027fdh] ; 0040cae4
L_0040caeb:
    imul edx, edi ; 0040caeb
L_0040caee:
    add eax, edx ; 0040caee
L_0040caf0:
    inc ecx ; 0040caf0
L_0040caf1:
    cmp ecx, 0f9h ; 0040caf1
L_0040caf7:
    jb L_0040cad8 ; 0040caf7
L_0040caf9:
    add eax, 7 ; 0040caf9
L_0040cafc:
    pop ebp ; 0040cafc
L_0040cafd:
    shr eax, 3 ; 0040cafd
L_0040cb00:
    pop edi ; 0040cb00
L_0040cb01:
    pop esi ; 0040cb01
L_0040cb02:
    pop ebx ; 0040cb02
L_0040cb03:
    add esp, 8 ; 0040cb03
L_0040cb06:
    retn  ; 0040cb06
L_0040cb07:
    db 0cch
L_0040cb08:
    db 0cch
L_0040cb09:
    db 0cch
L_0040cb0a:
    db 0cch
L_0040cb0b:
    db 0cch
L_0040cb0c:
    db 0cch
L_0040cb0d:
    db 0cch
L_0040cb0e:
    db 0cch
L_0040cb0f:
    db 0cch
L_0040cb10:
    sub esp, 010h ; 0040cb10
L_0040cb13:
    push ebx ; 0040cb13
L_0040cb14:
    push esi ; 0040cb14
L_0040cb15:
    push edi ; 0040cb15
L_0040cb16:
    xor esi, esi ; 0040cb16
L_0040cb18:
    mov dword ptr [esp + 010h], esi ; 0040cb18
L_0040cb1c:
    push ebp ; 0040cb1c
L_0040cb1d:
    cmp dword ptr [esp + 028h], esi ; 0040cb1d
L_0040cb21:
    je L_0040cec8 ; 0040cb21
L_0040cb27:
    mov dword ptr [esp + 01ch], esi ; 0040cb27
L_0040cb2b:
    mov esi, dword ptr [esp + 024h] ; 0040cb2b
L_0040cb2f:
    mov ecx, dword ptr [esp + 014h] ; 0040cb2f
L_0040cb33:
    mov edx, dword ptr [esi + 034h] ; 0040cb33
L_0040cb36:
    shr ecx, 3 ; 0040cb36
L_0040cb39:
    xor eax, eax ; 0040cb39
L_0040cb3b:
    mov al, byte ptr [ecx + edx] ; 0040cb3b
L_0040cb3e:
    mov edx, 1 ; 0040cb3e
L_0040cb43:
    mov ecx, dword ptr [esp + 014h] ; 0040cb43
L_0040cb47:
    and cl, 7 ; 0040cb47
L_0040cb4a:
    shl edx, cl ; 0040cb4a
L_0040cb4c:
    test edx, eax ; 0040cb4c
L_0040cb4e:
    mov eax, dword ptr [esi + 030h] ; 0040cb4e
L_0040cb51:
    jne L_0040cbf0 ; 0040cb51
L_0040cb57:
    xor ecx, ecx ; 0040cb57
L_0040cb59:
    mov edx, dword ptr [esp + 014h] ; 0040cb59
L_0040cb5d:
    xor edi, edi ; 0040cb5d
L_0040cb5f:
    mov cl, byte ptr [eax + edx] ; 0040cb5f
L_0040cb62:
    mov di, word ptr [esi + ecx*2 + 033e8h] ; 0040cb62
L_0040cb6a:
    mov al, byte ptr [esi + 018h] ; 0040cb6a
L_0040cb6d:
    lea edx, [ecx + esi + 02540h] ; 0040cb6d
L_0040cb74:
    mov cl, al ; 0040cb74
L_0040cb76:
    sub cl, byte ptr [edx] ; 0040cb76
L_0040cb78:
    shl edi, cl ; 0040cb78
L_0040cb7a:
    or dword ptr [esi + 014h], edi ; 0040cb7a
L_0040cb7d:
    sub al, byte ptr [edx] ; 0040cb7d
L_0040cb7f:
    mov byte ptr [esi + 018h], al ; 0040cb7f
L_0040cb82:
    cmp al, 010h ; 0040cb82
L_0040cb84:
    jg L_0040cbe1 ; 0040cb84
L_0040cb86:
    mov edx, 1 ; 0040cb86
L_0040cb8b:
    mov eax, dword ptr [esi + 0864h] ; 0040cb8b
L_0040cb91:
    cmp dword ptr [esi + 0860h], eax ; 0040cb91
L_0040cb97:
    jb L_0040cba8 ; 0040cb97
L_0040cb99:
    mov eax, dword ptr [esi + 085ch] ; 0040cb99
L_0040cb9f:
    mov dword ptr [esi + 01ch], edx ; 0040cb9f
L_0040cba2:
    mov dword ptr [esi + 0860h], eax ; 0040cba2
L_0040cba8:
    mov eax, dword ptr [esi + 014h] ; 0040cba8
L_0040cbab:
    mov ecx, dword ptr [esi + 0860h] ; 0040cbab
L_0040cbb1:
    shr eax, 010h ; 0040cbb1
L_0040cbb4:
    mov byte ptr [ecx], al ; 0040cbb4
L_0040cbb6:
    mov eax, dword ptr [esi + 0860h] ; 0040cbb6
L_0040cbbc:
    inc eax ; 0040cbbc
L_0040cbbd:
    mov ecx, dword ptr [esi + 014h] ; 0040cbbd
L_0040cbc0:
    shr ecx, 018h ; 0040cbc0
L_0040cbc3:
    mov dword ptr [esi + 0860h], eax ; 0040cbc3
L_0040cbc9:
    mov byte ptr [eax], cl ; 0040cbc9
L_0040cbcb:
    mov al, byte ptr [esi + 018h] ; 0040cbcb
L_0040cbce:
    add al, 010h ; 0040cbce
L_0040cbd0:
    inc dword ptr [esi + 0860h] ; 0040cbd0
L_0040cbd6:
    shl dword ptr [esi + 014h], 010h ; 0040cbd6
L_0040cbda:
    mov byte ptr [esi + 018h], al ; 0040cbda
L_0040cbdd:
    cmp al, 010h ; 0040cbdd
L_0040cbdf:
    jle L_0040cb8b ; 0040cbdf
L_0040cbe1:
    inc dword ptr [esp + 014h] ; 0040cbe1
L_0040cbe5:
    inc dword ptr [esi + 0868h] ; 0040cbe5
L_0040cbeb:
    jmp L_0040ce9e ; 0040cbeb
L_0040cbf0:
    mov edx, dword ptr [esp + 014h] ; 0040cbf0
L_0040cbf4:
    mov ecx, dword ptr [esi + 02ch] ; 0040cbf4
L_0040cbf7:
    inc dword ptr [esp + 014h] ; 0040cbf7
L_0040cbfb:
    mov al, byte ptr [eax + edx] ; 0040cbfb
L_0040cbfe:
    mov edx, dword ptr [esp + 01ch] ; 0040cbfe
L_0040cc02:
    mov byte ptr [esp + 013h], al ; 0040cc02
L_0040cc06:
    add dword ptr [esp + 01ch], 4 ; 0040cc06
L_0040cc0b:
    mov edi, dword ptr [ecx + edx] ; 0040cc0b
L_0040cc0e:
    cmp edi, 0400h ; 0040cc0e
L_0040cc14:
    jb L_0040cc39 ; 0040cc14
L_0040cc16:
    cmp edi, 080000h ; 0040cc16
L_0040cc1c:
    jb L_0040cc28 ; 0040cc1c
L_0040cc1e:
    mov ebx, edi ; 0040cc1e
L_0040cc20:
    shr ebx, 011h ; 0040cc20
L_0040cc23:
    add bl, 022h ; 0040cc23
L_0040cc26:
    jmp L_0040cc40 ; 0040cc26
L_0040cc28:
    mov eax, edi ; 0040cc28
L_0040cc2a:
    shr eax, 9 ; 0040cc2a
L_0040cc2d:
    mov bl, byte ptr [eax + esi + 045ch] ; 0040cc2d
L_0040cc34:
    add bl, 012h ; 0040cc34
L_0040cc37:
    jmp L_0040cc40 ; 0040cc37
L_0040cc39:
    mov bl, byte ptr [esi + edi + 045ch] ; 0040cc39
L_0040cc40:
    cmp byte ptr [esp + 013h], 7 ; 0040cc40
L_0040cc45:
    jae L_0040ccf8 ; 0040cc45
L_0040cc4b:
    xor edx, edx ; 0040cc4b
L_0040cc4d:
    xor eax, eax ; 0040cc4d
L_0040cc4f:
    mov dl, byte ptr [esp + 013h] ; 0040cc4f
L_0040cc53:
    mov al, bl ; 0040cc53
L_0040cc55:
    mov dword ptr [esp + 018h], 0 ; 0040cc55
L_0040cc5d:
    lea ebp, [edx + eax*8] ; 0040cc5d
L_0040cc60:
    mov al, byte ptr [esi + 018h] ; 0040cc60
L_0040cc63:
    mov cx, word ptr [esi + ebp*2 + 035e8h] ; 0040cc63
L_0040cc6b:
    mov word ptr [esp + 018h], cx ; 0040cc6b
L_0040cc70:
    mov cl, al ; 0040cc70
L_0040cc72:
    sub cl, byte ptr [ebp + esi + 02640h] ; 0040cc72
L_0040cc79:
    shl dword ptr [esp + 018h], cl ; 0040cc79
L_0040cc7d:
    mov ecx, dword ptr [esp + 018h] ; 0040cc7d
L_0040cc81:
    or dword ptr [esi + 014h], ecx ; 0040cc81
L_0040cc84:
    sub al, byte ptr [ebp + esi + 02640h] ; 0040cc84
L_0040cc8b:
    mov byte ptr [esi + 018h], al ; 0040cc8b
L_0040cc8e:
    cmp al, 010h ; 0040cc8e
L_0040cc90:
    jg L_0040ce11 ; 0040cc90
L_0040cc96:
    mov ecx, 1 ; 0040cc96
L_0040cc9b:
    mov eax, dword ptr [esi + 0864h] ; 0040cc9b
L_0040cca1:
    cmp dword ptr [esi + 0860h], eax ; 0040cca1
L_0040cca7:
    jb L_0040ccb8 ; 0040cca7
L_0040cca9:
    mov eax, dword ptr [esi + 085ch] ; 0040cca9
L_0040ccaf:
    mov dword ptr [esi + 01ch], ecx ; 0040ccaf
L_0040ccb2:
    mov dword ptr [esi + 0860h], eax ; 0040ccb2
L_0040ccb8:
    mov eax, dword ptr [esi + 014h] ; 0040ccb8
L_0040ccbb:
    mov ebp, dword ptr [esi + 0860h] ; 0040ccbb
L_0040ccc1:
    shr eax, 010h ; 0040ccc1
L_0040ccc4:
    mov byte ptr [ebp], al ; 0040ccc4
L_0040ccc7:
    mov ebp, dword ptr [esi + 0860h] ; 0040ccc7
L_0040cccd:
    inc ebp ; 0040cccd
L_0040ccce:
    mov eax, dword ptr [esi + 014h] ; 0040ccce
L_0040ccd1:
    shr eax, 018h ; 0040ccd1
L_0040ccd4:
    mov dword ptr [esi + 0860h], ebp ; 0040ccd4
L_0040ccda:
    mov byte ptr [ebp], al ; 0040ccda
L_0040ccdd:
    mov al, byte ptr [esi + 018h] ; 0040ccdd
L_0040cce0:
    add al, 010h ; 0040cce0
L_0040cce2:
    inc dword ptr [esi + 0860h] ; 0040cce2
L_0040cce8:
    shl dword ptr [esi + 014h], 010h ; 0040cce8
L_0040ccec:
    mov byte ptr [esi + 018h], al ; 0040ccec
L_0040ccef:
    cmp al, 010h ; 0040ccef
L_0040ccf1:
    jle L_0040cc9b ; 0040ccf1
L_0040ccf3:
    jmp L_0040ce11 ; 0040ccf3
L_0040ccf8:
    xor ecx, ecx ; 0040ccf8
L_0040ccfa:
    lea eax, [esi + 018h] ; 0040ccfa
L_0040ccfd:
    mov cl, bl ; 0040ccfd
L_0040ccff:
    mov al, byte ptr [esi + 018h] ; 0040ccff
L_0040cd02:
    xor edx, edx ; 0040cd02
L_0040cd04:
    lea ebp, [esi + ecx*8 + 02647h] ; 0040cd04
L_0040cd0b:
    shl ecx, 4 ; 0040cd0b
L_0040cd0e:
    mov dx, word ptr [ecx + esi + 035f6h] ; 0040cd0e
L_0040cd16:
    mov cl, al ; 0040cd16
L_0040cd18:
    sub cl, byte ptr [ebp] ; 0040cd18
L_0040cd1b:
    shl edx, cl ; 0040cd1b
L_0040cd1d:
    or dword ptr [esi + 014h], edx ; 0040cd1d
L_0040cd20:
    sub al, byte ptr [ebp] ; 0040cd20
L_0040cd23:
    mov byte ptr [esi + 018h], al ; 0040cd23
L_0040cd26:
    cmp al, 010h ; 0040cd26
L_0040cd28:
    jg L_0040cd85 ; 0040cd28
L_0040cd2a:
    mov ecx, 1 ; 0040cd2a
L_0040cd2f:
    mov eax, dword ptr [esi + 0864h] ; 0040cd2f
L_0040cd35:
    cmp dword ptr [esi + 0860h], eax ; 0040cd35
L_0040cd3b:
    jb L_0040cd4c ; 0040cd3b
L_0040cd3d:
    mov eax, dword ptr [esi + 085ch] ; 0040cd3d
L_0040cd43:
    mov dword ptr [esi + 01ch], ecx ; 0040cd43
L_0040cd46:
    mov dword ptr [esi + 0860h], eax ; 0040cd46
L_0040cd4c:
    mov eax, dword ptr [esi + 014h] ; 0040cd4c
L_0040cd4f:
    mov edx, dword ptr [esi + 0860h] ; 0040cd4f
L_0040cd55:
    shr eax, 010h ; 0040cd55
L_0040cd58:
    mov byte ptr [edx], al ; 0040cd58
L_0040cd5a:
    mov edx, dword ptr [esi + 0860h] ; 0040cd5a
L_0040cd60:
    inc edx ; 0040cd60
L_0040cd61:
    mov eax, dword ptr [esi + 014h] ; 0040cd61
L_0040cd64:
    shr eax, 018h ; 0040cd64
L_0040cd67:
    mov dword ptr [esi + 0860h], edx ; 0040cd67
L_0040cd6d:
    mov byte ptr [edx], al ; 0040cd6d
L_0040cd6f:
    mov al, byte ptr [esi + 018h] ; 0040cd6f
L_0040cd72:
    add al, 010h ; 0040cd72
L_0040cd74:
    inc dword ptr [esi + 0860h] ; 0040cd74
L_0040cd7a:
    shl dword ptr [esi + 014h], 010h ; 0040cd7a
L_0040cd7e:
    mov byte ptr [esi + 018h], al ; 0040cd7e
L_0040cd81:
    cmp al, 010h ; 0040cd81
L_0040cd83:
    jle L_0040cd2f ; 0040cd83
L_0040cd85:
    xor edx, edx ; 0040cd85
L_0040cd87:
    mov al, byte ptr [esi + 018h] ; 0040cd87
L_0040cd8a:
    mov dl, byte ptr [esp + 013h] ; 0040cd8a
L_0040cd8e:
    xor ebp, ebp ; 0040cd8e
L_0040cd90:
    mov bp, word ptr [esi + edx*2 + 03ff4h] ; 0040cd90
L_0040cd98:
    mov cl, al ; 0040cd98
L_0040cd9a:
    sub cl, byte ptr [edx + esi + 027f6h] ; 0040cd9a
L_0040cda1:
    shl ebp, cl ; 0040cda1
L_0040cda3:
    or dword ptr [esi + 014h], ebp ; 0040cda3
L_0040cda6:
    sub al, byte ptr [edx + esi + 027f6h] ; 0040cda6
L_0040cdad:
    mov byte ptr [esi + 018h], al ; 0040cdad
L_0040cdb0:
    cmp al, 010h ; 0040cdb0
L_0040cdb2:
    jg L_0040ce11 ; 0040cdb2
L_0040cdb4:
    mov ecx, 1 ; 0040cdb4
L_0040cdb9:
    mov eax, dword ptr [esi + 0864h] ; 0040cdb9
L_0040cdbf:
    cmp dword ptr [esi + 0860h], eax ; 0040cdbf
L_0040cdc5:
    jb L_0040cdd6 ; 0040cdc5
L_0040cdc7:
    mov eax, dword ptr [esi + 085ch] ; 0040cdc7
L_0040cdcd:
    mov dword ptr [esi + 01ch], ecx ; 0040cdcd
L_0040cdd0:
    mov dword ptr [esi + 0860h], eax ; 0040cdd0
L_0040cdd6:
    mov eax, dword ptr [esi + 014h] ; 0040cdd6
L_0040cdd9:
    mov ebp, dword ptr [esi + 0860h] ; 0040cdd9
L_0040cddf:
    shr eax, 010h ; 0040cddf
L_0040cde2:
    mov byte ptr [ebp], al ; 0040cde2
L_0040cde5:
    mov ebp, dword ptr [esi + 0860h] ; 0040cde5
L_0040cdeb:
    inc ebp ; 0040cdeb
L_0040cdec:
    mov eax, dword ptr [esi + 014h] ; 0040cdec
L_0040cdef:
    shr eax, 018h ; 0040cdef
L_0040cdf2:
    mov dword ptr [esi + 0860h], ebp ; 0040cdf2
L_0040cdf8:
    mov byte ptr [ebp], al ; 0040cdf8
L_0040cdfb:
    mov al, byte ptr [esi + 018h] ; 0040cdfb
L_0040cdfe:
    add al, 010h ; 0040cdfe
L_0040ce00:
    inc dword ptr [esi + 0860h] ; 0040ce00
L_0040ce06:
    shl dword ptr [esi + 014h], 010h ; 0040ce06
L_0040ce0a:
    mov byte ptr [esi + 018h], al ; 0040ce0a
L_0040ce0d:
    cmp al, 010h ; 0040ce0d
L_0040ce0f:
    jle L_0040cdb9 ; 0040ce0f
L_0040ce11:
    xor eax, eax ; 0040ce11
L_0040ce13:
    mov al, bl ; 0040ce13
L_0040ce15:
    mov bl, byte ptr [eax + _kb_rdata + 6168] ; 0040ce15
L_0040ce1b:
    test bl, bl ; 0040ce1b
L_0040ce1d:
    je L_0040ce95 ; 0040ce1d
L_0040ce1f:
    mov cl, byte ptr [esi + 018h] ; 0040ce1f
L_0040ce22:
    mov eax, dword ptr [eax*4 + _kb_rdata + 5960] ; 0040ce22
L_0040ce29:
    sub cl, bl ; 0040ce29
L_0040ce2b:
    and eax, edi ; 0040ce2b
L_0040ce2d:
    shl eax, cl ; 0040ce2d
L_0040ce2f:
    or dword ptr [esi + 014h], eax ; 0040ce2f
L_0040ce32:
    mov byte ptr [esi + 018h], cl ; 0040ce32
L_0040ce35:
    cmp cl, 010h ; 0040ce35
L_0040ce38:
    jg L_0040ce95 ; 0040ce38
L_0040ce3a:
    mov ecx, 1 ; 0040ce3a
L_0040ce3f:
    mov eax, dword ptr [esi + 0864h] ; 0040ce3f
L_0040ce45:
    cmp dword ptr [esi + 0860h], eax ; 0040ce45
L_0040ce4b:
    jb L_0040ce5c ; 0040ce4b
L_0040ce4d:
    mov eax, dword ptr [esi + 085ch] ; 0040ce4d
L_0040ce53:
    mov dword ptr [esi + 01ch], ecx ; 0040ce53
L_0040ce56:
    mov dword ptr [esi + 0860h], eax ; 0040ce56
L_0040ce5c:
    mov eax, dword ptr [esi + 014h] ; 0040ce5c
L_0040ce5f:
    mov edi, dword ptr [esi + 0860h] ; 0040ce5f
L_0040ce65:
    shr eax, 010h ; 0040ce65
L_0040ce68:
    mov byte ptr [edi], al ; 0040ce68
L_0040ce6a:
    mov edi, dword ptr [esi + 0860h] ; 0040ce6a
L_0040ce70:
    inc edi ; 0040ce70
L_0040ce71:
    mov eax, dword ptr [esi + 014h] ; 0040ce71
L_0040ce74:
    shr eax, 018h ; 0040ce74
L_0040ce77:
    mov dword ptr [esi + 0860h], edi ; 0040ce77
L_0040ce7d:
    mov byte ptr [edi], al ; 0040ce7d
L_0040ce7f:
    mov al, byte ptr [esi + 018h] ; 0040ce7f
L_0040ce82:
    add al, 010h ; 0040ce82
L_0040ce84:
    inc dword ptr [esi + 0860h] ; 0040ce84
L_0040ce8a:
    shl dword ptr [esi + 014h], 010h ; 0040ce8a
L_0040ce8e:
    mov byte ptr [esi + 018h], al ; 0040ce8e
L_0040ce91:
    cmp al, 010h ; 0040ce91
L_0040ce93:
    jle L_0040ce3f ; 0040ce93
L_0040ce95:
    add edx, 2 ; 0040ce95
L_0040ce98:
    add dword ptr [esi + 0868h], edx ; 0040ce98
L_0040ce9e:
    cmp dword ptr [esi + 0868h], 08000h ; 0040ce9e
L_0040cea8:
    jne L_0040ceba ; 0040cea8
L_0040ceaa:
    push esi ; 0040ceaa
L_0040ceab:
    call L_0040d3c0 ; 0040ceab
L_0040ceb0:
    mov byte ptr [esi + 087ch], 0 ; 0040ceb0
L_0040ceb7:
    add esp, 4 ; 0040ceb7
L_0040ceba:
    mov edx, dword ptr [esp + 014h] ; 0040ceba
L_0040cebe:
    cmp edx, dword ptr [esp + 028h] ; 0040cebe
L_0040cec2:
    jb L_0040cb2f ; 0040cec2
L_0040cec8:
    pop ebp ; 0040cec8
L_0040cec9:
    pop edi ; 0040cec9
L_0040ceca:
    pop esi ; 0040ceca
L_0040cecb:
    pop ebx ; 0040cecb
L_0040cecc:
    add esp, 010h ; 0040cecc
L_0040cecf:
    retn  ; 0040cecf
L_0040ced0:
    sub esp, 010h ; 0040ced0
L_0040ced3:
    push ebx ; 0040ced3
L_0040ced4:
    push esi ; 0040ced4
L_0040ced5:
    push edi ; 0040ced5
L_0040ced6:
    xor esi, esi ; 0040ced6
L_0040ced8:
    push ebp ; 0040ced8
L_0040ced9:
    xor edi, edi ; 0040ced9
L_0040cedb:
    cmp dword ptr [esp + 028h], esi ; 0040cedb
L_0040cedf:
    je L_0040d3b2 ; 0040cedf
L_0040cee5:
    mov dword ptr [esp + 01ch], esi ; 0040cee5
L_0040cee9:
    mov esi, dword ptr [esp + 024h] ; 0040cee9
L_0040ceed:
    mov ecx, edi ; 0040ceed
L_0040ceef:
    mov edx, dword ptr [esi + 034h] ; 0040ceef
L_0040cef2:
    shr ecx, 3 ; 0040cef2
L_0040cef5:
    xor eax, eax ; 0040cef5
L_0040cef7:
    mov al, byte ptr [ecx + edx] ; 0040cef7
L_0040cefa:
    mov edx, 1 ; 0040cefa
L_0040ceff:
    mov ecx, edi ; 0040ceff
L_0040cf01:
    and cl, 7 ; 0040cf01
L_0040cf04:
    shl edx, cl ; 0040cf04
L_0040cf06:
    test edx, eax ; 0040cf06
L_0040cf08:
    mov eax, dword ptr [esi + 030h] ; 0040cf08
L_0040cf0b:
    jne L_0040cfa3 ; 0040cf0b
L_0040cf11:
    xor ecx, ecx ; 0040cf11
L_0040cf13:
    xor edx, edx ; 0040cf13
L_0040cf15:
    mov cl, byte ptr [eax + edi] ; 0040cf15
L_0040cf18:
    mov al, byte ptr [esi + 018h] ; 0040cf18
L_0040cf1b:
    mov dx, word ptr [esi + ecx*2 + 033e8h] ; 0040cf1b
L_0040cf23:
    lea ebx, [ecx + esi + 02540h] ; 0040cf23
L_0040cf2a:
    mov cl, al ; 0040cf2a
L_0040cf2c:
    sub cl, byte ptr [ebx] ; 0040cf2c
L_0040cf2e:
    shl edx, cl ; 0040cf2e
L_0040cf30:
    or dword ptr [esi + 014h], edx ; 0040cf30
L_0040cf33:
    sub al, byte ptr [ebx] ; 0040cf33
L_0040cf35:
    mov byte ptr [esi + 018h], al ; 0040cf35
L_0040cf38:
    cmp al, 010h ; 0040cf38
L_0040cf3a:
    jg L_0040cf97 ; 0040cf3a
L_0040cf3c:
    mov ecx, 1 ; 0040cf3c
L_0040cf41:
    mov eax, dword ptr [esi + 0864h] ; 0040cf41
L_0040cf47:
    cmp dword ptr [esi + 0860h], eax ; 0040cf47
L_0040cf4d:
    jb L_0040cf5e ; 0040cf4d
L_0040cf4f:
    mov eax, dword ptr [esi + 085ch] ; 0040cf4f
L_0040cf55:
    mov dword ptr [esi + 01ch], ecx ; 0040cf55
L_0040cf58:
    mov dword ptr [esi + 0860h], eax ; 0040cf58
L_0040cf5e:
    mov eax, dword ptr [esi + 014h] ; 0040cf5e
L_0040cf61:
    mov edx, dword ptr [esi + 0860h] ; 0040cf61
L_0040cf67:
    shr eax, 010h ; 0040cf67
L_0040cf6a:
    mov byte ptr [edx], al ; 0040cf6a
L_0040cf6c:
    mov edx, dword ptr [esi + 0860h] ; 0040cf6c
L_0040cf72:
    inc edx ; 0040cf72
L_0040cf73:
    mov eax, dword ptr [esi + 014h] ; 0040cf73
L_0040cf76:
    shr eax, 018h ; 0040cf76
L_0040cf79:
    mov dword ptr [esi + 0860h], edx ; 0040cf79
L_0040cf7f:
    mov byte ptr [edx], al ; 0040cf7f
L_0040cf81:
    mov al, byte ptr [esi + 018h] ; 0040cf81
L_0040cf84:
    add al, 010h ; 0040cf84
L_0040cf86:
    inc dword ptr [esi + 0860h] ; 0040cf86
L_0040cf8c:
    shl dword ptr [esi + 014h], 010h ; 0040cf8c
L_0040cf90:
    mov byte ptr [esi + 018h], al ; 0040cf90
L_0040cf93:
    cmp al, 010h ; 0040cf93
L_0040cf95:
    jle L_0040cf41 ; 0040cf95
L_0040cf97:
    inc edi ; 0040cf97
L_0040cf98:
    inc dword ptr [esi + 0868h] ; 0040cf98
L_0040cf9e:
    jmp L_0040d38c ; 0040cf9e
L_0040cfa3:
    mov al, byte ptr [eax + edi] ; 0040cfa3
L_0040cfa6:
    inc edi ; 0040cfa6
L_0040cfa7:
    mov ecx, dword ptr [esi + 02ch] ; 0040cfa7
L_0040cfaa:
    mov byte ptr [esp + 013h], al ; 0040cfaa
L_0040cfae:
    mov eax, dword ptr [esp + 01ch] ; 0040cfae
L_0040cfb2:
    add dword ptr [esp + 01ch], 4 ; 0040cfb2
L_0040cfb7:
    mov edx, dword ptr [ecx + eax] ; 0040cfb7
L_0040cfba:
    mov dword ptr [esp + 014h], edx ; 0040cfba
L_0040cfbe:
    cmp edx, 0400h ; 0040cfbe
L_0040cfc4:
    jb L_0040cfeb ; 0040cfc4
L_0040cfc6:
    cmp edx, 080000h ; 0040cfc6
L_0040cfcc:
    jb L_0040cfd8 ; 0040cfcc
L_0040cfce:
    mov ebx, edx ; 0040cfce
L_0040cfd0:
    shr ebx, 011h ; 0040cfd0
L_0040cfd3:
    add bl, 022h ; 0040cfd3
L_0040cfd6:
    jmp L_0040cff6 ; 0040cfd6
L_0040cfd8:
    mov eax, dword ptr [esp + 014h] ; 0040cfd8
L_0040cfdc:
    shr eax, 9 ; 0040cfdc
L_0040cfdf:
    mov bl, byte ptr [eax + esi + 045ch] ; 0040cfdf
L_0040cfe6:
    add bl, 012h ; 0040cfe6
L_0040cfe9:
    jmp L_0040cff6 ; 0040cfe9
L_0040cfeb:
    mov eax, dword ptr [esp + 014h] ; 0040cfeb
L_0040cfef:
    mov bl, byte ptr [esi + eax + 045ch] ; 0040cfef
L_0040cff6:
    cmp byte ptr [esp + 013h], 7 ; 0040cff6
L_0040cffb:
    jae L_0040d0b1 ; 0040cffb
L_0040d001:
    xor eax, eax ; 0040d001
L_0040d003:
    xor ecx, ecx ; 0040d003
L_0040d005:
    mov al, byte ptr [esp + 013h] ; 0040d005
L_0040d009:
    mov cl, bl ; 0040d009
L_0040d00b:
    mov dword ptr [esp + 018h], 0 ; 0040d00b
L_0040d013:
    lea ebp, [eax + ecx*8] ; 0040d013
L_0040d016:
    mov dl, byte ptr [esi + 018h] ; 0040d016
L_0040d019:
    mov cx, word ptr [esi + ebp*2 + 035e8h] ; 0040d019
L_0040d021:
    mov word ptr [esp + 018h], cx ; 0040d021
L_0040d026:
    mov cl, dl ; 0040d026
L_0040d028:
    sub cl, byte ptr [ebp + esi + 02640h] ; 0040d028
L_0040d02f:
    shl dword ptr [esp + 018h], cl ; 0040d02f
L_0040d033:
    mov ecx, dword ptr [esp + 018h] ; 0040d033
L_0040d037:
    or dword ptr [esi + 014h], ecx ; 0040d037
L_0040d03a:
    sub dl, byte ptr [ebp + esi + 02640h] ; 0040d03a
L_0040d041:
    mov byte ptr [esi + 018h], dl ; 0040d041
L_0040d044:
    cmp dl, 010h ; 0040d044
L_0040d047:
    jg L_0040d1cd ; 0040d047
L_0040d04d:
    mov edx, 1 ; 0040d04d
L_0040d052:
    mov ecx, dword ptr [esi + 0864h] ; 0040d052
L_0040d058:
    cmp dword ptr [esi + 0860h], ecx ; 0040d058
L_0040d05e:
    jb L_0040d06f ; 0040d05e
L_0040d060:
    mov ecx, dword ptr [esi + 085ch] ; 0040d060
L_0040d066:
    mov dword ptr [esi + 01ch], edx ; 0040d066
L_0040d069:
    mov dword ptr [esi + 0860h], ecx ; 0040d069
L_0040d06f:
    mov ecx, dword ptr [esi + 014h] ; 0040d06f
L_0040d072:
    mov ebp, dword ptr [esi + 0860h] ; 0040d072
L_0040d078:
    shr ecx, 010h ; 0040d078
L_0040d07b:
    mov byte ptr [ebp], cl ; 0040d07b
L_0040d07e:
    mov ebp, dword ptr [esi + 0860h] ; 0040d07e
L_0040d084:
    inc ebp ; 0040d084
L_0040d085:
    mov ecx, dword ptr [esi + 014h] ; 0040d085
L_0040d088:
    shr ecx, 018h ; 0040d088
L_0040d08b:
    mov dword ptr [esi + 0860h], ebp ; 0040d08b
L_0040d091:
    mov byte ptr [ebp], cl ; 0040d091
L_0040d094:
    mov cl, byte ptr [esi + 018h] ; 0040d094
L_0040d097:
    add cl, 010h ; 0040d097
L_0040d09a:
    inc dword ptr [esi + 0860h] ; 0040d09a
L_0040d0a0:
    shl dword ptr [esi + 014h], 010h ; 0040d0a0
L_0040d0a4:
    mov byte ptr [esi + 018h], cl ; 0040d0a4
L_0040d0a7:
    cmp cl, 010h ; 0040d0a7
L_0040d0aa:
    jle L_0040d052 ; 0040d0aa
L_0040d0ac:
    jmp L_0040d1cd ; 0040d0ac
L_0040d0b1:
    xor ecx, ecx ; 0040d0b1
L_0040d0b3:
    lea eax, [esi + 018h] ; 0040d0b3
L_0040d0b6:
    mov cl, bl ; 0040d0b6
L_0040d0b8:
    mov al, byte ptr [esi + 018h] ; 0040d0b8
L_0040d0bb:
    xor edx, edx ; 0040d0bb
L_0040d0bd:
    lea ebp, [esi + ecx*8 + 02647h] ; 0040d0bd
L_0040d0c4:
    shl ecx, 4 ; 0040d0c4
L_0040d0c7:
    mov dx, word ptr [ecx + esi + 035f6h] ; 0040d0c7
L_0040d0cf:
    mov cl, al ; 0040d0cf
L_0040d0d1:
    sub cl, byte ptr [ebp] ; 0040d0d1
L_0040d0d4:
    shl edx, cl ; 0040d0d4
L_0040d0d6:
    or dword ptr [esi + 014h], edx ; 0040d0d6
L_0040d0d9:
    sub al, byte ptr [ebp] ; 0040d0d9
L_0040d0dc:
    mov byte ptr [esi + 018h], al ; 0040d0dc
L_0040d0df:
    cmp al, 010h ; 0040d0df
L_0040d0e1:
    jg L_0040d13e ; 0040d0e1
L_0040d0e3:
    mov ecx, 1 ; 0040d0e3
L_0040d0e8:
    mov eax, dword ptr [esi + 0864h] ; 0040d0e8
L_0040d0ee:
    cmp dword ptr [esi + 0860h], eax ; 0040d0ee
L_0040d0f4:
    jb L_0040d105 ; 0040d0f4
L_0040d0f6:
    mov eax, dword ptr [esi + 085ch] ; 0040d0f6
L_0040d0fc:
    mov dword ptr [esi + 01ch], ecx ; 0040d0fc
L_0040d0ff:
    mov dword ptr [esi + 0860h], eax ; 0040d0ff
L_0040d105:
    mov eax, dword ptr [esi + 014h] ; 0040d105
L_0040d108:
    mov edx, dword ptr [esi + 0860h] ; 0040d108
L_0040d10e:
    shr eax, 010h ; 0040d10e
L_0040d111:
    mov byte ptr [edx], al ; 0040d111
L_0040d113:
    mov edx, dword ptr [esi + 0860h] ; 0040d113
L_0040d119:
    inc edx ; 0040d119
L_0040d11a:
    mov eax, dword ptr [esi + 014h] ; 0040d11a
L_0040d11d:
    shr eax, 018h ; 0040d11d
L_0040d120:
    mov dword ptr [esi + 0860h], edx ; 0040d120
L_0040d126:
    mov byte ptr [edx], al ; 0040d126
L_0040d128:
    mov al, byte ptr [esi + 018h] ; 0040d128
L_0040d12b:
    add al, 010h ; 0040d12b
L_0040d12d:
    inc dword ptr [esi + 0860h] ; 0040d12d
L_0040d133:
    shl dword ptr [esi + 014h], 010h ; 0040d133
L_0040d137:
    mov byte ptr [esi + 018h], al ; 0040d137
L_0040d13a:
    cmp al, 010h ; 0040d13a
L_0040d13c:
    jle L_0040d0e8 ; 0040d13c
L_0040d13e:
    xor eax, eax ; 0040d13e
L_0040d140:
    mov dl, byte ptr [esi + 018h] ; 0040d140
L_0040d143:
    mov al, byte ptr [esp + 013h] ; 0040d143
L_0040d147:
    xor ebp, ebp ; 0040d147
L_0040d149:
    mov bp, word ptr [esi + eax*2 + 03ff4h] ; 0040d149
L_0040d151:
    mov cl, dl ; 0040d151
L_0040d153:
    sub cl, byte ptr [eax + esi + 027f6h] ; 0040d153
L_0040d15a:
    shl ebp, cl ; 0040d15a
L_0040d15c:
    or dword ptr [esi + 014h], ebp ; 0040d15c
L_0040d15f:
    sub dl, byte ptr [eax + esi + 027f6h] ; 0040d15f
L_0040d166:
    mov byte ptr [esi + 018h], dl ; 0040d166
L_0040d169:
    cmp dl, 010h ; 0040d169
L_0040d16c:
    jg L_0040d1cd ; 0040d16c
L_0040d16e:
    mov edx, 1 ; 0040d16e
L_0040d173:
    mov ecx, dword ptr [esi + 0864h] ; 0040d173
L_0040d179:
    cmp dword ptr [esi + 0860h], ecx ; 0040d179
L_0040d17f:
    jb L_0040d190 ; 0040d17f
L_0040d181:
    mov ecx, dword ptr [esi + 085ch] ; 0040d181
L_0040d187:
    mov dword ptr [esi + 01ch], edx ; 0040d187
L_0040d18a:
    mov dword ptr [esi + 0860h], ecx ; 0040d18a
L_0040d190:
    mov ecx, dword ptr [esi + 014h] ; 0040d190
L_0040d193:
    mov ebp, dword ptr [esi + 0860h] ; 0040d193
L_0040d199:
    shr ecx, 010h ; 0040d199
L_0040d19c:
    mov byte ptr [ebp], cl ; 0040d19c
L_0040d19f:
    mov ebp, dword ptr [esi + 0860h] ; 0040d19f
L_0040d1a5:
    inc ebp ; 0040d1a5
L_0040d1a6:
    mov ecx, dword ptr [esi + 014h] ; 0040d1a6
L_0040d1a9:
    shr ecx, 018h ; 0040d1a9
L_0040d1ac:
    mov dword ptr [esi + 0860h], ebp ; 0040d1ac
L_0040d1b2:
    mov byte ptr [ebp], cl ; 0040d1b2
L_0040d1b5:
    mov cl, byte ptr [esi + 018h] ; 0040d1b5
L_0040d1b8:
    add cl, 010h ; 0040d1b8
L_0040d1bb:
    inc dword ptr [esi + 0860h] ; 0040d1bb
L_0040d1c1:
    shl dword ptr [esi + 014h], 010h ; 0040d1c1
L_0040d1c5:
    mov byte ptr [esi + 018h], cl ; 0040d1c5
L_0040d1c8:
    cmp cl, 010h ; 0040d1c8
L_0040d1cb:
    jle L_0040d173 ; 0040d1cb
L_0040d1cd:
    xor edx, edx ; 0040d1cd
L_0040d1cf:
    mov dl, bl ; 0040d1cf
L_0040d1d1:
    mov bl, byte ptr [edx + _kb_rdata + 6168] ; 0040d1d1
L_0040d1d7:
    cmp bl, 3 ; 0040d1d7
L_0040d1da:
    jb L_0040d305 ; 0040d1da
L_0040d1e0:
    jbe L_0040d26e ; 0040d1e0
L_0040d1e6:
    mov dl, byte ptr [esi + 018h] ; 0040d1e6
L_0040d1e9:
    mov ebp, 1 ; 0040d1e9
L_0040d1ee:
    sub dl, bl ; 0040d1ee
L_0040d1f0:
    lea ecx, [ebx - 3] ; 0040d1f0
L_0040d1f3:
    shl ebp, cl ; 0040d1f3
L_0040d1f5:
    add dl, 3 ; 0040d1f5
L_0040d1f8:
    dec ebp ; 0040d1f8
L_0040d1f9:
    mov ecx, dword ptr [esp + 014h] ; 0040d1f9
L_0040d1fd:
    mov byte ptr [esi + 018h], dl ; 0040d1fd
L_0040d200:
    shr ecx, 3 ; 0040d200
L_0040d203:
    and ebp, ecx ; 0040d203
L_0040d205:
    mov cl, dl ; 0040d205
L_0040d207:
    shl ebp, cl ; 0040d207
L_0040d209:
    or dword ptr [esi + 014h], ebp ; 0040d209
L_0040d20c:
    cmp dl, 010h ; 0040d20c
L_0040d20f:
    jg L_0040d26e ; 0040d20f
L_0040d211:
    mov edx, 1 ; 0040d211
L_0040d216:
    mov ecx, dword ptr [esi + 0864h] ; 0040d216
L_0040d21c:
    cmp dword ptr [esi + 0860h], ecx ; 0040d21c
L_0040d222:
    jb L_0040d233 ; 0040d222
L_0040d224:
    mov ecx, dword ptr [esi + 085ch] ; 0040d224
L_0040d22a:
    mov dword ptr [esi + 01ch], edx ; 0040d22a
L_0040d22d:
    mov dword ptr [esi + 0860h], ecx ; 0040d22d
L_0040d233:
    mov ecx, dword ptr [esi + 014h] ; 0040d233
L_0040d236:
    mov ebx, dword ptr [esi + 0860h] ; 0040d236
L_0040d23c:
    shr ecx, 010h ; 0040d23c
L_0040d23f:
    mov byte ptr [ebx], cl ; 0040d23f
L_0040d241:
    mov ebx, dword ptr [esi + 0860h] ; 0040d241
L_0040d247:
    inc ebx ; 0040d247
L_0040d248:
    mov ecx, dword ptr [esi + 014h] ; 0040d248
L_0040d24b:
    shr ecx, 018h ; 0040d24b
L_0040d24e:
    mov dword ptr [esi + 0860h], ebx ; 0040d24e
L_0040d254:
    mov byte ptr [ebx], cl ; 0040d254
L_0040d256:
    mov cl, byte ptr [esi + 018h] ; 0040d256
L_0040d259:
    add cl, 010h ; 0040d259
L_0040d25c:
    inc dword ptr [esi + 0860h] ; 0040d25c
L_0040d262:
    shl dword ptr [esi + 014h], 010h ; 0040d262
L_0040d266:
    mov byte ptr [esi + 018h], cl ; 0040d266
L_0040d269:
    cmp cl, 010h ; 0040d269
L_0040d26c:
    jle L_0040d216 ; 0040d26c
L_0040d26e:
    mov edx, dword ptr [esp + 014h] ; 0040d26e
L_0040d272:
    xor ecx, ecx ; 0040d272
L_0040d274:
    and dl, 7 ; 0040d274
L_0040d277:
    xor ebx, ebx ; 0040d277
L_0040d279:
    mov cl, dl ; 0040d279
L_0040d27b:
    mov dl, byte ptr [esi + 018h] ; 0040d27b
L_0040d27e:
    mov bx, word ptr [esi + ecx*2 + 0430eh] ; 0040d27e
L_0040d286:
    lea ebp, [ecx + esi + 0431eh] ; 0040d286
L_0040d28d:
    mov cl, dl ; 0040d28d
L_0040d28f:
    sub cl, byte ptr [ebp] ; 0040d28f
L_0040d292:
    shl ebx, cl ; 0040d292
L_0040d294:
    or dword ptr [esi + 014h], ebx ; 0040d294
L_0040d297:
    sub dl, byte ptr [ebp] ; 0040d297
L_0040d29a:
    mov byte ptr [esi + 018h], dl ; 0040d29a
L_0040d29d:
    cmp dl, 010h ; 0040d29d
L_0040d2a0:
    jg L_0040d383 ; 0040d2a0
L_0040d2a6:
    mov edx, 1 ; 0040d2a6
L_0040d2ab:
    mov ecx, dword ptr [esi + 0864h] ; 0040d2ab
L_0040d2b1:
    cmp dword ptr [esi + 0860h], ecx ; 0040d2b1
L_0040d2b7:
    jb L_0040d2c8 ; 0040d2b7
L_0040d2b9:
    mov ecx, dword ptr [esi + 085ch] ; 0040d2b9
L_0040d2bf:
    mov dword ptr [esi + 01ch], edx ; 0040d2bf
L_0040d2c2:
    mov dword ptr [esi + 0860h], ecx ; 0040d2c2
L_0040d2c8:
    mov ecx, dword ptr [esi + 014h] ; 0040d2c8
L_0040d2cb:
    mov ebx, dword ptr [esi + 0860h] ; 0040d2cb
L_0040d2d1:
    shr ecx, 010h ; 0040d2d1
L_0040d2d4:
    mov byte ptr [ebx], cl ; 0040d2d4
L_0040d2d6:
    mov ebx, dword ptr [esi + 0860h] ; 0040d2d6
L_0040d2dc:
    inc ebx ; 0040d2dc
L_0040d2dd:
    mov ecx, dword ptr [esi + 014h] ; 0040d2dd
L_0040d2e0:
    shr ecx, 018h ; 0040d2e0
L_0040d2e3:
    mov dword ptr [esi + 0860h], ebx ; 0040d2e3
L_0040d2e9:
    mov byte ptr [ebx], cl ; 0040d2e9
L_0040d2eb:
    mov cl, byte ptr [esi + 018h] ; 0040d2eb
L_0040d2ee:
    add cl, 010h ; 0040d2ee
L_0040d2f1:
    inc dword ptr [esi + 0860h] ; 0040d2f1
L_0040d2f7:
    shl dword ptr [esi + 014h], 010h ; 0040d2f7
L_0040d2fb:
    mov byte ptr [esi + 018h], cl ; 0040d2fb
L_0040d2fe:
    cmp cl, 010h ; 0040d2fe
L_0040d301:
    jle L_0040d2ab ; 0040d301
L_0040d303:
    jmp L_0040d383 ; 0040d303
L_0040d305:
    test bl, bl ; 0040d305
L_0040d307:
    je L_0040d383 ; 0040d307
L_0040d309:
    mov cl, byte ptr [esi + 018h] ; 0040d309
L_0040d30c:
    mov edx, dword ptr [edx*4 + _kb_rdata + 5960] ; 0040d30c
L_0040d313:
    sub cl, bl ; 0040d313
L_0040d315:
    and edx, dword ptr [esp + 014h] ; 0040d315
L_0040d319:
    shl edx, cl ; 0040d319
L_0040d31b:
    or dword ptr [esi + 014h], edx ; 0040d31b
L_0040d31e:
    mov byte ptr [esi + 018h], cl ; 0040d31e
L_0040d321:
    cmp cl, 010h ; 0040d321
L_0040d324:
    jg L_0040d383 ; 0040d324
L_0040d326:
    mov edx, 1 ; 0040d326
L_0040d32b:
    mov ecx, dword ptr [esi + 0864h] ; 0040d32b
L_0040d331:
    cmp dword ptr [esi + 0860h], ecx ; 0040d331
L_0040d337:
    jb L_0040d348 ; 0040d337
L_0040d339:
    mov ecx, dword ptr [esi + 085ch] ; 0040d339
L_0040d33f:
    mov dword ptr [esi + 01ch], edx ; 0040d33f
L_0040d342:
    mov dword ptr [esi + 0860h], ecx ; 0040d342
L_0040d348:
    mov ecx, dword ptr [esi + 014h] ; 0040d348
L_0040d34b:
    mov ebx, dword ptr [esi + 0860h] ; 0040d34b
L_0040d351:
    shr ecx, 010h ; 0040d351
L_0040d354:
    mov byte ptr [ebx], cl ; 0040d354
L_0040d356:
    mov ebx, dword ptr [esi + 0860h] ; 0040d356
L_0040d35c:
    inc ebx ; 0040d35c
L_0040d35d:
    mov ecx, dword ptr [esi + 014h] ; 0040d35d
L_0040d360:
    shr ecx, 018h ; 0040d360
L_0040d363:
    mov dword ptr [esi + 0860h], ebx ; 0040d363
L_0040d369:
    mov byte ptr [ebx], cl ; 0040d369
L_0040d36b:
    mov cl, byte ptr [esi + 018h] ; 0040d36b
L_0040d36e:
    add cl, 010h ; 0040d36e
L_0040d371:
    inc dword ptr [esi + 0860h] ; 0040d371
L_0040d377:
    shl dword ptr [esi + 014h], 010h ; 0040d377
L_0040d37b:
    mov byte ptr [esi + 018h], cl ; 0040d37b
L_0040d37e:
    cmp cl, 010h ; 0040d37e
L_0040d381:
    jle L_0040d32b ; 0040d381
L_0040d383:
    add eax, 2 ; 0040d383
L_0040d386:
    add dword ptr [esi + 0868h], eax ; 0040d386
L_0040d38c:
    cmp dword ptr [esi + 0868h], 08000h ; 0040d38c
L_0040d396:
    jne L_0040d3a8 ; 0040d396
L_0040d398:
    push esi ; 0040d398
L_0040d399:
    call L_0040d3c0 ; 0040d399
L_0040d39e:
    mov byte ptr [esi + 087ch], 0 ; 0040d39e
L_0040d3a5:
    add esp, 4 ; 0040d3a5
L_0040d3a8:
    cmp dword ptr [esp + 028h], edi ; 0040d3a8
L_0040d3ac:
    ja L_0040ceed ; 0040d3ac
L_0040d3b2:
    pop ebp ; 0040d3b2
L_0040d3b3:
    pop edi ; 0040d3b3
L_0040d3b4:
    pop esi ; 0040d3b4
L_0040d3b5:
    pop ebx ; 0040d3b5
L_0040d3b6:
    add esp, 010h ; 0040d3b6
L_0040d3b9:
    retn  ; 0040d3b9
L_0040d3ba:
    db 0cch
L_0040d3bb:
    db 0cch
L_0040d3bc:
    db 0cch
L_0040d3bd:
    db 0cch
L_0040d3be:
    db 0cch
L_0040d3bf:
    db 0cch
L_0040d3c0:
    push esi ; 0040d3c0
L_0040d3c1:
    mov esi, dword ptr [esp + 8] ; 0040d3c1
L_0040d3c5:
    push esi ; 0040d3c5
L_0040d3c6:
    call L_0040ad30 ; 0040d3c6
L_0040d3cb:
    add esp, 4 ; 0040d3cb
L_0040d3ce:
    mov ecx, dword ptr [esi + 085ch] ; 0040d3ce
L_0040d3d4:
    mov eax, dword ptr [esi + 0860h] ; 0040d3d4
L_0040d3da:
    sub eax, ecx ; 0040d3da
L_0040d3dc:
    test eax, eax ; 0040d3dc
L_0040d3de:
    jle L_0040d3f9 ; 0040d3de
L_0040d3e0:
    mov edx, dword ptr [esi + 0868h] ; 0040d3e0
L_0040d3e6:
    push edx ; 0040d3e6
L_0040d3e7:
    push eax ; 0040d3e7
L_0040d3e8:
    push ecx ; 0040d3e8
L_0040d3e9:
    mov eax, dword ptr [esi + 04340h] ; 0040d3e9
L_0040d3ef:
    push eax ; 0040d3ef
L_0040d3f0:
    call dword ptr [esi + 0434ch] ; 0040d3f0
L_0040d3f6:
    add esp, 010h ; 0040d3f6
L_0040d3f9:
    xor eax, eax ; 0040d3f9
L_0040d3fb:
    mov ecx, dword ptr [esi + 085ch] ; 0040d3fb
L_0040d401:
    mov dword ptr [esi + 0868h], eax ; 0040d401
L_0040d407:
    mov dword ptr [esi + 0860h], ecx ; 0040d407
L_0040d40d:
    mov byte ptr [esi + 018h], 020h ; 0040d40d
L_0040d411:
    mov dword ptr [esi + 014h], eax ; 0040d411
L_0040d414:
    pop esi ; 0040d414
L_0040d415:
    retn  ; 0040d415
L_0040d416:
    db 0cch
L_0040d417:
    db 0cch
L_0040d418:
    db 0cch
L_0040d419:
    db 0cch
L_0040d41a:
    db 0cch
L_0040d41b:
    db 0cch
L_0040d41c:
    db 0cch
L_0040d41d:
    db 0cch
L_0040d41e:
    db 0cch
L_0040d41f:
    db 0cch
L_0040d420:
    mov ecx, dword ptr [esp + 4] ; 0040d420
L_0040d424:
    sub esp, 018h ; 0040d424
L_0040d427:
    xor eax, eax ; 0040d427
L_0040d429:
    push ebx ; 0040d429
L_0040d42a:
    mov edx, dword ptr [esp + 024h] ; 0040d42a
L_0040d42e:
    push esi ; 0040d42e
L_0040d42f:
    push edi ; 0040d42f
L_0040d430:
    mov esi, dword ptr [ecx] ; 0040d430
L_0040d432:
    mov ax, word ptr [esi + edx] ; 0040d432
L_0040d436:
    push ebp ; 0040d436
L_0040d437:
    shl eax, 2 ; 0040d437
L_0040d43a:
    mov ebx, dword ptr [esp + 030h] ; 0040d43a
L_0040d43e:
    add eax, dword ptr [ecx + 8] ; 0040d43e
L_0040d441:
    mov edx, dword ptr [eax] ; 0040d441
L_0040d443:
    mov dword ptr [esp + 010h], edx ; 0040d443
L_0040d447:
    mov dword ptr [eax], ebx ; 0040d447
L_0040d449:
    cmp edx, dword ptr [esp + 034h] ; 0040d449
L_0040d44d:
    jg L_0040d46d ; 0040d44d
L_0040d44f:
    mov eax, dword ptr [ecx + 010h] ; 0040d44f
L_0040d452:
    pop ebp ; 0040d452
L_0040d453:
    pop edi ; 0040d453
L_0040d454:
    mov dword ptr [eax + ebx*4], 0 ; 0040d454
L_0040d45b:
    mov eax, dword ptr [ecx + 010h] ; 0040d45b
L_0040d45e:
    mov esi, dword ptr [eax + ebx*4] ; 0040d45e
L_0040d461:
    mov eax, dword ptr [ecx + 0ch] ; 0040d461
L_0040d464:
    mov dword ptr [eax + ebx*4], esi ; 0040d464
L_0040d467:
    pop esi ; 0040d467
L_0040d468:
    pop ebx ; 0040d468
L_0040d469:
    add esp, 018h ; 0040d469
L_0040d46c:
    retn  ; 0040d46c
L_0040d46d:
    mov eax, 2 ; 0040d46d
L_0040d472:
    mov ebx, dword ptr [ecx + 0ch] ; 0040d472
L_0040d475:
    mov edx, dword ptr [esp + 030h] ; 0040d475
L_0040d479:
    mov dword ptr [esp + 01ch], eax ; 0040d479
L_0040d47d:
    mov dword ptr [esp + 020h], eax ; 0040d47d
L_0040d481:
    mov dword ptr [esp + 024h], eax ; 0040d481
L_0040d485:
    lea esi, [ebx + edx*4] ; 0040d485
L_0040d488:
    mov eax, dword ptr [ecx + 010h] ; 0040d488
L_0040d48b:
    mov dword ptr [esp + 014h], esi ; 0040d48b
L_0040d48f:
    lea esi, [eax + edx*4] ; 0040d48f
L_0040d492:
    mov dword ptr [esp + 018h], esi ; 0040d492
L_0040d496:
    mov esi, dword ptr [esp + 01ch] ; 0040d496
L_0040d49a:
    mov ebx, dword ptr [esp + 010h] ; 0040d49a
L_0040d49e:
    add ebx, esi ; 0040d49e
L_0040d4a0:
    mov ebp, dword ptr [esp + 030h] ; 0040d4a0
L_0040d4a4:
    add ebp, esi ; 0040d4a4
L_0040d4a6:
    xor eax, eax ; 0040d4a6
L_0040d4a8:
    mov edi, dword ptr [ecx] ; 0040d4a8
L_0040d4aa:
    xor edx, edx ; 0040d4aa
L_0040d4ac:
    inc ebp ; 0040d4ac
L_0040d4ad:
    mov al, byte ptr [edi + ebx] ; 0040d4ad
L_0040d4b0:
    inc ebx ; 0040d4b0
L_0040d4b1:
    mov dl, byte ptr [edi + ebp - 1] ; 0040d4b1
L_0040d4b5:
    sub eax, edx ; 0040d4b5
L_0040d4b7:
    test eax, eax ; 0040d4b7
L_0040d4b9:
    jne L_0040d4c3 ; 0040d4b9
L_0040d4bb:
    inc esi ; 0040d4bb
L_0040d4bc:
    cmp esi, 032h ; 0040d4bc
L_0040d4bf:
    jl L_0040d4a6 ; 0040d4bf
L_0040d4c1:
    test eax, eax ; 0040d4c1
L_0040d4c3:
    jge L_0040d500 ; 0040d4c3
L_0040d4c5:
    cmp esi, dword ptr [esp + 024h] ; 0040d4c5
L_0040d4c9:
    jle L_0040d4e6 ; 0040d4c9
L_0040d4cb:
    cmp esi, 032h ; 0040d4cb
L_0040d4ce:
    jge L_0040d565 ; 0040d4ce
L_0040d4d4:
    mov eax, dword ptr [esp + 020h] ; 0040d4d4
L_0040d4d8:
    mov dword ptr [esp + 024h], esi ; 0040d4d8
L_0040d4dc:
    cmp esi, eax ; 0040d4dc
L_0040d4de:
    jl L_0040d4e2 ; 0040d4de
L_0040d4e0:
    mov esi, eax ; 0040d4e0
L_0040d4e2:
    mov dword ptr [esp + 01ch], esi ; 0040d4e2
L_0040d4e6:
    mov esi, dword ptr [esp + 018h] ; 0040d4e6
L_0040d4ea:
    mov edx, dword ptr [esp + 010h] ; 0040d4ea
L_0040d4ee:
    lea eax, [edx*4] ; 0040d4ee
L_0040d4f5:
    mov dword ptr [esi], edx ; 0040d4f5
L_0040d4f7:
    add eax, dword ptr [ecx + 0ch] ; 0040d4f7
L_0040d4fa:
    mov dword ptr [esp + 018h], eax ; 0040d4fa
L_0040d4fe:
    jmp L_0040d535 ; 0040d4fe
L_0040d500:
    cmp esi, dword ptr [esp + 020h] ; 0040d500
L_0040d504:
    jle L_0040d51d ; 0040d504
L_0040d506:
    cmp esi, 032h ; 0040d506
L_0040d509:
    jge L_0040d589 ; 0040d509
L_0040d50b:
    mov eax, dword ptr [esp + 024h] ; 0040d50b
L_0040d50f:
    mov dword ptr [esp + 020h], esi ; 0040d50f
L_0040d513:
    cmp esi, eax ; 0040d513
L_0040d515:
    jl L_0040d519 ; 0040d515
L_0040d517:
    mov esi, eax ; 0040d517
L_0040d519:
    mov dword ptr [esp + 01ch], esi ; 0040d519
L_0040d51d:
    mov esi, dword ptr [esp + 014h] ; 0040d51d
L_0040d521:
    mov edx, dword ptr [esp + 010h] ; 0040d521
L_0040d525:
    lea eax, [edx*4] ; 0040d525
L_0040d52c:
    mov dword ptr [esi], edx ; 0040d52c
L_0040d52e:
    add eax, dword ptr [ecx + 010h] ; 0040d52e
L_0040d531:
    mov dword ptr [esp + 014h], eax ; 0040d531
L_0040d535:
    mov edx, dword ptr [eax] ; 0040d535
L_0040d537:
    mov dword ptr [esp + 010h], edx ; 0040d537
L_0040d53b:
    mov edx, dword ptr [esp + 010h] ; 0040d53b
L_0040d53f:
    cmp edx, dword ptr [esp + 034h] ; 0040d53f
L_0040d543:
    jg L_0040d496 ; 0040d543
L_0040d549:
    mov esi, dword ptr [esp + 014h] ; 0040d549
L_0040d54d:
    mov eax, dword ptr [esp + 018h] ; 0040d54d
L_0040d551:
    pop ebp ; 0040d551
L_0040d552:
    pop edi ; 0040d552
L_0040d553:
    mov dword ptr [esi], 0 ; 0040d553
L_0040d559:
    pop esi ; 0040d559
L_0040d55a:
    pop ebx ; 0040d55a
L_0040d55b:
    mov dword ptr [eax], 0 ; 0040d55b
L_0040d561:
    add esp, 018h ; 0040d561
L_0040d564:
    retn  ; 0040d564
L_0040d565:
    mov eax, dword ptr [ecx + 0ch] ; 0040d565
L_0040d568:
    mov edx, dword ptr [esp + 010h] ; 0040d568
L_0040d56c:
    mov esi, dword ptr [esp + 014h] ; 0040d56c
L_0040d570:
    mov ebx, dword ptr [eax + edx*4] ; 0040d570
L_0040d573:
    mov dword ptr [esi], ebx ; 0040d573
L_0040d575:
    mov esi, dword ptr [esp + 018h] ; 0040d575
L_0040d579:
    mov eax, dword ptr [ecx + 010h] ; 0040d579
L_0040d57c:
    pop ebp ; 0040d57c
L_0040d57d:
    pop edi ; 0040d57d
L_0040d57e:
    mov ebx, dword ptr [eax + edx*4] ; 0040d57e
L_0040d581:
    mov dword ptr [esi], ebx ; 0040d581
L_0040d583:
    pop esi ; 0040d583
L_0040d584:
    pop ebx ; 0040d584
L_0040d585:
    add esp, 018h ; 0040d585
L_0040d588:
    retn  ; 0040d588
L_0040d589:
    mov eax, dword ptr [ecx + 0ch] ; 0040d589
L_0040d58c:
    mov edx, dword ptr [esp + 010h] ; 0040d58c
L_0040d590:
    mov esi, dword ptr [esp + 014h] ; 0040d590
L_0040d594:
    mov ebx, dword ptr [eax + edx*4] ; 0040d594
L_0040d597:
    mov dword ptr [esi], ebx ; 0040d597
L_0040d599:
    mov esi, dword ptr [esp + 018h] ; 0040d599
L_0040d59d:
    mov eax, dword ptr [ecx + 010h] ; 0040d59d
L_0040d5a0:
    pop ebp ; 0040d5a0
L_0040d5a1:
    pop edi ; 0040d5a1
L_0040d5a2:
    mov ebx, dword ptr [eax + edx*4] ; 0040d5a2
L_0040d5a5:
    mov dword ptr [esi], ebx ; 0040d5a5
L_0040d5a7:
    pop esi ; 0040d5a7
L_0040d5a8:
    pop ebx ; 0040d5a8
L_0040d5a9:
    add esp, 018h ; 0040d5a9
L_0040d5ac:
    retn  ; 0040d5ac
L_0040d5ad:
    db 0cch
L_0040d5ae:
    db 0cch
L_0040d5af:
    db 0cch
L_0040d5b0:
    mov edx, dword ptr [esp + 4] ; 0040d5b0
L_0040d5b4:
    push ebx ; 0040d5b4
L_0040d5b5:
    mov ecx, dword ptr [esp + 0ch] ; 0040d5b5
L_0040d5b9:
    push esi ; 0040d5b9
L_0040d5ba:
    push edi ; 0040d5ba
L_0040d5bb:
    mov eax, dword ptr [edx] ; 0040d5bb
L_0040d5bd:
    push ebp ; 0040d5bd
L_0040d5be:
    xor esi, esi ; 0040d5be
L_0040d5c0:
    mov si, word ptr [eax + ecx] ; 0040d5c0
L_0040d5c4:
    shl esi, 2 ; 0040d5c4
L_0040d5c7:
    add esi, dword ptr [edx + 8] ; 0040d5c7
L_0040d5ca:
    mov eax, dword ptr [esi] ; 0040d5ca
L_0040d5cc:
    cmp eax, ecx ; 0040d5cc
L_0040d5ce:
    jne L_0040d5f4 ; 0040d5ce
L_0040d5d0:
    mov edi, dword ptr [esp + 01ch] ; 0040d5d0
L_0040d5d4:
    cmp edi, eax ; 0040d5d4
L_0040d5d6:
    jb L_0040d5f9 ; 0040d5d6
L_0040d5d8:
    mov dword ptr [esi], 0 ; 0040d5d8
L_0040d5de:
    mov eax, dword ptr [edx + 010h] ; 0040d5de
L_0040d5e1:
    mov dword ptr [eax + ecx*4], 0 ; 0040d5e1
L_0040d5e8:
    mov eax, dword ptr [edx + 010h] ; 0040d5e8
L_0040d5eb:
    mov edx, dword ptr [edx + 0ch] ; 0040d5eb
L_0040d5ee:
    mov esi, dword ptr [eax + ecx*4] ; 0040d5ee
L_0040d5f1:
    mov dword ptr [edx + ecx*4], esi ; 0040d5f1
L_0040d5f4:
    pop ebp ; 0040d5f4
L_0040d5f5:
    pop edi ; 0040d5f5
L_0040d5f6:
    pop esi ; 0040d5f6
L_0040d5f7:
    pop ebx ; 0040d5f7
L_0040d5f8:
    retn  ; 0040d5f8
L_0040d5f9:
    mov eax, dword ptr [edx + 0ch] ; 0040d5f9
L_0040d5fc:
    lea eax, [eax + ecx*4] ; 0040d5fc
L_0040d5ff:
    mov ebx, dword ptr [eax] ; 0040d5ff
L_0040d601:
    cmp edi, ebx ; 0040d601
L_0040d603:
    jb L_0040d611 ; 0040d603
L_0040d605:
    mov dword ptr [eax], 0 ; 0040d605
L_0040d60b:
    mov eax, dword ptr [edx + 0ch] ; 0040d60b
L_0040d60e:
    mov ebx, dword ptr [eax + ecx*4] ; 0040d60e
L_0040d611:
    mov eax, dword ptr [edx + 010h] ; 0040d611
L_0040d614:
    lea eax, [eax + ecx*4] ; 0040d614
L_0040d617:
    mov ebp, dword ptr [eax] ; 0040d617
L_0040d619:
    cmp edi, ebp ; 0040d619
L_0040d61b:
    jb L_0040d629 ; 0040d61b
L_0040d61d:
    mov dword ptr [eax], 0 ; 0040d61d
L_0040d623:
    mov eax, dword ptr [edx + 010h] ; 0040d623
L_0040d626:
    mov ebp, dword ptr [eax + ecx*4] ; 0040d626
L_0040d629:
    cmp ebp, ebx ; 0040d629
L_0040d62b:
    jae L_0040d647 ; 0040d62b
L_0040d62d:
    cmp edi, ebx ; 0040d62d
L_0040d62f:
    jb L_0040d633 ; 0040d62f
L_0040d631:
    xor ebx, ebx ; 0040d631
L_0040d633:
    mov dword ptr [esi], ebx ; 0040d633
L_0040d635:
    test ebx, ebx ; 0040d635
L_0040d637:
    je L_0040d5f4 ; 0040d637
L_0040d639:
    lea esi, [ebx*4] ; 0040d639
L_0040d640:
    add esi, dword ptr [edx + 010h] ; 0040d640
L_0040d643:
    mov ebx, dword ptr [esi] ; 0040d643
L_0040d645:
    jmp L_0040d629 ; 0040d645
L_0040d647:
    cmp edi, ebp ; 0040d647
L_0040d649:
    jb L_0040d64d ; 0040d649
L_0040d64b:
    xor ebp, ebp ; 0040d64b
L_0040d64d:
    mov dword ptr [esi], ebp ; 0040d64d
L_0040d64f:
    test ebp, ebp ; 0040d64f
L_0040d651:
    je L_0040d5f4 ; 0040d651
L_0040d653:
    lea esi, [ebp*4] ; 0040d653
L_0040d65a:
    add esi, dword ptr [edx + 0ch] ; 0040d65a
L_0040d65d:
    mov ebp, dword ptr [esi] ; 0040d65d
L_0040d65f:
    jmp L_0040d629 ; 0040d65f
L_0040d661:
    db 0cch
L_0040d662:
    db 0cch
L_0040d663:
    db 0cch
L_0040d664:
    push ebx ; 0040d664
L_0040d665:
    push ecx ; 0040d665
L_0040d666:
    push edx ; 0040d666
L_0040d667:
    push esi ; 0040d667
L_0040d668:
    push edi ; 0040d668
L_0040d669:
    push ebp ; 0040d669
L_0040d66a:
    mov ebp, dword ptr [esp + 01ch] ; 0040d66a
L_0040d66e:
    mov esi, dword ptr [esp + 020h] ; 0040d66e
L_0040d672:
    mov edi, dword ptr [ebp] ; 0040d672
L_0040d675:
    xor eax, eax ; 0040d675
L_0040d677:
    mov ax, word ptr [esi + edi] ; 0040d677
L_0040d67b:
    sub esp, 030h ; 0040d67b
L_0040d67e:
    mov dword ptr [esp + 020h], edi ; 0040d67e
L_0040d682:
    mov dword ptr [esp + 028h], ebp ; 0040d682
L_0040d686:
    lea ecx, [ebp + 050h] ; 0040d686
L_0040d689:
    mov dword ptr [esp + 024h], ecx ; 0040d689
L_0040d68d:
    mov ecx, dword ptr [ebp + 8] ; 0040d68d
L_0040d690:
    mov ebx, dword ptr [ecx + eax*4] ; 0040d690
L_0040d693:
    mov dword ptr [ecx + eax*4], esi ; 0040d693
L_0040d696:
    lea edx, [esi + 4] ; 0040d696
L_0040d699:
    sub edx, dword ptr [ebp + 4] ; 0040d699
L_0040d69c:
    mov dword ptr [esp + 010h], edx ; 0040d69c
L_0040d6a0:
    cmp ebx, edx ; 0040d6a0
L_0040d6a2:
    jle L_0040d6ea ; 0040d6a2
L_0040d6a4:
    mov edi, 2 ; 0040d6a4
L_0040d6a9:
    mov edx, dword ptr [ebp + 0ch] ; 0040d6a9
L_0040d6ac:
    mov dword ptr [esp + 018h], edx ; 0040d6ac
L_0040d6b0:
    mov dword ptr [esp + 014h], edi ; 0040d6b0
L_0040d6b4:
    lea edx, [edx + esi*4] ; 0040d6b4
L_0040d6b7:
    lea eax, [edi + esi] ; 0040d6b7
L_0040d6ba:
    mov dword ptr [esp + 8], edx ; 0040d6ba
L_0040d6be:
    mov dword ptr [esp], edi ; 0040d6be
L_0040d6c1:
    mov edx, dword ptr [ebp + 010h] ; 0040d6c1
L_0040d6c4:
    mov dword ptr [esp + 01ch], edx ; 0040d6c4
L_0040d6c8:
    sub eax, ebx ; 0040d6c8
L_0040d6ca:
    lea edx, [edx + esi*4] ; 0040d6ca
L_0040d6cd:
    mov dword ptr [esp + 4], edi ; 0040d6cd
L_0040d6d1:
    mov dword ptr [esp + 0ch], edx ; 0040d6d1
L_0040d6d5:
    mov ecx, edi ; 0040d6d5
L_0040d6d7:
    mov edi, dword ptr [esp + 020h] ; 0040d6d7
L_0040d6db:
    mov dword ptr [ebp + 058h], eax ; 0040d6db
L_0040d6de:
    add edi, ecx ; 0040d6de
L_0040d6e0:
    mov ebp, 2 ; 0040d6e0
L_0040d6e5:
    mov eax, dword ptr [esi + edi] ; 0040d6e5
L_0040d6e8:
    jmp L_0040d740 ; 0040d6e8
L_0040d6ea:
    jmp L_0040d9c0 ; 0040d6ea
L_0040d6ef:
    mov edx, dword ptr [esp + 018h] ; 0040d6ef
L_0040d6f3:
    mov eax, dword ptr [esp + 0ch] ; 0040d6f3
L_0040d6f7:
    lea edi, [edx + ebx*4] ; 0040d6f7
L_0040d6fa:
    mov dword ptr [eax], ebx ; 0040d6fa
L_0040d6fc:
    mov dword ptr [esp + 0ch], edi ; 0040d6fc
L_0040d700:
    mov ecx, dword ptr [esp + 014h] ; 0040d700
L_0040d704:
    mov ebx, dword ptr [edi] ; 0040d704
L_0040d706:
    mov edi, dword ptr [esp + 020h] ; 0040d706
L_0040d70a:
    add edi, ecx ; 0040d70a
L_0040d70c:
    cmp ebx, dword ptr [esp + 010h] ; 0040d70c
L_0040d710:
    mov eax, dword ptr [esi + edi] ; 0040d710
L_0040d713:
    ja L_0040d740 ; 0040d713
L_0040d715:
    jmp L_0040d892 ; 0040d715
L_0040d71a:
    mov edx, dword ptr [esp + 01ch] ; 0040d71a
L_0040d71e:
    mov eax, dword ptr [esp + 8] ; 0040d71e
L_0040d722:
    lea edi, [edx + ebx*4] ; 0040d722
L_0040d725:
    mov dword ptr [eax], ebx ; 0040d725
L_0040d727:
    mov dword ptr [esp + 8], edi ; 0040d727
L_0040d72b:
    mov ecx, dword ptr [esp + 014h] ; 0040d72b
L_0040d72f:
    mov ebx, dword ptr [edi] ; 0040d72f
L_0040d731:
    mov edi, dword ptr [esp + 020h] ; 0040d731
L_0040d735:
    add edi, ecx ; 0040d735
L_0040d737:
    cmp ebx, dword ptr [esp + 010h] ; 0040d737
L_0040d73b:
    mov eax, dword ptr [esi + edi] ; 0040d73b
L_0040d73e:
    jbe L_0040d715 ; 0040d73e
L_0040d740:
    cmp byte ptr [ebx + edi], al ; 0040d740
L_0040d743:
    ja L_0040d71a ; 0040d743
L_0040d745:
    jb L_0040d6ef ; 0040d745
L_0040d747:
    shr eax, 8 ; 0040d747
L_0040d74a:
    inc ecx ; 0040d74a
L_0040d74b:
    cmp byte ptr [ebx + edi + 1], al ; 0040d74b
L_0040d74f:
    jne L_0040d7aa ; 0040d74f
L_0040d751:
    shr eax, 8 ; 0040d751
L_0040d754:
    inc ecx ; 0040d754
L_0040d755:
    cmp byte ptr [ebx + edi + 2], al ; 0040d755
L_0040d759:
    jne L_0040d7aa ; 0040d759
L_0040d75b:
    shr eax, 8 ; 0040d75b
L_0040d75e:
    inc ecx ; 0040d75e
L_0040d75f:
    cmp byte ptr [ebx + edi + 3], al ; 0040d75f
L_0040d763:
    jne L_0040d7aa ; 0040d763
L_0040d765:
    mov eax, dword ptr [esi + edi + 4] ; 0040d765
L_0040d769:
    inc ecx ; 0040d769
L_0040d76a:
    mov dl, byte ptr [ebx + edi + 4] ; 0040d76a
L_0040d76e:
    add edi, 4 ; 0040d76e
L_0040d771:
    cmp dl, al ; 0040d771
L_0040d773:
    jne L_0040d7aa ; 0040d773
L_0040d775:
    shr eax, 8 ; 0040d775
L_0040d778:
    inc ecx ; 0040d778
L_0040d779:
    cmp ecx, 0101h ; 0040d779
L_0040d77f:
    jl L_0040d74b ; 0040d77f
L_0040d781:
    mov edx, dword ptr [esp] ; 0040d781
L_0040d784:
    mov ecx, 0101h ; 0040d784
L_0040d789:
    jmp L_0040d7bd ; 0040d789
L_0040d78b:
    mov ecx, dword ptr [esp + 018h] ; 0040d78b
L_0040d78f:
    mov eax, dword ptr [esp + 8] ; 0040d78f
L_0040d793:
    mov ecx, dword ptr [ecx + ebx*4] ; 0040d793
L_0040d796:
    mov edx, dword ptr [esp + 01ch] ; 0040d796
L_0040d79a:
    mov dword ptr [eax], ecx ; 0040d79a
L_0040d79c:
    mov edx, dword ptr [edx + ebx*4] ; 0040d79c
L_0040d79f:
    mov eax, dword ptr [esp + 0ch] ; 0040d79f
L_0040d7a3:
    mov dword ptr [eax], edx ; 0040d7a3
L_0040d7a5:
    jmp L_0040d8a6 ; 0040d7a5
L_0040d7aa:
    ja L_0040d823 ; 0040d7aa
L_0040d7ac:
    cmp ecx, ebp ; 0040d7ac
L_0040d7ae:
    jle L_0040d7e9 ; 0040d7ae
L_0040d7b0:
    cmp ecx, dword ptr [esp] ; 0040d7b0
L_0040d7b3:
    jle L_0040d7d9 ; 0040d7b3
L_0040d7b5:
    cmp ecx, 0101h ; 0040d7b5
L_0040d7bb:
    jg L_0040d815 ; 0040d7bb
L_0040d7bd:
    mov edi, dword ptr [esp + 024h] ; 0040d7bd
L_0040d7c1:
    lea eax, [esi + 2] ; 0040d7c1
L_0040d7c4:
    mov edx, dword ptr [esp] ; 0040d7c4
L_0040d7c7:
    sub eax, ebx ; 0040d7c7
L_0040d7c9:
    mov dword ptr [esp], ecx ; 0040d7c9
L_0040d7cc:
    inc edx ; 0040d7cc
L_0040d7cd:
    mov dword ptr [edi + edx*4], eax ; 0040d7cd
L_0040d7d0:
    cmp edx, ecx ; 0040d7d0
L_0040d7d2:
    jl L_0040d7cc ; 0040d7d2
L_0040d7d4:
    cmp ecx, 032h ; 0040d7d4
L_0040d7d7:
    jge L_0040d78b ; 0040d7d7
L_0040d7d9:
    cmp dword ptr [esp + 4], ecx ; 0040d7d9
L_0040d7dd:
    mov ebp, ecx ; 0040d7dd
L_0040d7df:
    jge L_0040d7e5 ; 0040d7df
L_0040d7e1:
    mov ecx, dword ptr [esp + 4] ; 0040d7e1
L_0040d7e5:
    mov dword ptr [esp + 014h], ecx ; 0040d7e5
L_0040d7e9:
    mov edx, dword ptr [esp + 018h] ; 0040d7e9
L_0040d7ed:
    mov eax, dword ptr [esp + 0ch] ; 0040d7ed
L_0040d7f1:
    lea edi, [edx + ebx*4] ; 0040d7f1
L_0040d7f4:
    mov dword ptr [eax], ebx ; 0040d7f4
L_0040d7f6:
    mov dword ptr [esp + 0ch], edi ; 0040d7f6
L_0040d7fa:
    mov ecx, dword ptr [esp + 014h] ; 0040d7fa
L_0040d7fe:
    mov ebx, dword ptr [edi] ; 0040d7fe
L_0040d800:
    mov edi, dword ptr [esp + 020h] ; 0040d800
L_0040d804:
    add edi, ecx ; 0040d804
L_0040d806:
    cmp ebx, dword ptr [esp + 010h] ; 0040d806
L_0040d80a:
    mov eax, dword ptr [esi + edi] ; 0040d80a
L_0040d80d:
    ja L_0040d740 ; 0040d80d
L_0040d813:
    jmp L_0040d892 ; 0040d813
L_0040d815:
    mov ecx, 0101h ; 0040d815
L_0040d81a:
    jmp L_0040d7bd ; 0040d81a
L_0040d81c:
    mov ecx, 0101h ; 0040d81c
L_0040d821:
    jmp L_0040d836 ; 0040d821
L_0040d823:
    cmp ecx, dword ptr [esp + 4] ; 0040d823
L_0040d827:
    jle L_0040d868 ; 0040d827
L_0040d829:
    cmp ecx, dword ptr [esp] ; 0040d829
L_0040d82c:
    jle L_0040d856 ; 0040d82c
L_0040d82e:
    cmp ecx, 0101h ; 0040d82e
L_0040d834:
    jg L_0040d81c ; 0040d834
L_0040d836:
    mov edi, dword ptr [esp + 024h] ; 0040d836
L_0040d83a:
    lea eax, [esi + 2] ; 0040d83a
L_0040d83d:
    mov edx, dword ptr [esp] ; 0040d83d
L_0040d840:
    sub eax, ebx ; 0040d840
L_0040d842:
    mov dword ptr [esp], ecx ; 0040d842
L_0040d845:
    inc edx ; 0040d845
L_0040d846:
    mov dword ptr [edi + edx*4], eax ; 0040d846
L_0040d849:
    cmp edx, ecx ; 0040d849
L_0040d84b:
    jl L_0040d845 ; 0040d84b
L_0040d84d:
    cmp ecx, 032h ; 0040d84d
L_0040d850:
    jge L_0040d78b ; 0040d850
L_0040d856:
    mov edx, dword ptr [esp + 4] ; 0040d856
L_0040d85a:
    cmp ebp, ecx ; 0040d85a
L_0040d85c:
    mov dword ptr [esp + 4], ecx ; 0040d85c
L_0040d860:
    jge L_0040d864 ; 0040d860
L_0040d862:
    mov ecx, ebp ; 0040d862
L_0040d864:
    mov dword ptr [esp + 014h], ecx ; 0040d864
L_0040d868:
    mov edx, dword ptr [esp + 01ch] ; 0040d868
L_0040d86c:
    mov eax, dword ptr [esp + 8] ; 0040d86c
L_0040d870:
    lea edi, [edx + ebx*4] ; 0040d870
L_0040d873:
    mov dword ptr [eax], ebx ; 0040d873
L_0040d875:
    mov dword ptr [esp + 8], edi ; 0040d875
L_0040d879:
    mov ecx, dword ptr [esp + 014h] ; 0040d879
L_0040d87d:
    mov ebx, dword ptr [edi] ; 0040d87d
L_0040d87f:
    mov edi, dword ptr [esp + 020h] ; 0040d87f
L_0040d883:
    add edi, ecx ; 0040d883
L_0040d885:
    cmp ebx, dword ptr [esp + 010h] ; 0040d885
L_0040d889:
    mov eax, dword ptr [esi + edi] ; 0040d889
L_0040d88c:
    ja L_0040d740 ; 0040d88c
L_0040d892:
    mov eax, dword ptr [esp + 8] ; 0040d892
L_0040d896:
    mov edx, dword ptr [esp + 0ch] ; 0040d896
L_0040d89a:
    mov dword ptr [eax], 0 ; 0040d89a
L_0040d8a0:
    mov dword ptr [edx], 0 ; 0040d8a0
L_0040d8a6:
    mov eax, dword ptr [esp] ; 0040d8a6
L_0040d8a9:
    mov edi, dword ptr [esp + 020h] ; 0040d8a9
L_0040d8ad:
    mov ebx, esi ; 0040d8ad
L_0040d8af:
    mov ecx, dword ptr [esp + 028h] ; 0040d8af
L_0040d8b3:
    sub ebx, dword ptr [ecx + 044h] ; 0040d8b3
L_0040d8b6:
    xor ecx, ecx ; 0040d8b6
L_0040d8b8:
    mov dl, byte ptr [esi + edi] ; 0040d8b8
L_0040d8bb:
    cmp dl, byte ptr [ebx + edi] ; 0040d8bb
L_0040d8be:
    jne L_0040d8dc ; 0040d8be
L_0040d8c0:
    inc ecx ; 0040d8c0
L_0040d8c1:
    inc edi ; 0040d8c1
L_0040d8c2:
    cmp ecx, eax ; 0040d8c2
L_0040d8c4:
    jl L_0040d8b8 ; 0040d8c4
L_0040d8c6:
    mov ebx, dword ptr [esp + 024h] ; 0040d8c6
L_0040d8ca:
    mov dword ptr [ebx + ecx*4], 0 ; 0040d8ca
L_0040d8d1:
    dec ecx ; 0040d8d1
L_0040d8d2:
    cmp ecx, 2 ; 0040d8d2
L_0040d8d5:
    jge L_0040d8ca ; 0040d8d5
L_0040d8d7:
    jmp L_0040d999 ; 0040d8d7
L_0040d8dc:
    mov dword ptr [esp + 02ch], ecx ; 0040d8dc
L_0040d8e0:
    cmp ecx, 2 ; 0040d8e0
L_0040d8e3:
    jl L_0040d901 ; 0040d8e3
L_0040d8e5:
    mov ebx, dword ptr [esp + 024h] ; 0040d8e5
L_0040d8e9:
    mov dword ptr [ebx + ecx*4], 0 ; 0040d8e9
L_0040d8f0:
    dec ecx ; 0040d8f0
L_0040d8f1:
    cmp ecx, 2 ; 0040d8f1
L_0040d8f4:
    jge L_0040d8e9 ; 0040d8f4
L_0040d8f6:
    cmp dword ptr [esp + 02ch], 032h ; 0040d8f6
L_0040d8fb:
    jg L_0040d999 ; 0040d8fb
L_0040d901:
    mov edi, dword ptr [esp + 020h] ; 0040d901
L_0040d905:
    mov ebx, esi ; 0040d905
L_0040d907:
    mov ecx, dword ptr [esp + 028h] ; 0040d907
L_0040d90b:
    sub ebx, dword ptr [ecx + 048h] ; 0040d90b
L_0040d90e:
    xor ecx, ecx ; 0040d90e
L_0040d910:
    mov dl, byte ptr [esi + edi] ; 0040d910
L_0040d913:
    cmp dl, byte ptr [ebx + edi] ; 0040d913
L_0040d916:
    jne L_0040d931 ; 0040d916
L_0040d918:
    inc ecx ; 0040d918
L_0040d919:
    inc edi ; 0040d919
L_0040d91a:
    cmp ecx, eax ; 0040d91a
L_0040d91c:
    jl L_0040d910 ; 0040d91c
L_0040d91e:
    mov ebx, dword ptr [esp + 024h] ; 0040d91e
L_0040d922:
    mov dword ptr [ebx + ecx*4], 1 ; 0040d922
L_0040d929:
    dec ecx ; 0040d929
L_0040d92a:
    cmp ecx, 2 ; 0040d92a
L_0040d92d:
    jge L_0040d922 ; 0040d92d
L_0040d92f:
    jmp L_0040d999 ; 0040d92f
L_0040d931:
    cmp ecx, dword ptr [esp + 02ch] ; 0040d931
L_0040d935:
    jle L_0040d94f ; 0040d935
L_0040d937:
    mov edi, dword ptr [esp + 02ch] ; 0040d937
L_0040d93b:
    mov ebx, dword ptr [esp + 024h] ; 0040d93b
L_0040d93f:
    inc edi ; 0040d93f
L_0040d940:
    mov dword ptr [ebx + edi*4], 1 ; 0040d940
L_0040d947:
    cmp edi, ecx ; 0040d947
L_0040d949:
    jl L_0040d93f ; 0040d949
L_0040d94b:
    mov dword ptr [esp + 02ch], ecx ; 0040d94b
L_0040d94f:
    mov edi, dword ptr [esp + 020h] ; 0040d94f
L_0040d953:
    mov ebx, esi ; 0040d953
L_0040d955:
    mov ecx, dword ptr [esp + 028h] ; 0040d955
L_0040d959:
    sub ebx, dword ptr [ecx + 04ch] ; 0040d959
L_0040d95c:
    xor ecx, ecx ; 0040d95c
L_0040d95e:
    mov dl, byte ptr [esi + edi] ; 0040d95e
L_0040d961:
    cmp dl, byte ptr [ebx + edi] ; 0040d961
L_0040d964:
    jne L_0040d97f ; 0040d964
L_0040d966:
    inc ecx ; 0040d966
L_0040d967:
    inc edi ; 0040d967
L_0040d968:
    cmp ecx, eax ; 0040d968
L_0040d96a:
    jl L_0040d95e ; 0040d96a
L_0040d96c:
    mov ebx, dword ptr [esp + 024h] ; 0040d96c
L_0040d970:
    mov dword ptr [ebx + ecx*4], 2 ; 0040d970
L_0040d977:
    dec ecx ; 0040d977
L_0040d978:
    cmp ecx, 2 ; 0040d978
L_0040d97b:
    jge L_0040d970 ; 0040d97b
L_0040d97d:
    jmp L_0040d999 ; 0040d97d
L_0040d97f:
    cmp ecx, dword ptr [esp + 02ch] ; 0040d97f
L_0040d983:
    jle L_0040d999 ; 0040d983
L_0040d985:
    mov edi, dword ptr [esp + 02ch] ; 0040d985
L_0040d989:
    mov ebx, dword ptr [esp + 024h] ; 0040d989
L_0040d98d:
    inc edi ; 0040d98d
L_0040d98e:
    mov dword ptr [ebx + edi*4], 2 ; 0040d98e
L_0040d995:
    cmp edi, ecx ; 0040d995
L_0040d997:
    jl L_0040d98d ; 0040d997
L_0040d999:
    mov edx, 07fffh ; 0040d999
L_0040d99e:
    and esi, 07fffh ; 0040d99e
L_0040d9a4:
    mov eax, dword ptr [esp] ; 0040d9a4
L_0040d9a7:
    sub edx, esi ; 0040d9a7
L_0040d9a9:
    cmp eax, edx ; 0040d9a9
L_0040d9ab:
    jle L_0040d9b6 ; 0040d9ab
L_0040d9ad:
    mov eax, edx ; 0040d9ad
L_0040d9af:
    cmp edx, 2 ; 0040d9af
L_0040d9b2:
    jge L_0040d9b6 ; 0040d9b2
L_0040d9b4:
    xor eax, eax ; 0040d9b4
L_0040d9b6:
    add esp, 030h ; 0040d9b6
L_0040d9b9:
    pop ebp ; 0040d9b9
L_0040d9ba:
    pop edi ; 0040d9ba
L_0040d9bb:
    pop esi ; 0040d9bb
L_0040d9bc:
    pop edx ; 0040d9bc
L_0040d9bd:
    pop ecx ; 0040d9bd
L_0040d9be:
    pop ebx ; 0040d9be
L_0040d9bf:
    retn  ; 0040d9bf
L_0040d9c0:
    xor eax, eax ; 0040d9c0
L_0040d9c2:
    mov ecx, dword ptr [ebp + 0ch] ; 0040d9c2
L_0040d9c5:
    mov edx, dword ptr [ebp + 010h] ; 0040d9c5
L_0040d9c8:
    mov dword ptr [ecx + esi*4], eax ; 0040d9c8
L_0040d9cb:
    mov dword ptr [edx + esi*4], eax ; 0040d9cb
L_0040d9ce:
    add esp, 030h ; 0040d9ce
L_0040d9d1:
    pop ebp ; 0040d9d1
L_0040d9d2:
    pop edi ; 0040d9d2
L_0040d9d3:
    pop esi ; 0040d9d3
L_0040d9d4:
    pop edx ; 0040d9d4
L_0040d9d5:
    pop ecx ; 0040d9d5
L_0040d9d6:
    pop ebx ; 0040d9d6
L_0040d9d7:
    retn  ; 0040d9d7
L_0040d9d8:
    db 0cch
L_0040d9d9:
    db 0cch
L_0040d9da:
    db 0cch
L_0040d9db:
    db 0cch
L_0040d9dc:
    db 0cch
L_0040d9dd:
    db 0cch
L_0040d9de:
    db 0cch
L_0040d9df:
    db 0cch
L_0040d9e0:
    mov ecx, dword ptr [esp + 0ch] ; 0040d9e0
L_0040d9e4:
    push ebx ; 0040d9e4
L_0040d9e5:
    push esi ; 0040d9e5
L_0040d9e6:
    push edi ; 0040d9e6
L_0040d9e7:
    mov edi, dword ptr [esp + 014h] ; 0040d9e7
L_0040d9eb:
    push ebp ; 0040d9eb
L_0040d9ec:
    mov esi, dword ptr [esp + 014h] ; 0040d9ec
L_0040d9f0:
    mov ebp, dword ptr [esp + 020h] ; 0040d9f0
L_0040d9f4:
    mov dword ptr [esi + 02528h], edi ; 0040d9f4
L_0040d9fa:
    mov dword ptr [esi + 09a0h], ecx ; 0040d9fa
L_0040da00:
    xor dx, dx ; 0040da00
L_0040da03:
    mov dword ptr [esi + 09a8h], ebp ; 0040da03
L_0040da09:
    mov byte ptr [esi + 0252eh], 0 ; 0040da09
L_0040da10:
    mov word ptr [esi + 0252ch], 0 ; 0040da10
L_0040da19:
    mov word ptr [esi + 09aeh], 0 ; 0040da19
L_0040da22:
    test edi, edi ; 0040da22
L_0040da24:
    jle L_0040da5e ; 0040da24
L_0040da26:
    mov ebx, dword ptr [esi + 09a8h] ; 0040da26
L_0040da2c:
    movsx eax, dx ; 0040da2c
L_0040da2f:
    mov byte ptr [ebx + eax], 0 ; 0040da2f
L_0040da33:
    cmp word ptr [ecx + eax*2], 0 ; 0040da33
L_0040da38:
    je L_0040da55 ; 0040da38
L_0040da3a:
    mov ax, word ptr [esi + 0252ch] ; 0040da3a
L_0040da41:
    inc ax ; 0040da41
L_0040da43:
    mov word ptr [esi + 0252ch], ax ; 0040da43
L_0040da4a:
    movsx ebx, ax ; 0040da4a
L_0040da4d:
    mov word ptr [esi + ebx*2 + 09ach], dx ; 0040da4d
L_0040da55:
    inc dx ; 0040da55
L_0040da57:
    movsx eax, dx ; 0040da57
L_0040da5a:
    cmp eax, edi ; 0040da5a
L_0040da5c:
    jl L_0040da26 ; 0040da5c
L_0040da5e:
    mov ax, word ptr [esi + 0252ch] ; 0040da5e
L_0040da65:
    cmp ax, 2 ; 0040da65
L_0040da69:
    jge L_0040daa5 ; 0040da69
L_0040da6b:
    test ax, ax ; 0040da6b
L_0040da6e:
    je L_0040da8f ; 0040da6e
L_0040da70:
    cmp word ptr [esi + 09aeh], 0 ; 0040da70
L_0040da78:
    jne L_0040da85 ; 0040da78
L_0040da7a:
    mov word ptr [ecx + 2], 1 ; 0040da7a
L_0040da80:
    jmp L_0040d9f4 ; 0040da80
L_0040da85:
    mov word ptr [ecx], 1 ; 0040da85
L_0040da8a:
    jmp L_0040d9f4 ; 0040da8a
L_0040da8f:
    mov ebx, dword ptr [esp + 024h] ; 0040da8f
L_0040da93:
    pop ebp ; 0040da93
L_0040da94:
    movsx eax, word ptr [esi + 09aeh] ; 0040da94
L_0040da9b:
    mov word ptr [ebx + eax*2], 0 ; 0040da9b
L_0040daa1:
    pop edi ; 0040daa1
L_0040daa2:
    pop esi ; 0040daa2
L_0040daa3:
    pop ebx ; 0040daa3
L_0040daa4:
    retn  ; 0040daa4
L_0040daa5:
    mov ebx, dword ptr [esp + 024h] ; 0040daa5
L_0040daa9:
    push ebx ; 0040daa9
L_0040daaa:
    push ecx ; 0040daaa
L_0040daab:
    push edi ; 0040daab
L_0040daac:
    push esi ; 0040daac
L_0040daad:
    call L_0040db40 ; 0040daad
L_0040dab2:
    add esp, 010h ; 0040dab2
L_0040dab5:
    cmp dword ptr [esp + 028h], 0 ; 0040dab5
L_0040daba:
    je L_0040dac8 ; 0040daba
L_0040dabc:
    push ebx ; 0040dabc
L_0040dabd:
    push ebp ; 0040dabd
L_0040dabe:
    push edi ; 0040dabe
L_0040dabf:
    push esi ; 0040dabf
L_0040dac0:
    call L_0040dad0 ; 0040dac0
L_0040dac5:
    add esp, 010h ; 0040dac5
L_0040dac8:
    pop ebp ; 0040dac8
L_0040dac9:
    pop edi ; 0040dac9
L_0040daca:
    pop esi ; 0040daca
L_0040dacb:
    pop ebx ; 0040dacb
L_0040dacc:
    retn  ; 0040dacc
L_0040dacd:
    db 0cch
L_0040dace:
    db 0cch
L_0040dacf:
    db 0cch
L_0040dad0:
    mov ecx, dword ptr [esp + 4] ; 0040dad0
L_0040dad4:
    sub esp, 024h ; 0040dad4
L_0040dad7:
    mov word ptr [esp + 2], 0 ; 0040dad7
L_0040dade:
    lea edx, [esp + 4] ; 0040dade
L_0040dae2:
    push ebx ; 0040dae2
L_0040dae3:
    push esi ; 0040dae3
L_0040dae4:
    add ecx, 02506h ; 0040dae4
L_0040daea:
    push edi ; 0040daea
L_0040daeb:
    mov ax, word ptr [edx - 2] ; 0040daeb
L_0040daef:
    add edx, 2 ; 0040daef
L_0040daf2:
    add ax, word ptr [ecx] ; 0040daf2
L_0040daf5:
    add ecx, 2 ; 0040daf5
L_0040daf8:
    add ax, ax ; 0040daf8
L_0040dafb:
    mov word ptr [edx - 2], ax ; 0040dafb
L_0040daff:
    lea eax, [esp + 02eh] ; 0040daff
L_0040db03:
    cmp edx, eax ; 0040db03
L_0040db05:
    jbe L_0040daeb ; 0040db05
L_0040db07:
    xor edi, edi ; 0040db07
L_0040db09:
    mov ecx, dword ptr [esp + 038h] ; 0040db09
L_0040db0d:
    cmp ecx, edi ; 0040db0d
L_0040db0f:
    jle L_0040db36 ; 0040db0f
L_0040db11:
    mov edx, dword ptr [esp + 03ch] ; 0040db11
L_0040db15:
    mov esi, dword ptr [esp + 040h] ; 0040db15
L_0040db19:
    lea ebx, [edx + edi] ; 0040db19
L_0040db1c:
    inc edi ; 0040db1c
L_0040db1d:
    movsx eax, byte ptr [ebx] ; 0040db1d
L_0040db20:
    mov ax, word ptr [esp + eax*2 + 0ch] ; 0040db20
L_0040db25:
    mov word ptr [esi + edi*2 - 2], ax ; 0040db25
L_0040db2a:
    movsx ebx, byte ptr [ebx] ; 0040db2a
L_0040db2d:
    inc word ptr [esp + ebx*2 + 0ch] ; 0040db2d
L_0040db32:
    cmp edi, ecx ; 0040db32
L_0040db34:
    jl L_0040db19 ; 0040db34
L_0040db36:
    pop edi ; 0040db36
L_0040db37:
    pop esi ; 0040db37
L_0040db38:
    pop ebx ; 0040db38
L_0040db39:
    add esp, 024h ; 0040db39
L_0040db3c:
    retn  ; 0040db3c
L_0040db3d:
    db 0cch
L_0040db3e:
    db 0cch
L_0040db3f:
    db 0cch
L_0040db40:
    mov ecx, dword ptr [esp + 4] ; 0040db40
L_0040db44:
    sub esp, 0ch ; 0040db44
L_0040db47:
    mov ax, word ptr [ecx + 0252ch] ; 0040db47
L_0040db4e:
    push ebx ; 0040db4e
L_0040db4f:
    sar ax, 1 ; 0040db4f
L_0040db53:
    push esi ; 0040db53
L_0040db54:
    mov word ptr [esp + 0eh], ax ; 0040db54
L_0040db59:
    push edi ; 0040db59
L_0040db5a:
    cmp ax, 1 ; 0040db5a
L_0040db5e:
    push ebp ; 0040db5e
L_0040db5f:
    jl L_0040dc28 ; 0040db5f
L_0040db65:
    mov ax, word ptr [esp + 016h] ; 0040db65
L_0040db6a:
    mov word ptr [esp + 012h], ax ; 0040db6a
L_0040db6f:
    movsx edx, ax ; 0040db6f
L_0040db72:
    mov bx, word ptr [ecx + edx*2 + 09ach] ; 0040db72
L_0040db7a:
    lea edx, [eax*2] ; 0040db7a
L_0040db81:
    mov word ptr [esp + 018h], bx ; 0040db81
L_0040db86:
    cmp word ptr [ecx + 0252ch], dx ; 0040db86
L_0040db8d:
    jl L_0040dc05 ; 0040db8d
L_0040db8f:
    movsx eax, bx ; 0040db8f
L_0040db92:
    cmp word ptr [ecx + 0252ch], dx ; 0040db92
L_0040db99:
    lea esi, [eax*2] ; 0040db99
L_0040dba0:
    jle L_0040dbc9 ; 0040dba0
L_0040dba2:
    movsx eax, dx ; 0040dba2
L_0040dba5:
    movsx ebx, word ptr [ecx + eax*2 + 09ach] ; 0040dba5
L_0040dbad:
    lea eax, [ecx + eax*2] ; 0040dbad
L_0040dbb0:
    mov edi, dword ptr [ecx + 09a0h] ; 0040dbb0
L_0040dbb6:
    movsx eax, word ptr [eax + 09aeh] ; 0040dbb6
L_0040dbbd:
    mov ax, word ptr [edi + eax*2] ; 0040dbbd
L_0040dbc1:
    cmp word ptr [edi + ebx*2], ax ; 0040dbc1
L_0040dbc5:
    jbe L_0040dbc9 ; 0040dbc5
L_0040dbc7:
    inc dx ; 0040dbc7
L_0040dbc9:
    movsx eax, dx ; 0040dbc9
L_0040dbcc:
    mov bx, word ptr [ecx + eax*2 + 09ach] ; 0040dbcc
L_0040dbd4:
    mov eax, dword ptr [ecx + 09a0h] ; 0040dbd4
L_0040dbda:
    mov bp, word ptr [eax + esi] ; 0040dbda
L_0040dbde:
    movsx edi, bx ; 0040dbde
L_0040dbe1:
    cmp word ptr [eax + edi*2], bp ; 0040dbe1
L_0040dbe5:
    jae L_0040dc05 ; 0040dbe5
L_0040dbe7:
    movsx eax, word ptr [esp + 012h] ; 0040dbe7
L_0040dbec:
    mov word ptr [esp + 012h], dx ; 0040dbec
L_0040dbf1:
    add dx, dx ; 0040dbf1
L_0040dbf4:
    mov word ptr [ecx + eax*2 + 09ach], bx ; 0040dbf4
L_0040dbfc:
    cmp word ptr [ecx + 0252ch], dx ; 0040dbfc
L_0040dc03:
    jge L_0040dba0 ; 0040dc03
L_0040dc05:
    mov ax, word ptr [esp + 018h] ; 0040dc05
L_0040dc0a:
    movsx edx, word ptr [esp + 012h] ; 0040dc0a
L_0040dc0f:
    mov word ptr [ecx + edx*2 + 09ach], ax ; 0040dc0f
L_0040dc17:
    dec word ptr [esp + 016h] ; 0040dc17
L_0040dc1c:
    cmp word ptr [esp + 016h], 1 ; 0040dc1c
L_0040dc22:
    jge L_0040db65 ; 0040dc22
L_0040dc28:
    mov eax, dword ptr [esp + 02ch] ; 0040dc28
L_0040dc2c:
    mov dword ptr [ecx + 09a4h], eax ; 0040dc2c
L_0040dc32:
    mov dx, word ptr [ecx + 09aeh] ; 0040dc32
L_0040dc39:
    movsx eax, dx ; 0040dc39
L_0040dc3c:
    mov word ptr [esp + 016h], dx ; 0040dc3c
L_0040dc41:
    mov dword ptr [esp + 018h], eax ; 0040dc41
L_0040dc45:
    cmp dword ptr [ecx + 02528h], eax ; 0040dc45
L_0040dc4b:
    jle L_0040dc5d ; 0040dc4b
L_0040dc4d:
    mov eax, dword ptr [ecx + 09a4h] ; 0040dc4d
L_0040dc53:
    mov word ptr [eax], dx ; 0040dc53
L_0040dc56:
    add dword ptr [ecx + 09a4h], 2 ; 0040dc56
L_0040dc5d:
    mov word ptr [esp + 014h], 1 ; 0040dc5d
L_0040dc64:
    mov si, word ptr [ecx + 0252ch] ; 0040dc64
L_0040dc6b:
    movsx eax, si ; 0040dc6b
L_0040dc6e:
    dec si ; 0040dc6e
L_0040dc70:
    mov ax, word ptr [ecx + eax*2 + 09ach] ; 0040dc70
L_0040dc78:
    mov dx, 2 ; 0040dc78
L_0040dc7c:
    mov word ptr [ecx + 09aeh], ax ; 0040dc7c
L_0040dc83:
    mov word ptr [ecx + 0252ch], si ; 0040dc83
L_0040dc8a:
    mov word ptr [esp + 012h], ax ; 0040dc8a
L_0040dc8f:
    cmp si, dx ; 0040dc8f
L_0040dc92:
    jl L_0040dd0a ; 0040dc92
L_0040dc94:
    movsx eax, ax ; 0040dc94
L_0040dc97:
    cmp word ptr [ecx + 0252ch], dx ; 0040dc97
L_0040dc9e:
    lea esi, [eax*2] ; 0040dc9e
L_0040dca5:
    jle L_0040dcce ; 0040dca5
L_0040dca7:
    movsx eax, dx ; 0040dca7
L_0040dcaa:
    movsx ebx, word ptr [ecx + eax*2 + 09ach] ; 0040dcaa
L_0040dcb2:
    lea eax, [ecx + eax*2] ; 0040dcb2
L_0040dcb5:
    mov edi, dword ptr [ecx + 09a0h] ; 0040dcb5
L_0040dcbb:
    movsx eax, word ptr [eax + 09aeh] ; 0040dcbb
L_0040dcc2:
    mov ax, word ptr [edi + eax*2] ; 0040dcc2
L_0040dcc6:
    cmp word ptr [edi + ebx*2], ax ; 0040dcc6
L_0040dcca:
    jbe L_0040dcce ; 0040dcca
L_0040dccc:
    inc dx ; 0040dccc
L_0040dcce:
    movsx eax, dx ; 0040dcce
L_0040dcd1:
    mov bx, word ptr [ecx + eax*2 + 09ach] ; 0040dcd1
L_0040dcd9:
    mov eax, dword ptr [ecx + 09a0h] ; 0040dcd9
L_0040dcdf:
    mov bp, word ptr [eax + esi] ; 0040dcdf
L_0040dce3:
    movsx edi, bx ; 0040dce3
L_0040dce6:
    cmp word ptr [eax + edi*2], bp ; 0040dce6
L_0040dcea:
    jae L_0040dd0a ; 0040dcea
L_0040dcec:
    movsx eax, word ptr [esp + 014h] ; 0040dcec
L_0040dcf1:
    mov word ptr [esp + 014h], dx ; 0040dcf1
L_0040dcf6:
    add dx, dx ; 0040dcf6
L_0040dcf9:
    mov word ptr [ecx + eax*2 + 09ach], bx ; 0040dcf9
L_0040dd01:
    cmp word ptr [ecx + 0252ch], dx ; 0040dd01
L_0040dd08:
    jge L_0040dca5 ; 0040dd08
L_0040dd0a:
    mov ax, word ptr [esp + 012h] ; 0040dd0a
L_0040dd0f:
    movsx edx, word ptr [esp + 014h] ; 0040dd0f
L_0040dd14:
    mov word ptr [ecx + edx*2 + 09ach], ax ; 0040dd14
L_0040dd1c:
    mov bx, word ptr [ecx + 09aeh] ; 0040dd1c
L_0040dd23:
    movsx edi, bx ; 0040dd23
L_0040dd26:
    mov word ptr [esp + 012h], bx ; 0040dd26
L_0040dd2b:
    cmp dword ptr [ecx + 02528h], edi ; 0040dd2b
L_0040dd31:
    jle L_0040dd43 ; 0040dd31
L_0040dd33:
    mov eax, dword ptr [ecx + 09a4h] ; 0040dd33
L_0040dd39:
    mov word ptr [eax], bx ; 0040dd39
L_0040dd3c:
    add dword ptr [ecx + 09a4h], 2 ; 0040dd3c
L_0040dd43:
    mov ax, word ptr [esp + 024h] ; 0040dd43
L_0040dd48:
    mov esi, dword ptr [esp + 028h] ; 0040dd48
L_0040dd4c:
    mov di, word ptr [esi + edi*2] ; 0040dd4c
L_0040dd50:
    movsx edx, ax ; 0040dd50
L_0040dd53:
    mov word ptr [esp + 014h], ax ; 0040dd53
L_0040dd58:
    mov eax, dword ptr [esp + 018h] ; 0040dd58
L_0040dd5c:
    mov word ptr [esp + 018h], 1 ; 0040dd5c
L_0040dd63:
    add di, word ptr [esi + eax*2] ; 0040dd63
L_0040dd67:
    mov ax, word ptr [esp + 014h] ; 0040dd67
L_0040dd6c:
    mov word ptr [esi + edx*2], di ; 0040dd6c
L_0040dd70:
    inc word ptr [esp + 024h] ; 0040dd70
L_0040dd75:
    mov si, 2 ; 0040dd75
L_0040dd79:
    mov word ptr [ecx + 09aeh], ax ; 0040dd79
L_0040dd80:
    cmp word ptr [ecx + 0252ch], si ; 0040dd80
L_0040dd87:
    jl L_0040ddf5 ; 0040dd87
L_0040dd89:
    cmp word ptr [ecx + 0252ch], si ; 0040dd89
L_0040dd90:
    jle L_0040ddb9 ; 0040dd90
L_0040dd92:
    movsx eax, si ; 0040dd92
L_0040dd95:
    movsx ebx, word ptr [ecx + eax*2 + 09ach] ; 0040dd95
L_0040dd9d:
    lea eax, [ecx + eax*2] ; 0040dd9d
L_0040dda0:
    mov edi, dword ptr [ecx + 09a0h] ; 0040dda0
L_0040dda6:
    movsx eax, word ptr [eax + 09aeh] ; 0040dda6
L_0040ddad:
    mov ax, word ptr [edi + eax*2] ; 0040ddad
L_0040ddb1:
    cmp word ptr [edi + ebx*2], ax ; 0040ddb1
L_0040ddb5:
    jbe L_0040ddb9 ; 0040ddb5
L_0040ddb7:
    inc si ; 0040ddb7
L_0040ddb9:
    movsx eax, si ; 0040ddb9
L_0040ddbc:
    mov bx, word ptr [ecx + eax*2 + 09ach] ; 0040ddbc
L_0040ddc4:
    mov eax, dword ptr [ecx + 09a0h] ; 0040ddc4
L_0040ddca:
    mov di, word ptr [eax + edx*2] ; 0040ddca
L_0040ddce:
    movsx ebp, bx ; 0040ddce
L_0040ddd1:
    cmp word ptr [eax + ebp*2], di ; 0040ddd1
L_0040ddd5:
    jae L_0040ddf5 ; 0040ddd5
L_0040ddd7:
    movsx eax, word ptr [esp + 018h] ; 0040ddd7
L_0040dddc:
    mov word ptr [esp + 018h], si ; 0040dddc
L_0040dde1:
    add si, si ; 0040dde1
L_0040dde4:
    mov word ptr [ecx + eax*2 + 09ach], bx ; 0040dde4
L_0040ddec:
    cmp word ptr [ecx + 0252ch], si ; 0040ddec
L_0040ddf3:
    jge L_0040dd90 ; 0040ddf3
L_0040ddf5:
    mov ax, word ptr [esp + 014h] ; 0040ddf5
L_0040ddfa:
    movsx esi, word ptr [esp + 018h] ; 0040ddfa
L_0040ddff:
    mov bx, word ptr [esp + 012h] ; 0040ddff
L_0040de04:
    mov word ptr [ecx + esi*2 + 09ach], ax ; 0040de04
L_0040de0c:
    lea eax, [ecx + edx*4] ; 0040de0c
L_0040de0f:
    mov dx, word ptr [esp + 016h] ; 0040de0f
L_0040de14:
    mov word ptr [eax + 0f28h], dx ; 0040de14
L_0040de1b:
    mov word ptr [eax + 0f2ah], bx ; 0040de1b
L_0040de22:
    cmp word ptr [ecx + 0252ch], 1 ; 0040de22
L_0040de2a:
    jg L_0040dc32 ; 0040de2a
L_0040de30:
    mov eax, dword ptr [esp + 02ch] ; 0040de30
L_0040de34:
    mov edx, dword ptr [esp + 014h] ; 0040de34
L_0040de38:
    push edx ; 0040de38
L_0040de39:
    mov dword ptr [ecx + 09a4h], eax ; 0040de39
L_0040de3f:
    push ecx ; 0040de3f
L_0040de40:
    call L_0040de50 ; 0040de40
L_0040de45:
    add esp, 8 ; 0040de45
L_0040de48:
    pop ebp ; 0040de48
L_0040de49:
    pop edi ; 0040de49
L_0040de4a:
    pop esi ; 0040de4a
L_0040de4b:
    pop ebx ; 0040de4b
L_0040de4c:
    add esp, 0ch ; 0040de4c
L_0040de4f:
    retn  ; 0040de4f
L_0040de50:
    push esi ; 0040de50
L_0040de51:
    xor ecx, ecx ; 0040de51
L_0040de53:
    mov esi, dword ptr [esp + 8] ; 0040de53
L_0040de57:
    push edi ; 0040de57
L_0040de58:
    xor eax, eax ; 0040de58
L_0040de5a:
    xor edx, edx ; 0040de5a
L_0040de5c:
    mov dl, cl ; 0040de5c
L_0040de5e:
    inc cl ; 0040de5e
L_0040de60:
    mov word ptr [esi + edx*2 + 02504h], ax ; 0040de60
L_0040de68:
    cmp cl, 010h ; 0040de68
L_0040de6b:
    jbe L_0040de5a ; 0040de6b
L_0040de6d:
    xor di, di ; 0040de6d
L_0040de70:
    mov eax, dword ptr [esp + 010h] ; 0040de70
L_0040de74:
    push eax ; 0040de74
L_0040de75:
    push esi ; 0040de75
L_0040de76:
    call L_0040df20 ; 0040de76
L_0040de7b:
    add esp, 8 ; 0040de7b
L_0040de7e:
    mov al, 010h ; 0040de7e
L_0040de80:
    xor ecx, ecx ; 0040de80
L_0040de82:
    mov cl, al ; 0040de82
L_0040de84:
    mov dx, word ptr [esi + ecx*2 + 02504h] ; 0040de84
L_0040de8c:
    mov cl, 010h ; 0040de8c
L_0040de8e:
    sub cl, al ; 0040de8e
L_0040de90:
    shl dx, cl ; 0040de90
L_0040de93:
    add di, dx ; 0040de93
L_0040de96:
    dec al ; 0040de96
L_0040de98:
    jne L_0040de80 ; 0040de98
L_0040de9a:
    test di, di ; 0040de9a
L_0040de9d:
    je L_0040ded9 ; 0040de9d
L_0040de9f:
    dec word ptr [esi + 02524h] ; 0040de9f
L_0040dea6:
    mov cl, 0fh ; 0040dea6
L_0040dea8:
    xor eax, eax ; 0040dea8
L_0040deaa:
    xor edx, edx ; 0040deaa
L_0040deac:
    mov dl, cl ; 0040deac
L_0040deae:
    cmp word ptr [esi + edx*2 + 02504h], ax ; 0040deae
L_0040deb6:
    jne L_0040debe ; 0040deb6
L_0040deb8:
    dec cl ; 0040deb8
L_0040deba:
    jne L_0040deaa ; 0040deba
L_0040debc:
    jmp L_0040ded5 ; 0040debc
L_0040debe:
    xor eax, eax ; 0040debe
L_0040dec0:
    mov al, cl ; 0040dec0
L_0040dec2:
    dec word ptr [esi + eax*2 + 02504h] ; 0040dec2
L_0040deca:
    lea eax, [esi + eax*2] ; 0040deca
L_0040decd:
    add word ptr [eax + 02506h], 2 ; 0040decd
L_0040ded5:
    dec di ; 0040ded5
L_0040ded7:
    jne L_0040de9f ; 0040ded7
L_0040ded9:
    mov cl, 010h ; 0040ded9
L_0040dedb:
    xor eax, eax ; 0040dedb
L_0040dedd:
    mov al, cl ; 0040dedd
L_0040dedf:
    mov dx, word ptr [esi + eax*2 + 02504h] ; 0040dedf
L_0040dee7:
    dec dx ; 0040dee7
L_0040dee9:
    js L_0040df0a ; 0040dee9
L_0040deeb:
    mov eax, dword ptr [esi + 09a4h] ; 0040deeb
L_0040def1:
    xor edi, edi ; 0040def1
L_0040def3:
    mov di, word ptr [eax] ; 0040def3
L_0040def6:
    mov eax, dword ptr [esi + 09a8h] ; 0040def6
L_0040defc:
    mov byte ptr [edi + eax], cl ; 0040defc
L_0040deff:
    add dword ptr [esi + 09a4h], 2 ; 0040deff
L_0040df06:
    dec dx ; 0040df06
L_0040df08:
    jns L_0040deeb ; 0040df08
L_0040df0a:
    dec cl ; 0040df0a
L_0040df0c:
    jne L_0040dedb ; 0040df0c
L_0040df0e:
    pop edi ; 0040df0e
L_0040df0f:
    pop esi ; 0040df0f
L_0040df10:
    retn  ; 0040df10
L_0040df11:
    db 0cch
L_0040df12:
    db 0cch
L_0040df13:
    db 0cch
L_0040df14:
    db 0cch
L_0040df15:
    db 0cch
L_0040df16:
    db 0cch
L_0040df17:
    db 0cch
L_0040df18:
    db 0cch
L_0040df19:
    db 0cch
L_0040df1a:
    db 0cch
L_0040df1b:
    db 0cch
L_0040df1c:
    db 0cch
L_0040df1d:
    db 0cch
L_0040df1e:
    db 0cch
L_0040df1f:
    db 0cch
L_0040df20:
    movsx eax, word ptr [esp + 8] ; 0040df20
L_0040df25:
    push esi ; 0040df25
L_0040df26:
    push edi ; 0040df26
L_0040df27:
    mov esi, dword ptr [esp + 0ch] ; 0040df27
L_0040df2b:
    cmp dword ptr [esi + 02528h], eax ; 0040df2b
L_0040df31:
    jle L_0040df4d ; 0040df31
L_0040df33:
    mov al, byte ptr [esi + 0252eh] ; 0040df33
L_0040df39:
    cmp al, 010h ; 0040df39
L_0040df3b:
    jl L_0040df3f ; 0040df3b
L_0040df3d:
    mov al, 010h ; 0040df3d
L_0040df3f:
    movsx eax, al ; 0040df3f
L_0040df42:
    inc word ptr [esi + eax*2 + 02504h] ; 0040df42
L_0040df4a:
    pop edi ; 0040df4a
L_0040df4b:
    pop esi ; 0040df4b
L_0040df4c:
    retn  ; 0040df4c
L_0040df4d:
    lea edi, [esi + eax*4] ; 0040df4d
L_0040df50:
    inc byte ptr [esi + 0252eh] ; 0040df50
L_0040df56:
    mov ax, word ptr [edi + 0f28h] ; 0040df56
L_0040df5d:
    push eax ; 0040df5d
L_0040df5e:
    push esi ; 0040df5e
L_0040df5f:
    call L_0040df20 ; 0040df5f
L_0040df64:
    mov ax, word ptr [edi + 0f2ah] ; 0040df64
L_0040df6b:
    add esp, 8 ; 0040df6b
L_0040df6e:
    push eax ; 0040df6e
L_0040df6f:
    push esi ; 0040df6f
L_0040df70:
    call L_0040df20 ; 0040df70
L_0040df75:
    add esp, 8 ; 0040df75
L_0040df78:
    dec byte ptr [esi + 0252eh] ; 0040df78
L_0040df7e:
    pop edi ; 0040df7e
L_0040df7f:
    pop esi ; 0040df7f
L_0040df80:
    retn  ; 0040df80
L_0040df81:
    db 0cch
L_0040df82:
    db 0cch
L_0040df83:
    db 0cch
L_0040df84:
    db 0cch
L_0040df85:
    db 0cch
L_0040df86:
    db 0cch
L_0040df87:
    db 0cch
L_0040df88:
    db 0cch
L_0040df89:
    db 0cch
L_0040df8a:
    db 0cch
L_0040df8b:
    db 0cch
L_0040df8c:
    db 0cch
L_0040df8d:
    db 0cch
L_0040df8e:
    db 0cch
L_0040df8f:
    db 0cch
L_0040df90:
    push ebp ; 0040df90
L_0040df91:
    mov ebp, esp ; 0040df91
L_0040df93:
    mov eax, dword ptr [ebp + 8] ; 0040df93
L_0040df96:
    push eax ; 0040df96
L_0040df97:
    call _malloc ; 0040df97
L_0040df9c:
    add esp, 4 ; 0040df9c
L_0040df9f:
    pop ebp ; 0040df9f
L_0040dfa0:
    retn  ; 0040dfa0
L_0040dfa1:
    db 0cch
L_0040dfa2:
    db 0cch
L_0040dfa3:
    db 0cch
L_0040dfa4:
    db 0cch
L_0040dfa5:
    db 0cch
L_0040dfa6:
    db 0cch
L_0040dfa7:
    db 0cch
L_0040dfa8:
    db 0cch
L_0040dfa9:
    db 0cch
L_0040dfaa:
    db 0cch
L_0040dfab:
    db 0cch
L_0040dfac:
    db 0cch
L_0040dfad:
    db 0cch
L_0040dfae:
    db 0cch
L_0040dfaf:
    db 0cch
L_0040dfb0:
    push ebp ; 0040dfb0
L_0040dfb1:
    mov ebp, esp ; 0040dfb1
L_0040dfb3:
    mov eax, dword ptr [ebp + 8] ; 0040dfb3
L_0040dfb6:
    push eax ; 0040dfb6
L_0040dfb7:
    call _free ; 0040dfb7
L_0040dfbc:
    add esp, 4 ; 0040dfbc
L_0040dfbf:
    pop ebp ; 0040dfbf
L_0040dfc0:
    retn  ; 0040dfc0
L_0040dfc1:
    db 0cch
L_0040dfc2:
    db 0cch
L_0040dfc3:
    db 0cch
L_0040dfc4:
    db 0cch
L_0040dfc5:
    db 0cch
L_0040dfc6:
    db 0cch
L_0040dfc7:
    db 0cch
L_0040dfc8:
    db 0cch
L_0040dfc9:
    db 0cch
L_0040dfca:
    db 0cch
L_0040dfcb:
    db 0cch
L_0040dfcc:
    db 0cch
L_0040dfcd:
    db 0cch
L_0040dfce:
    db 0cch
L_0040dfcf:
    db 0cch
_kb_lzx_decompress LABEL NEAR
L_0040dfd0:
    push ebp ; 0040dfd0
L_0040dfd1:
    mov ebp, esp ; 0040dfd1
L_0040dfd3:
    sub esp, 028h ; 0040dfd3
L_0040dfd6:
    mov byte ptr [ebp - 019h], 0 ; 0040dfd6
L_0040dfda:
    mov dword ptr [ebp - 014h], 1 ; 0040dfda
L_0040dfe1:
    mov dword ptr [ebp - 018h], 020000h ; 0040dfe1
L_0040dfe8:
    mov dword ptr [ebp - 020h], 08000h ; 0040dfe8
L_0040dfef:
    push 0 ; 0040dfef
L_0040dff1:
    push 0 ; 0040dff1
L_0040dff3:
    push 0 ; 0040dff3
L_0040dff5:
    push 0 ; 0040dff5
L_0040dff7:
    push 0 ; 0040dff7
L_0040dff9:
    lea eax, [ebp - 8] ; 0040dff9
L_0040dffc:
    push eax ; 0040dffc
L_0040dffd:
    lea ecx, [ebp - 0ch] ; 0040dffd
L_0040e000:
    push ecx ; 0040e000
L_0040e001:
    push OFFSET L_0040dfb0 ; 0040e001
L_0040e006:
    push OFFSET L_0040df90 ; 0040e006
L_0040e00b:
    lea edx, [ebp - 018h] ; 0040e00b
L_0040e00e:
    push edx ; 0040e00e
L_0040e00f:
    lea eax, [ebp - 020h] ; 0040e00f
L_0040e012:
    push eax ; 0040e012
L_0040e013:
    call L_0040e250 ; 0040e013
L_0040e018:
    add esp, 02ch ; 0040e018
L_0040e01b:
    mov ecx, dword ptr [ebp + 8] ; 0040e01b
L_0040e01e:
    mov dword ptr [ebp - 024h], ecx ; 0040e01e
L_0040e021:
    mov edx, dword ptr [ebp + 0ch] ; 0040e021
L_0040e024:
    mov dword ptr [ebp - 4], edx ; 0040e024
L_0040e027:
    mov eax, dword ptr [ebp - 024h] ; 0040e027
L_0040e02a:
    mov dword ptr [ebp - 028h], eax ; 0040e02a
L_0040e02d:
    mov ecx, dword ptr [ebp - 024h] ; 0040e02d
L_0040e030:
    add ecx, 4 ; 0040e030
L_0040e033:
    mov dword ptr [ebp - 024h], ecx ; 0040e033
L_0040e036:
    mov edx, dword ptr [ebp - 028h] ; 0040e036
L_0040e039:
    movzx eax, word ptr [edx + 2] ; 0040e039
L_0040e03d:
    mov dword ptr [ebp - 010h], eax ; 0040e03d
L_0040e040:
    lea ecx, [ebp - 010h] ; 0040e040
L_0040e043:
    push ecx ; 0040e043
L_0040e044:
    mov edx, dword ptr [ebp - 4] ; 0040e044
L_0040e047:
    push edx ; 0040e047
L_0040e048:
    mov eax, dword ptr [ebp - 028h] ; 0040e048
L_0040e04b:
    movzx ecx, word ptr [eax] ; 0040e04b
L_0040e04e:
    push ecx ; 0040e04e
L_0040e04f:
    mov edx, dword ptr [ebp - 024h] ; 0040e04f
L_0040e052:
    push edx ; 0040e052
L_0040e053:
    mov eax, dword ptr [ebp - 8] ; 0040e053
L_0040e056:
    push eax ; 0040e056
L_0040e057:
    call L_0040e350 ; 0040e057
L_0040e05c:
    add esp, 014h ; 0040e05c
L_0040e05f:
    test eax, eax ; 0040e05f
L_0040e061:
    je L_0040e065 ; 0040e061
L_0040e063:
    jmp L_0040e091 ; 0040e063
L_0040e065:
    mov ecx, dword ptr [ebp - 028h] ; 0040e065
L_0040e068:
    movzx edx, word ptr [ecx] ; 0040e068
L_0040e06b:
    add edx, dword ptr [ebp - 024h] ; 0040e06b
L_0040e06e:
    mov dword ptr [ebp - 024h], edx ; 0040e06e
L_0040e071:
    mov eax, dword ptr [ebp - 028h] ; 0040e071
L_0040e074:
    movzx ecx, word ptr [eax + 2] ; 0040e074
L_0040e078:
    add ecx, dword ptr [ebp - 4] ; 0040e078
L_0040e07b:
    mov dword ptr [ebp - 4], ecx ; 0040e07b
L_0040e07e:
    mov edx, dword ptr [ebp - 024h] ; 0040e07e
L_0040e081:
    sub edx, dword ptr [ebp + 8] ; 0040e081
L_0040e084:
    cmp edx, dword ptr [ebp + 010h] ; 0040e084
L_0040e087:
    jb L_0040e08b ; 0040e087
L_0040e089:
    jmp L_0040e08d ; 0040e089
L_0040e08b:
    jmp L_0040e027 ; 0040e08b
L_0040e08d:
    mov byte ptr [ebp - 019h], 1 ; 0040e08d
L_0040e091:
    mov eax, dword ptr [ebp - 8] ; 0040e091
L_0040e094:
    push eax ; 0040e094
L_0040e095:
    call L_0040e3d0 ; 0040e095
L_0040e09a:
    add esp, 4 ; 0040e09a
L_0040e09d:
    mov al, byte ptr [ebp - 019h] ; 0040e09d
L_0040e0a0:
    mov esp, ebp ; 0040e0a0
L_0040e0a2:
    pop ebp ; 0040e0a2
L_0040e0a3:
    retn  ; 0040e0a3
L_0040e0a4:
    db 0cch
L_0040e0a5:
    db 0cch
L_0040e0a6:
    db 0cch
L_0040e0a7:
    db 0cch
L_0040e0a8:
    db 0cch
L_0040e0a9:
    db 0cch
L_0040e0aa:
    db 0cch
L_0040e0ab:
    db 0cch
L_0040e0ac:
    db 0cch
L_0040e0ad:
    db 0cch
L_0040e0ae:
    db 0cch
L_0040e0af:
    db 0cch
_kb_m8_unpack LABEL NEAR
L_0040e0b0:
    push ebp ; 0040e0b0
L_0040e0b1:
    mov ebp, esp ; 0040e0b1
L_0040e0b3:
    sub esp, 028h ; 0040e0b3
L_0040e0b6:
    mov dword ptr [ebp - 014h], 0 ; 0040e0b6
L_0040e0bd:
    mov dword ptr [ebp - 8], 0 ; 0040e0bd
L_0040e0c4:
    push 0600000h ; 0040e0c4
L_0040e0c9:
    push 0 ; 0040e0c9
L_0040e0cb:
    push OFFSET _kb_memory + 14730688 ; 0040e0cb
L_0040e0d0:
    call _memset ; 0040e0d0
L_0040e0d5:
    add esp, 0ch ; 0040e0d5
L_0040e0d8:
    push 0600000h ; 0040e0d8
L_0040e0dd:
    push 0 ; 0040e0dd
L_0040e0df:
    push OFFSET _kb_memory + 50560 ; 0040e0df
L_0040e0e4:
    call _memset ; 0040e0e4
L_0040e0e9:
    add esp, 0ch ; 0040e0e9
L_0040e0ec:
    push OFFSET _kb_memory + 37204 ; 0040e0ec
L_0040e0f1:
    mov eax, dword ptr [ebp + 8] ; 0040e0f1
L_0040e0f4:
    push eax ; 0040e0f4
L_0040e0f5:
    call _fopen ; 0040e0f5
L_0040e0fa:
    add esp, 8 ; 0040e0fa
L_0040e0fd:
    mov dword ptr [ebp - 0ch], eax ; 0040e0fd
L_0040e100:
    cmp dword ptr [ebp - 0ch], 0 ; 0040e100
L_0040e104:
    je L_0040e12d ; 0040e104
L_0040e106:
    mov ecx, dword ptr [ebp - 0ch] ; 0040e106
L_0040e109:
    push ecx ; 0040e109
L_0040e10a:
    push 0600000h ; 0040e10a
L_0040e10f:
    push 1 ; 0040e10f
L_0040e111:
    push OFFSET _kb_memory + 14730688 ; 0040e111
L_0040e116:
    call _fread ; 0040e116
L_0040e11b:
    add esp, 010h ; 0040e11b
L_0040e11e:
    mov dword ptr [ebp - 01ch], eax ; 0040e11e
L_0040e121:
    mov edx, dword ptr [ebp - 0ch] ; 0040e121
L_0040e124:
    push edx ; 0040e124
L_0040e125:
    call _fclose ; 0040e125
L_0040e12a:
    add esp, 4 ; 0040e12a
L_0040e12d:
    mov eax, dword ptr [ebp - 01ch] ; 0040e12d
L_0040e130:
    and eax, 0fffffff0h ; 0040e130
L_0040e133:
    mov dword ptr [ebp - 010h], eax ; 0040e133
L_0040e136:
    jmp L_0040e141 ; 0040e136
L_0040e138:
    mov ecx, dword ptr [ebp - 010h] ; 0040e138
L_0040e13b:
    sub ecx, 2 ; 0040e13b
L_0040e13e:
    mov dword ptr [ebp - 010h], ecx ; 0040e13e
L_0040e141:
    mov edx, dword ptr [ebp - 01ch] ; 0040e141
L_0040e144:
    sub edx, 01000h ; 0040e144
L_0040e14a:
    cmp dword ptr [ebp - 010h], edx ; 0040e14a
L_0040e14d:
    jle L_0040e182 ; 0040e14d
L_0040e14f:
    push 0ah ; 0040e14f
L_0040e151:
    push OFFSET _kb_memory + 37208 ; 0040e151
L_0040e156:
    mov eax, dword ptr [ebp - 010h] ; 0040e156
L_0040e159:
    add eax, OFFSET _kb_memory + 14730688 ; 0040e159
L_0040e15e:
    push eax ; 0040e15e
L_0040e15f:
    call _memcmp ; 0040e15f
L_0040e164:
    add esp, 0ch ; 0040e164
L_0040e167:
    test eax, eax ; 0040e167
L_0040e169:
    jne L_0040e180 ; 0040e169
L_0040e16b:
    mov ecx, dword ptr [ebp - 010h] ; 0040e16b
L_0040e16e:
    add ecx, OFFSET _kb_memory + 14730688 ; 0040e16e
L_0040e174:
    mov dword ptr [ebp - 4], ecx ; 0040e174
L_0040e177:
    mov dword ptr [ebp - 014h], 1 ; 0040e177
L_0040e17e:
    jmp L_0040e182 ; 0040e17e
L_0040e180:
    jmp L_0040e138 ; 0040e180
L_0040e182:
    cmp dword ptr [ebp - 014h], 0 ; 0040e182
L_0040e186:
    jne L_0040e192 ; 0040e186
L_0040e188:
    mov eax, 1 ; 0040e188
L_0040e18d:
    jmp L_0040e249 ; 0040e18d
L_0040e192:
    mov edx, dword ptr [ebp - 4] ; 0040e192
L_0040e195:
    mov eax, dword ptr [ebp - 01ch] ; 0040e195
L_0040e198:
    sub eax, dword ptr [edx + 0ah] ; 0040e198
L_0040e19b:
    mov dword ptr [ebp - 8], eax ; 0040e19b
L_0040e19e:
    mov ecx, dword ptr [ebp - 4] ; 0040e19e
L_0040e1a1:
    mov edx, dword ptr [ecx + 0eh] ; 0040e1a1
L_0040e1a4:
    mov eax, dword ptr [ebp - 01ch] ; 0040e1a4
L_0040e1a7:
    lea ecx, [edx + eax - 0800000h] ; 0040e1a7
L_0040e1ae:
    and ecx, 0ffffffh ; 0040e1ae
L_0040e1b4:
    mov dword ptr [ebp - 020h], ecx ; 0040e1b4
L_0040e1b7:
    mov edx, dword ptr [ebp - 4] ; 0040e1b7
L_0040e1ba:
    mov eax, dword ptr [edx + 016h] ; 0040e1ba
L_0040e1bd:
    push eax ; 0040e1bd
L_0040e1be:
    push OFFSET _kb_memory + 50560 ; 0040e1be
L_0040e1c3:
    mov ecx, dword ptr [ebp - 020h] ; 0040e1c3
L_0040e1c6:
    add ecx, OFFSET _kb_memory + 14730688 ; 0040e1c6
L_0040e1cc:
    push ecx ; 0040e1cc
L_0040e1cd:
    call L_0040dfd0 ; 0040e1cd
L_0040e1d2:
    add esp, 0ch ; 0040e1d2
L_0040e1d5:
    mov edx, dword ptr [_kb_memory + 50612] ; 0040e1d5
L_0040e1db:
    add edx, 07fff0000h ; 0040e1db
L_0040e1e1:
    mov dword ptr [ebp - 028h], edx ; 0040e1e1
L_0040e1e4:
    mov eax, dword ptr [_kb_memory + 50604] ; 0040e1e4
L_0040e1e9:
    push eax ; 0040e1e9
L_0040e1ea:
    mov ecx, dword ptr [ebp - 4] ; 0040e1ea
L_0040e1ed:
    mov edx, dword ptr [ecx + 012h] ; 0040e1ed
L_0040e1f0:
    mov eax, dword ptr [ebp - 020h] ; 0040e1f0
L_0040e1f3:
    lea ecx, [eax + edx + _kb_memory + 14730688] ; 0040e1f3
L_0040e1fa:
    push ecx ; 0040e1fa
L_0040e1fb:
    mov edx, dword ptr [ebp - 028h] ; 0040e1fb
L_0040e1fe:
    add edx, OFFSET _kb_memory + 50560 ; 0040e1fe
L_0040e204:
    push edx ; 0040e204
L_0040e205:
    call _memcpy ; 0040e205
L_0040e20a:
    add esp, 0ch ; 0040e20a
L_0040e20d:
    push OFFSET _kb_memory + 37220 ; 0040e20d
L_0040e212:
    mov eax, dword ptr [ebp + 0ch] ; 0040e212
L_0040e215:
    push eax ; 0040e215
L_0040e216:
    call _fopen ; 0040e216
L_0040e21b:
    add esp, 8 ; 0040e21b
L_0040e21e:
    mov dword ptr [ebp - 024h], eax ; 0040e21e
L_0040e221:
    mov ecx, dword ptr [ebp - 024h] ; 0040e221
L_0040e224:
    push ecx ; 0040e224
L_0040e225:
    mov edx, dword ptr [ebp - 4] ; 0040e225
L_0040e228:
    mov eax, dword ptr [edx + 016h] ; 0040e228
L_0040e22b:
    push eax ; 0040e22b
L_0040e22c:
    push 1 ; 0040e22c
L_0040e22e:
    push OFFSET _kb_memory + 50560 ; 0040e22e
L_0040e233:
    call _fwrite ; 0040e233
L_0040e238:
    add esp, 010h ; 0040e238
L_0040e23b:
    mov ecx, dword ptr [ebp - 024h] ; 0040e23b
L_0040e23e:
    push ecx ; 0040e23e
L_0040e23f:
    call _fclose ; 0040e23f
L_0040e244:
    add esp, 4 ; 0040e244
L_0040e247:
    xor eax, eax ; 0040e247
L_0040e249:
    mov esp, ebp ; 0040e249
L_0040e24b:
    pop ebp ; 0040e24b
L_0040e24c:
    retn  ; 0040e24c
L_0040e24d:
    db 0cch
L_0040e24e:
    db 0cch
L_0040e24f:
    db 0cch
L_0040e250:
    mov eax, dword ptr [esp + 4] ; 0040e250
L_0040e254:
    push ebx ; 0040e254
L_0040e255:
    push esi ; 0040e255
L_0040e256:
    push edi ; 0040e256
L_0040e257:
    push ebp ; 0040e257
L_0040e258:
    mov ecx, dword ptr [eax] ; 0040e258
L_0040e25a:
    add ecx, 01800h ; 0040e25a
L_0040e260:
    mov eax, dword ptr [esp + 024h] ; 0040e260
L_0040e264:
    mov esi, dword ptr [esp + 028h] ; 0040e264
L_0040e268:
    mov dword ptr [eax], ecx ; 0040e268
L_0040e26a:
    test esi, esi ; 0040e26a
L_0040e26c:
    jne L_0040e275 ; 0040e26c
L_0040e26e:
    xor eax, eax ; 0040e26e
L_0040e270:
    pop ebp ; 0040e270
L_0040e271:
    pop edi ; 0040e271
L_0040e272:
    pop esi ; 0040e272
L_0040e273:
    pop ebx ; 0040e273
L_0040e274:
    retn  ; 0040e274
L_0040e275:
    mov ebx, dword ptr [esp + 01ch] ; 0040e275
L_0040e279:
    push 02ch ; 0040e279
L_0040e27b:
    mov dword ptr [esi], 0 ; 0040e27b
L_0040e281:
    call ebx ; 0040e281
L_0040e283:
    add esp, 4 ; 0040e283
L_0040e286:
    mov edi, eax ; 0040e286
L_0040e288:
    test edi, edi ; 0040e288
L_0040e28a:
    jne L_0040e296 ; 0040e28a
L_0040e28c:
    mov eax, 1 ; 0040e28c
L_0040e291:
    pop ebp ; 0040e291
L_0040e292:
    pop edi ; 0040e292
L_0040e293:
    pop esi ; 0040e293
L_0040e294:
    pop ebx ; 0040e294
L_0040e295:
    retn  ; 0040e295
L_0040e296:
    push 02efch ; 0040e296
L_0040e29b:
    call ebx ; 0040e29b
L_0040e29d:
    add esp, 4 ; 0040e29d
L_0040e2a0:
    mov dword ptr [edi + 028h], eax ; 0040e2a0
L_0040e2a3:
    test eax, eax ; 0040e2a3
L_0040e2a5:
    jne L_0040e2b9 ; 0040e2a5
L_0040e2a7:
    push edi ; 0040e2a7
L_0040e2a8:
    call dword ptr [esp + 024h] ; 0040e2a8
L_0040e2ac:
    add esp, 4 ; 0040e2ac
L_0040e2af:
    mov eax, 1 ; 0040e2af
L_0040e2b4:
    pop ebp ; 0040e2b4
L_0040e2b5:
    pop edi ; 0040e2b5
L_0040e2b6:
    pop esi ; 0040e2b6
L_0040e2b7:
    pop ebx ; 0040e2b7
L_0040e2b8:
    retn  ; 0040e2b8
L_0040e2b9:
    mov eax, dword ptr [esp + 020h] ; 0040e2b9
L_0040e2bd:
    mov ecx, dword ptr [esp + 02ch] ; 0040e2bd
L_0040e2c1:
    mov edx, dword ptr [esp + 030h] ; 0040e2c1
L_0040e2c5:
    mov dword ptr [edi + 4], ebx ; 0040e2c5
L_0040e2c8:
    mov ebp, dword ptr [esp + 038h] ; 0040e2c8
L_0040e2cc:
    mov dword ptr [edi + 8], eax ; 0040e2cc
L_0040e2cf:
    mov eax, dword ptr [esp + 034h] ; 0040e2cf
L_0040e2d3:
    mov dword ptr [edi + 0ch], ecx ; 0040e2d3
L_0040e2d6:
    mov dword ptr [edi + 010h], edx ; 0040e2d6
L_0040e2d9:
    mov dword ptr [edi + 014h], eax ; 0040e2d9
L_0040e2dc:
    mov eax, dword ptr [esp + 03ch] ; 0040e2dc
L_0040e2e0:
    mov dword ptr [edi + 018h], ebp ; 0040e2e0
L_0040e2e3:
    mov ebp, dword ptr [esp + 014h] ; 0040e2e3
L_0040e2e7:
    mov dword ptr [edi + 01ch], eax ; 0040e2e7
L_0040e2ea:
    mov eax, dword ptr [ebp] ; 0040e2ea
L_0040e2ed:
    mov ebp, dword ptr [esp + 018h] ; 0040e2ed
L_0040e2f1:
    mov dword ptr [edi + 020h], eax ; 0040e2f1
L_0040e2f4:
    mov eax, dword ptr [ebp + 4] ; 0040e2f4
L_0040e2f7:
    mov dword ptr [edi + 024h], eax ; 0040e2f7
L_0040e2fa:
    mov eax, dword ptr [esp + 03ch] ; 0040e2fa
L_0040e2fe:
    push eax ; 0040e2fe
L_0040e2ff:
    mov dword ptr [edi], 04349444ch ; 0040e2ff
L_0040e305:
    mov eax, dword ptr [esp + 03ch] ; 0040e305
L_0040e309:
    push eax ; 0040e309
L_0040e30a:
    mov eax, dword ptr [esp + 03ch] ; 0040e30a
L_0040e30e:
    push eax ; 0040e30e
L_0040e30f:
    push edx ; 0040e30f
L_0040e310:
    push ecx ; 0040e310
L_0040e311:
    mov edx, dword ptr [ebp] ; 0040e311
L_0040e314:
    mov ecx, dword ptr [esp + 034h] ; 0040e314
L_0040e318:
    mov eax, dword ptr [edi + 028h] ; 0040e318
L_0040e31b:
    push ecx ; 0040e31b
L_0040e31c:
    push ebx ; 0040e31c
L_0040e31d:
    push edx ; 0040e31d
L_0040e31e:
    push eax ; 0040e31e
L_0040e31f:
    call L_0040e410 ; 0040e31f
L_0040e324:
    add esp, 024h ; 0040e324
L_0040e327:
    test eax, eax ; 0040e327
L_0040e329:
    jne L_0040e33d ; 0040e329
L_0040e32b:
    push edi ; 0040e32b
L_0040e32c:
    call dword ptr [esp + 024h] ; 0040e32c
L_0040e330:
    add esp, 4 ; 0040e330
L_0040e333:
    mov eax, 1 ; 0040e333
L_0040e338:
    pop ebp ; 0040e338
L_0040e339:
    pop edi ; 0040e339
L_0040e33a:
    pop esi ; 0040e33a
L_0040e33b:
    pop ebx ; 0040e33b
L_0040e33c:
    retn  ; 0040e33c
L_0040e33d:
    xor eax, eax ; 0040e33d
L_0040e33f:
    pop ebp ; 0040e33f
L_0040e340:
    mov dword ptr [esi], edi ; 0040e340
L_0040e342:
    pop edi ; 0040e342
L_0040e343:
    pop esi ; 0040e343
L_0040e344:
    pop ebx ; 0040e344
L_0040e345:
    retn  ; 0040e345
L_0040e346:
    db 0cch
L_0040e347:
    db 0cch
L_0040e348:
    db 0cch
L_0040e349:
    db 0cch
L_0040e34a:
    db 0cch
L_0040e34b:
    db 0cch
L_0040e34c:
    db 0cch
L_0040e34d:
    db 0cch
L_0040e34e:
    db 0cch
L_0040e34f:
    db 0cch
L_0040e350:
    mov ecx, dword ptr [esp + 4] ; 0040e350
L_0040e354:
    sub esp, 4 ; 0040e354
L_0040e357:
    mov dword ptr [esp], 0 ; 0040e357
L_0040e35f:
    push esi ; 0040e35f
L_0040e360:
    cmp dword ptr [ecx], 04349444ch ; 0040e360
L_0040e366:
    je L_0040e372 ; 0040e366
L_0040e368:
    mov eax, 2 ; 0040e368
L_0040e36d:
    pop esi ; 0040e36d
L_0040e36e:
    add esp, 4 ; 0040e36e
L_0040e371:
    retn  ; 0040e371
L_0040e372:
    mov esi, dword ptr [esp + 01ch] ; 0040e372
L_0040e376:
    mov edx, dword ptr [esi] ; 0040e376
L_0040e378:
    cmp dword ptr [ecx + 020h], edx ; 0040e378
L_0040e37b:
    jae L_0040e387 ; 0040e37b
L_0040e37d:
    mov eax, 3 ; 0040e37d
L_0040e382:
    pop esi ; 0040e382
L_0040e383:
    add esp, 4 ; 0040e383
L_0040e386:
    retn  ; 0040e386
L_0040e387:
    lea eax, [esp + 4] ; 0040e387
L_0040e38b:
    push eax ; 0040e38b
L_0040e38c:
    push edx ; 0040e38c
L_0040e38d:
    mov eax, dword ptr [esp + 020h] ; 0040e38d
L_0040e391:
    mov ecx, dword ptr [ecx + 028h] ; 0040e391
L_0040e394:
    push eax ; 0040e394
L_0040e395:
    mov eax, dword ptr [esp + 020h] ; 0040e395
L_0040e399:
    push eax ; 0040e399
L_0040e39a:
    mov eax, dword ptr [esp + 020h] ; 0040e39a
L_0040e39e:
    push eax ; 0040e39e
L_0040e39f:
    push edx ; 0040e39f
L_0040e3a0:
    push ecx ; 0040e3a0
L_0040e3a1:
    call L_0040e4e0 ; 0040e3a1
L_0040e3a6:
    mov ecx, dword ptr [esp + 020h] ; 0040e3a6
L_0040e3aa:
    add esp, 01ch ; 0040e3aa
L_0040e3ad:
    mov dword ptr [esi], ecx ; 0040e3ad
L_0040e3af:
    cmp eax, 1 ; 0040e3af
L_0040e3b2:
    mov eax, 0 ; 0040e3b2
L_0040e3b7:
    pop esi ; 0040e3b7
L_0040e3b8:
    adc eax, -1 ; 0040e3b8
L_0040e3bb:
    add esp, 4 ; 0040e3bb
L_0040e3be:
    and eax, 4 ; 0040e3be
L_0040e3c1:
    retn  ; 0040e3c1
L_0040e3c2:
    db 0cch
L_0040e3c3:
    db 0cch
L_0040e3c4:
    db 0cch
L_0040e3c5:
    db 0cch
L_0040e3c6:
    db 0cch
L_0040e3c7:
    db 0cch
L_0040e3c8:
    db 0cch
L_0040e3c9:
    db 0cch
L_0040e3ca:
    db 0cch
L_0040e3cb:
    db 0cch
L_0040e3cc:
    db 0cch
L_0040e3cd:
    db 0cch
L_0040e3ce:
    db 0cch
L_0040e3cf:
    db 0cch
L_0040e3d0:
    push esi ; 0040e3d0
L_0040e3d1:
    mov esi, dword ptr [esp + 8] ; 0040e3d1
L_0040e3d5:
    cmp dword ptr [esi], 04349444ch ; 0040e3d5
L_0040e3db:
    je L_0040e3e4 ; 0040e3db
L_0040e3dd:
    mov eax, 2 ; 0040e3dd
L_0040e3e2:
    pop esi ; 0040e3e2
L_0040e3e3:
    retn  ; 0040e3e3
L_0040e3e4:
    mov eax, dword ptr [esi + 028h] ; 0040e3e4
L_0040e3e7:
    push eax ; 0040e3e7
L_0040e3e8:
    call L_0040e4a0 ; 0040e3e8
L_0040e3ed:
    add esp, 4 ; 0040e3ed
L_0040e3f0:
    mov dword ptr [esi], 0 ; 0040e3f0
L_0040e3f6:
    mov eax, dword ptr [esi + 028h] ; 0040e3f6
L_0040e3f9:
    push eax ; 0040e3f9
L_0040e3fa:
    call dword ptr [esi + 8] ; 0040e3fa
L_0040e3fd:
    add esp, 4 ; 0040e3fd
L_0040e400:
    push esi ; 0040e400
L_0040e401:
    call dword ptr [esi + 8] ; 0040e401
L_0040e404:
    add esp, 4 ; 0040e404
L_0040e407:
    xor eax, eax ; 0040e407
L_0040e409:
    pop esi ; 0040e409
L_0040e40a:
    retn  ; 0040e40a
L_0040e40b:
    db 0cch
L_0040e40c:
    db 0cch
L_0040e40d:
    db 0cch
L_0040e40e:
    db 0cch
L_0040e40f:
    db 0cch
L_0040e410:
    mov eax, dword ptr [esp + 0ch] ; 0040e410
L_0040e414:
    push esi ; 0040e414
L_0040e415:
    mov esi, dword ptr [esp + 8] ; 0040e415
L_0040e419:
    mov ecx, dword ptr [esp + 014h] ; 0040e419
L_0040e41d:
    mov edx, dword ptr [esp + 01ch] ; 0040e41d
L_0040e421:
    mov dword ptr [esi + 02ee0h], eax ; 0040e421
L_0040e427:
    mov eax, dword ptr [esp + 018h] ; 0040e427
L_0040e42b:
    mov dword ptr [esi + 02ee4h], ecx ; 0040e42b
L_0040e431:
    mov ecx, dword ptr [esp + 020h] ; 0040e431
L_0040e435:
    mov dword ptr [esi + 02ee8h], eax ; 0040e435
L_0040e43b:
    mov eax, dword ptr [esp + 024h] ; 0040e43b
L_0040e43f:
    mov dword ptr [esi + 02eech], edx ; 0040e43f
L_0040e445:
    mov edx, dword ptr [esp + 028h] ; 0040e445
L_0040e449:
    mov dword ptr [esi + 02ef0h], ecx ; 0040e449
L_0040e44f:
    mov ecx, dword ptr [esp + 0ch] ; 0040e44f
L_0040e453:
    mov dword ptr [esi + 02ef4h], eax ; 0040e453
L_0040e459:
    mov dword ptr [esi + 02ef8h], edx ; 0040e459
L_0040e45f:
    mov dword ptr [esi + 4], ecx ; 0040e45f
L_0040e462:
    lea eax, [ecx - 1] ; 0040e462
L_0040e465:
    mov dword ptr [esi + 8], eax ; 0040e465
L_0040e468:
    test ecx, eax ; 0040e468
L_0040e46a:
    je L_0040e470 ; 0040e46a
L_0040e46c:
    xor eax, eax ; 0040e46c
L_0040e46e:
    pop esi ; 0040e46e
L_0040e46f:
    retn  ; 0040e46f
L_0040e470:
    push esi ; 0040e470
L_0040e471:
    call L_0040e550 ; 0040e471
L_0040e476:
    add esp, 4 ; 0040e476
L_0040e479:
    test eax, eax ; 0040e479
L_0040e47b:
    jne L_0040e481 ; 0040e47b
L_0040e47d:
    xor eax, eax ; 0040e47d
L_0040e47f:
    pop esi ; 0040e47f
L_0040e480:
    retn  ; 0040e480
L_0040e481:
    push esi ; 0040e481
L_0040e482:
    call L_0040e4b0 ; 0040e482
L_0040e487:
    add esp, 4 ; 0040e487
L_0040e48a:
    mov eax, 1 ; 0040e48a
L_0040e48f:
    pop esi ; 0040e48f
L_0040e490:
    retn  ; 0040e490
L_0040e491:
    db 0cch
L_0040e492:
    db 0cch
L_0040e493:
    db 0cch
L_0040e494:
    db 0cch
L_0040e495:
    db 0cch
L_0040e496:
    db 0cch
L_0040e497:
    db 0cch
L_0040e498:
    db 0cch
L_0040e499:
    db 0cch
L_0040e49a:
    db 0cch
L_0040e49b:
    db 0cch
L_0040e49c:
    db 0cch
L_0040e49d:
    db 0cch
L_0040e49e:
    db 0cch
L_0040e49f:
    db 0cch
L_0040e4a0:
    mov eax, dword ptr [esp + 4] ; 0040e4a0
L_0040e4a4:
    push eax ; 0040e4a4
L_0040e4a5:
    call L_0040e5b0 ; 0040e4a5
L_0040e4aa:
    add esp, 4 ; 0040e4aa
L_0040e4ad:
    retn  ; 0040e4ad
L_0040e4ae:
    db 0cch
L_0040e4af:
    db 0cch
L_0040e4b0:
    push esi ; 0040e4b0
L_0040e4b1:
    mov esi, dword ptr [esp + 8] ; 0040e4b1
L_0040e4b5:
    push esi ; 0040e4b5
L_0040e4b6:
    call L_0040e5d0 ; 0040e4b6
L_0040e4bb:
    add esp, 4 ; 0040e4bb
L_0040e4be:
    push esi ; 0040e4be
L_0040e4bf:
    call L_0040e630 ; 0040e4bf
L_0040e4c4:
    add esp, 4 ; 0040e4c4
L_0040e4c7:
    push esi ; 0040e4c7
L_0040e4c8:
    call L_0040e680 ; 0040e4c8
L_0040e4cd:
    add esp, 4 ; 0040e4cd
L_0040e4d0:
    mov dword ptr [esi + 02ecch], 0 ; 0040e4d0
L_0040e4da:
    pop esi ; 0040e4da
L_0040e4db:
    retn  ; 0040e4db
L_0040e4dc:
    db 0cch
L_0040e4dd:
    db 0cch
L_0040e4de:
    db 0cch
L_0040e4df:
    db 0cch
L_0040e4e0:
    mov eax, dword ptr [esp + 0ch] ; 0040e4e0
L_0040e4e4:
    push esi ; 0040e4e4
L_0040e4e5:
    mov esi, dword ptr [esp + 8] ; 0040e4e5
L_0040e4e9:
    mov ecx, dword ptr [esp + 018h] ; 0040e4e9
L_0040e4ed:
    push esi ; 0040e4ed
L_0040e4ee:
    mov dword ptr [esi + 02b04h], eax ; 0040e4ee
L_0040e4f4:
    add eax, dword ptr [esp + 018h] ; 0040e4f4
L_0040e4f8:
    mov dword ptr [esi + 02b0ch], ecx ; 0040e4f8
L_0040e4fe:
    add eax, 4 ; 0040e4fe
L_0040e501:
    mov dword ptr [esi + 02b08h], eax ; 0040e501
L_0040e507:
    call L_0040e9e0 ; 0040e507
L_0040e50c:
    mov ecx, dword ptr [esp + 010h] ; 0040e50c
L_0040e510:
    add esp, 4 ; 0040e510
L_0040e513:
    push ecx ; 0040e513
L_0040e514:
    push esi ; 0040e514
L_0040e515:
    call L_0040e6c0 ; 0040e515
L_0040e51a:
    mov ecx, dword ptr [esp + 028h] ; 0040e51a
L_0040e51e:
    add esp, 8 ; 0040e51e
L_0040e521:
    inc dword ptr [esi + 02ecch] ; 0040e521
L_0040e527:
    test eax, eax ; 0040e527
L_0040e529:
    jge L_0040e538 ; 0040e529
L_0040e52b:
    mov eax, 1 ; 0040e52b
L_0040e530:
    pop esi ; 0040e530
L_0040e531:
    mov dword ptr [ecx], 0 ; 0040e531
L_0040e537:
    retn  ; 0040e537
L_0040e538:
    mov dword ptr [ecx], eax ; 0040e538
L_0040e53a:
    add dword ptr [esi + 02b10h], eax ; 0040e53a
L_0040e540:
    xor eax, eax ; 0040e540
L_0040e542:
    pop esi ; 0040e542
L_0040e543:
    retn  ; 0040e543
L_0040e544:
    db 0cch
L_0040e545:
    db 0cch
L_0040e546:
    db 0cch
L_0040e547:
    db 0cch
L_0040e548:
    db 0cch
L_0040e549:
    db 0cch
L_0040e54a:
    db 0cch
L_0040e54b:
    db 0cch
L_0040e54c:
    db 0cch
L_0040e54d:
    db 0cch
L_0040e54e:
    db 0cch
L_0040e54f:
    db 0cch
L_0040e550:
    push ebx ; 0040e550
L_0040e551:
    push esi ; 0040e551
L_0040e552:
    mov esi, dword ptr [esp + 0ch] ; 0040e552
L_0040e556:
    push edi ; 0040e556
L_0040e557:
    mov edi, 4 ; 0040e557
L_0040e55c:
    mov eax, dword ptr [esi + 4] ; 0040e55c
L_0040e55f:
    mov byte ptr [esi + 02eb5h], 4 ; 0040e55f
L_0040e566:
    mov dl, byte ptr [esi + 02eb5h] ; 0040e566
L_0040e56c:
    mov ebx, 1 ; 0040e56c
L_0040e571:
    xor ecx, ecx ; 0040e571
L_0040e573:
    mov cl, dl ; 0040e573
L_0040e575:
    inc dl ; 0040e575
L_0040e577:
    mov byte ptr [esi + 02eb5h], dl ; 0040e577
L_0040e57d:
    mov cl, byte ptr [ecx + _kb_rdata + 6592] ; 0040e57d
L_0040e583:
    shl ebx, cl ; 0040e583
L_0040e585:
    add edi, ebx ; 0040e585
L_0040e587:
    cmp edi, eax ; 0040e587
L_0040e589:
    jb L_0040e566 ; 0040e589
L_0040e58b:
    add eax, 0105h ; 0040e58b
L_0040e590:
    push eax ; 0040e590
L_0040e591:
    call dword ptr [esi + 02ee0h] ; 0040e591
L_0040e597:
    add esp, 4 ; 0040e597
L_0040e59a:
    mov dword ptr [esi], eax ; 0040e59a
L_0040e59c:
    cmp eax, 1 ; 0040e59c
L_0040e59f:
    pop edi ; 0040e59f
L_0040e5a0:
    sbb eax, eax ; 0040e5a0
L_0040e5a2:
    pop esi ; 0040e5a2
L_0040e5a3:
    inc eax ; 0040e5a3
L_0040e5a4:
    pop ebx ; 0040e5a4
L_0040e5a5:
    retn  ; 0040e5a5
L_0040e5a6:
    db 0cch
L_0040e5a7:
    db 0cch
L_0040e5a8:
    db 0cch
L_0040e5a9:
    db 0cch
L_0040e5aa:
    db 0cch
L_0040e5ab:
    db 0cch
L_0040e5ac:
    db 0cch
L_0040e5ad:
    db 0cch
L_0040e5ae:
    db 0cch
L_0040e5af:
    db 0cch
L_0040e5b0:
    push esi ; 0040e5b0
L_0040e5b1:
    mov esi, dword ptr [esp + 8] ; 0040e5b1
L_0040e5b5:
    mov eax, dword ptr [esi] ; 0040e5b5
L_0040e5b7:
    test eax, eax ; 0040e5b7
L_0040e5b9:
    je L_0040e5cb ; 0040e5b9
L_0040e5bb:
    push eax ; 0040e5bb
L_0040e5bc:
    call dword ptr [esi + 02ee4h] ; 0040e5bc
L_0040e5c2:
    add esp, 4 ; 0040e5c2
L_0040e5c5:
    mov dword ptr [esi], 0 ; 0040e5c5
L_0040e5cb:
    pop esi ; 0040e5cb
L_0040e5cc:
    retn  ; 0040e5cc
L_0040e5cd:
    db 0cch
L_0040e5ce:
    db 0cch
L_0040e5cf:
    db 0cch
L_0040e5d0:
    mov edx, dword ptr [esp + 4] ; 0040e5d0
L_0040e5d4:
    push edi ; 0040e5d4
L_0040e5d5:
    xor eax, eax ; 0040e5d5
L_0040e5d7:
    lea edi, [edx + 0a18h] ; 0040e5d7
L_0040e5dd:
    mov al, byte ptr [edx + 02eb5h] ; 0040e5dd
L_0040e5e3:
    lea ecx, [eax*8 + 0100h] ; 0040e5e3
L_0040e5ea:
    xor eax, eax ; 0040e5ea
L_0040e5ec:
    shr ecx, 2 ; 0040e5ec
L_0040e5ef:
    rep stosd  ; 0040e5ef
L_0040e5f1:
    mov al, byte ptr [edx + 02eb5h] ; 0040e5f1
L_0040e5f7:
    lea edi, [edx + 02b14h] ; 0040e5f7
L_0040e5fd:
    lea ecx, [eax*8 + 0100h] ; 0040e5fd
L_0040e604:
    xor eax, eax ; 0040e604
L_0040e606:
    shr ecx, 2 ; 0040e606
L_0040e609:
    rep stosd  ; 0040e609
L_0040e60b:
    lea edi, [edx + 0cb8h] ; 0040e60b
L_0040e611:
    mov ecx, 03eh ; 0040e611
L_0040e616:
    rep stosd  ; 0040e616
L_0040e618:
    stosb  ; 0040e618
L_0040e619:
    lea edi, [edx + 02db4h] ; 0040e619
L_0040e61f:
    mov ecx, 03eh ; 0040e61f
L_0040e624:
    rep stosd  ; 0040e624
L_0040e626:
    stosb  ; 0040e626
L_0040e627:
    pop edi ; 0040e627
L_0040e628:
    retn  ; 0040e628
L_0040e629:
    db 0cch
L_0040e62a:
    db 0cch
L_0040e62b:
    db 0cch
L_0040e62c:
    db 0cch
L_0040e62d:
    db 0cch
L_0040e62e:
    db 0cch
L_0040e62f:
    db 0cch
L_0040e630:
    mov eax, dword ptr [esp + 4] ; 0040e630
L_0040e634:
    mov ecx, 1 ; 0040e634
L_0040e639:
    xor edx, edx ; 0040e639
L_0040e63b:
    mov dword ptr [eax + 0ch], ecx ; 0040e63b
L_0040e63e:
    mov dword ptr [eax + 010h], ecx ; 0040e63e
L_0040e641:
    mov dword ptr [eax + 014h], ecx ; 0040e641
L_0040e644:
    mov dword ptr [eax + 02ec0h], edx ; 0040e644
L_0040e64a:
    mov dword ptr [eax + 02b10h], edx ; 0040e64a
L_0040e650:
    mov dword ptr [eax + 02edch], ecx ; 0040e650
L_0040e656:
    mov dword ptr [eax + 02ed4h], edx ; 0040e656
L_0040e65c:
    mov dword ptr [eax + 02ed8h], edx ; 0040e65c
L_0040e662:
    mov dword ptr [eax + 02eb8h], ecx ; 0040e662
L_0040e668:
    mov dword ptr [eax + 02ec4h], edx ; 0040e668
L_0040e66e:
    mov dword ptr [eax + 02ebch], edx ; 0040e66e
L_0040e674:
    retn  ; 0040e674
L_0040e675:
    db 0cch
L_0040e676:
    db 0cch
L_0040e677:
    db 0cch
L_0040e678:
    db 0cch
L_0040e679:
    db 0cch
L_0040e67a:
    db 0cch
L_0040e67b:
    db 0cch
L_0040e67c:
    db 0cch
L_0040e67d:
    db 0cch
L_0040e67e:
    db 0cch
L_0040e67f:
    db 0cch
L_0040e680:
    mov eax, dword ptr [esp + 4] ; 0040e680
L_0040e684:
    mov dword ptr [eax + 02ec8h], 0 ; 0040e684
L_0040e68e:
    retn  ; 0040e68e
L_0040e68f:
    db 0cch
L_0040e690:
    mov eax, dword ptr [esp + 0ch] ; 0040e690
L_0040e694:
    push esi ; 0040e694
L_0040e695:
    mov esi, dword ptr [esp + 8] ; 0040e695
L_0040e699:
    push eax ; 0040e699
L_0040e69a:
    mov ecx, dword ptr [esp + 010h] ; 0040e69a
L_0040e69e:
    mov edx, dword ptr [esi + 02ec4h] ; 0040e69e
L_0040e6a4:
    push ecx ; 0040e6a4
L_0040e6a5:
    mov eax, dword ptr [esi + 02ec8h] ; 0040e6a5
L_0040e6ab:
    push edx ; 0040e6ab
L_0040e6ac:
    push eax ; 0040e6ac
L_0040e6ad:
    call L_0040eae4 ; 0040e6ad
L_0040e6b2:
    add esp, 010h ; 0040e6b2
L_0040e6b5:
    mov dword ptr [esi + 02ec8h], eax ; 0040e6b5
L_0040e6bb:
    pop esi ; 0040e6bb
L_0040e6bc:
    retn  ; 0040e6bc
L_0040e6bd:
    db 0cch
L_0040e6be:
    db 0cch
L_0040e6bf:
    db 0cch
L_0040e6c0:
    sub esp, 4 ; 0040e6c0
L_0040e6c3:
    mov dword ptr [esp], 0 ; 0040e6c3
L_0040e6cb:
    push ebx ; 0040e6cb
L_0040e6cc:
    push esi ; 0040e6cc
L_0040e6cd:
    mov ebx, dword ptr [esp + 010h] ; 0040e6cd
L_0040e6d1:
    push edi ; 0040e6d1
L_0040e6d2:
    push ebp ; 0040e6d2
L_0040e6d3:
    mov ebp, dword ptr [esp + 01ch] ; 0040e6d3
L_0040e6d7:
    test ebp, ebp ; 0040e6d7
L_0040e6d9:
    jle L_0040e8f1 ; 0040e6d9
L_0040e6df:
    cmp dword ptr [ebx + 02edch], 1 ; 0040e6df
L_0040e6e6:
    jne L_0040e84f ; 0040e6e6
L_0040e6ec:
    cmp dword ptr [ebx + 02eb8h], 0 ; 0040e6ec
L_0040e6f3:
    je L_0040e73d ; 0040e6f3
L_0040e6f5:
    mov dword ptr [ebx + 02eb8h], 0 ; 0040e6f5
L_0040e6ff:
    push 1 ; 0040e6ff
L_0040e701:
    push ebx ; 0040e701
L_0040e702:
    call L_0040eac0 ; 0040e702
L_0040e707:
    add esp, 8 ; 0040e707
L_0040e70a:
    test eax, eax ; 0040e70a
L_0040e70c:
    je L_0040e733 ; 0040e70c
L_0040e70e:
    push 010h ; 0040e70e
L_0040e710:
    push ebx ; 0040e710
L_0040e711:
    call L_0040eac0 ; 0040e711
L_0040e716:
    add esp, 8 ; 0040e716
L_0040e719:
    mov esi, eax ; 0040e719
L_0040e71b:
    shl esi, 010h ; 0040e71b
L_0040e71e:
    push 010h ; 0040e71e
L_0040e720:
    push ebx ; 0040e720
L_0040e721:
    call L_0040eac0 ; 0040e721
L_0040e726:
    add esp, 8 ; 0040e726
L_0040e729:
    or esi, eax ; 0040e729
L_0040e72b:
    mov dword ptr [ebx + 02ec4h], esi ; 0040e72b
L_0040e731:
    jmp L_0040e73d ; 0040e731
L_0040e733:
    mov dword ptr [ebx + 02ec4h], 0 ; 0040e733
L_0040e73d:
    cmp dword ptr [ebx + 02ed8h], 3 ; 0040e73d
L_0040e744:
    jne L_0040e777 ; 0040e744
L_0040e746:
    test byte ptr [ebx + 02ed0h], 1 ; 0040e746
L_0040e74d:
    je L_0040e764 ; 0040e74d
L_0040e74f:
    mov eax, dword ptr [ebx + 02b04h] ; 0040e74f
L_0040e755:
    cmp dword ptr [ebx + 02b08h], eax ; 0040e755
L_0040e75b:
    jbe L_0040e764 ; 0040e75b
L_0040e75d:
    inc eax ; 0040e75d
L_0040e75e:
    mov dword ptr [ebx + 02b04h], eax ; 0040e75e
L_0040e764:
    mov dword ptr [ebx + 02ed8h], 0 ; 0040e764
L_0040e76e:
    push ebx ; 0040e76e
L_0040e76f:
    call L_0040e990 ; 0040e76f
L_0040e774:
    add esp, 4 ; 0040e774
L_0040e777:
    push 3 ; 0040e777
L_0040e779:
    push ebx ; 0040e779
L_0040e77a:
    call L_0040eac0 ; 0040e77a
L_0040e77f:
    add esp, 8 ; 0040e77f
L_0040e782:
    mov dword ptr [ebx + 02ed8h], eax ; 0040e782
L_0040e788:
    push 8 ; 0040e788
L_0040e78a:
    push ebx ; 0040e78a
L_0040e78b:
    call L_0040eac0 ; 0040e78b
L_0040e790:
    add esp, 8 ; 0040e790
L_0040e793:
    mov esi, eax ; 0040e793
L_0040e795:
    push 8 ; 0040e795
L_0040e797:
    push ebx ; 0040e797
L_0040e798:
    call L_0040eac0 ; 0040e798
L_0040e79d:
    shl esi, 8 ; 0040e79d
L_0040e7a0:
    add esp, 8 ; 0040e7a0
L_0040e7a3:
    add esi, eax ; 0040e7a3
L_0040e7a5:
    mov edi, eax ; 0040e7a5
L_0040e7a7:
    shl esi, 8 ; 0040e7a7
L_0040e7aa:
    push 8 ; 0040e7aa
L_0040e7ac:
    push ebx ; 0040e7ac
L_0040e7ad:
    call L_0040eac0 ; 0040e7ad
L_0040e7b2:
    add esp, 8 ; 0040e7b2
L_0040e7b5:
    add eax, esi ; 0040e7b5
L_0040e7b7:
    mov dword ptr [ebx + 02ed0h], eax ; 0040e7b7
L_0040e7bd:
    mov dword ptr [ebx + 02ed4h], eax ; 0040e7bd
L_0040e7c3:
    cmp dword ptr [ebx + 02ed8h], 2 ; 0040e7c3
L_0040e7ca:
    jne L_0040e7d5 ; 0040e7ca
L_0040e7cc:
    push ebx ; 0040e7cc
L_0040e7cd:
    call L_0040ef50 ; 0040e7cd
L_0040e7d2:
    add esp, 4 ; 0040e7d2
L_0040e7d5:
    mov eax, dword ptr [ebx + 02ed8h] ; 0040e7d5
L_0040e7db:
    cmp eax, 1 ; 0040e7db
L_0040e7de:
    je L_0040e808 ; 0040e7de
L_0040e7e0:
    cmp eax, 2 ; 0040e7e0
L_0040e7e3:
    je L_0040e808 ; 0040e7e3
L_0040e7e5:
    cmp eax, 3 ; 0040e7e5
L_0040e7e8:
    jne L_0040e8ca ; 0040e7e8
L_0040e7ee:
    push ebx ; 0040e7ee
L_0040e7ef:
    call L_0040f020 ; 0040e7ef
L_0040e7f4:
    add esp, 4 ; 0040e7f4
L_0040e7f7:
    test eax, eax ; 0040e7f7
L_0040e7f9:
    jne L_0040e845 ; 0040e7f9
L_0040e7fb:
    mov eax, 0ffffffffh ; 0040e7fb
L_0040e800:
    pop ebp ; 0040e800
L_0040e801:
    pop edi ; 0040e801
L_0040e802:
    pop esi ; 0040e802
L_0040e803:
    pop ebx ; 0040e803
L_0040e804:
    add esp, 4 ; 0040e804
L_0040e807:
    retn  ; 0040e807
L_0040e808:
    xor eax, eax ; 0040e808
L_0040e80a:
    lea esi, [ebx + 0a18h] ; 0040e80a
L_0040e810:
    mov al, byte ptr [ebx + 02eb5h] ; 0040e810
L_0040e816:
    lea edi, [ebx + 02b14h] ; 0040e816
L_0040e81c:
    lea ecx, [eax*8 + 0100h] ; 0040e81c
L_0040e823:
    shr ecx, 2 ; 0040e823
L_0040e826:
    rep movsd  ; 0040e826
L_0040e828:
    lea esi, [ebx + 0cb8h] ; 0040e828
L_0040e82e:
    lea edi, [ebx + 02db4h] ; 0040e82e
L_0040e834:
    mov ecx, 03eh ; 0040e834
L_0040e839:
    push ebx ; 0040e839
L_0040e83a:
    rep movsd  ; 0040e83a
L_0040e83c:
    movsb  ; 0040e83c
L_0040e83d:
    call L_0040ec00 ; 0040e83d
L_0040e842:
    add esp, 4 ; 0040e842
L_0040e845:
    mov dword ptr [ebx + 02edch], 2 ; 0040e845
L_0040e84f:
    cmp dword ptr [ebx + 02ed4h], 0 ; 0040e84f
L_0040e856:
    jle L_0040e8a7 ; 0040e856
L_0040e858:
    test ebp, ebp ; 0040e858
L_0040e85a:
    jle L_0040e8a0 ; 0040e85a
L_0040e85c:
    mov esi, dword ptr [ebx + 02ed4h] ; 0040e85c
L_0040e862:
    cmp esi, ebp ; 0040e862
L_0040e864:
    jl L_0040e868 ; 0040e864
L_0040e866:
    mov esi, ebp ; 0040e866
L_0040e868:
    test esi, esi ; 0040e868
L_0040e86a:
    je L_0040e8d7 ; 0040e86a
L_0040e86c:
    push esi ; 0040e86c
L_0040e86d:
    mov eax, dword ptr [ebx + 02ec0h] ; 0040e86d
L_0040e873:
    push eax ; 0040e873
L_0040e874:
    mov ecx, dword ptr [ebx + 02ed8h] ; 0040e874
L_0040e87a:
    push ecx ; 0040e87a
L_0040e87b:
    push ebx ; 0040e87b
L_0040e87c:
    call L_0040e920 ; 0040e87c
L_0040e881:
    add esp, 010h ; 0040e881
L_0040e884:
    test eax, eax ; 0040e884
L_0040e886:
    jne L_0040e8e4 ; 0040e886
L_0040e888:
    mov eax, dword ptr [ebx + 02ed4h] ; 0040e888
L_0040e88e:
    sub ebp, esi ; 0040e88e
L_0040e890:
    sub eax, esi ; 0040e890
L_0040e892:
    add dword ptr [esp + 010h], esi ; 0040e892
L_0040e896:
    mov dword ptr [ebx + 02ed4h], eax ; 0040e896
L_0040e89c:
    test eax, eax ; 0040e89c
L_0040e89e:
    jg L_0040e858 ; 0040e89e
L_0040e8a0:
    cmp dword ptr [ebx + 02ed4h], 0 ; 0040e8a0
L_0040e8a7:
    jne L_0040e8b3 ; 0040e8a7
L_0040e8a9:
    mov dword ptr [ebx + 02edch], 1 ; 0040e8a9
L_0040e8b3:
    test ebp, ebp ; 0040e8b3
L_0040e8b5:
    jne L_0040e8c2 ; 0040e8b5
L_0040e8b7:
    push ebx ; 0040e8b7
L_0040e8b8:
    call L_0040e990 ; 0040e8b8
L_0040e8bd:
    add esp, 4 ; 0040e8bd
L_0040e8c0:
    test ebp, ebp ; 0040e8c0
L_0040e8c2:
    jg L_0040e6df ; 0040e8c2
L_0040e8c8:
    jmp L_0040e8f1 ; 0040e8c8
L_0040e8ca:
    mov eax, 0ffffffffh ; 0040e8ca
L_0040e8cf:
    pop ebp ; 0040e8cf
L_0040e8d0:
    pop edi ; 0040e8d0
L_0040e8d1:
    pop esi ; 0040e8d1
L_0040e8d2:
    pop ebx ; 0040e8d2
L_0040e8d3:
    add esp, 4 ; 0040e8d3
L_0040e8d6:
    retn  ; 0040e8d6
L_0040e8d7:
    mov eax, 0ffffffffh ; 0040e8d7
L_0040e8dc:
    pop ebp ; 0040e8dc
L_0040e8dd:
    pop edi ; 0040e8dd
L_0040e8de:
    pop esi ; 0040e8de
L_0040e8df:
    pop ebx ; 0040e8df
L_0040e8e0:
    add esp, 4 ; 0040e8e0
L_0040e8e3:
    retn  ; 0040e8e3
L_0040e8e4:
    mov eax, 0ffffffffh ; 0040e8e4
L_0040e8e9:
    pop ebp ; 0040e8e9
L_0040e8ea:
    pop edi ; 0040e8ea
L_0040e8eb:
    pop esi ; 0040e8eb
L_0040e8ec:
    pop ebx ; 0040e8ec
L_0040e8ed:
    add esp, 4 ; 0040e8ed
L_0040e8f0:
    retn  ; 0040e8f0
L_0040e8f1:
    mov eax, dword ptr [ebx + 02ec0h] ; 0040e8f1
L_0040e8f7:
    test eax, eax ; 0040e8f7
L_0040e8f9:
    jne L_0040e8fe ; 0040e8f9
L_0040e8fb:
    mov eax, dword ptr [ebx + 4] ; 0040e8fb
L_0040e8fe:
    sub eax, dword ptr [esp + 010h] ; 0040e8fe
L_0040e902:
    add eax, dword ptr [ebx] ; 0040e902
L_0040e904:
    push eax ; 0040e904
L_0040e905:
    mov eax, dword ptr [esp + 014h] ; 0040e905
L_0040e909:
    push eax ; 0040e909
L_0040e90a:
    push ebx ; 0040e90a
L_0040e90b:
    call L_0040ebb0 ; 0040e90b
L_0040e910:
    mov eax, dword ptr [esp + 01ch] ; 0040e910
L_0040e914:
    add esp, 0ch ; 0040e914
L_0040e917:
    pop ebp ; 0040e917
L_0040e918:
    pop edi ; 0040e918
L_0040e919:
    pop esi ; 0040e919
L_0040e91a:
    pop ebx ; 0040e91a
L_0040e91b:
    add esp, 4 ; 0040e91b
L_0040e91e:
    retn  ; 0040e91e
L_0040e91f:
    db 0cch
L_0040e920:
    mov eax, dword ptr [esp + 8] ; 0040e920
L_0040e924:
    cmp eax, 2 ; 0040e924
L_0040e927:
    jne L_0040e941 ; 0040e927
L_0040e929:
    mov eax, dword ptr [esp + 010h] ; 0040e929
L_0040e92d:
    mov ecx, dword ptr [esp + 0ch] ; 0040e92d
L_0040e931:
    mov edx, dword ptr [esp + 4] ; 0040e931
L_0040e935:
    push eax ; 0040e935
L_0040e936:
    push ecx ; 0040e936
L_0040e937:
    push edx ; 0040e937
L_0040e938:
    call L_0040f700 ; 0040e938
L_0040e93d:
    add esp, 0ch ; 0040e93d
L_0040e940:
    retn  ; 0040e940
L_0040e941:
    cmp eax, 1 ; 0040e941
L_0040e944:
    jne L_0040e95e ; 0040e944
L_0040e946:
    mov eax, dword ptr [esp + 010h] ; 0040e946
L_0040e94a:
    mov ecx, dword ptr [esp + 0ch] ; 0040e94a
L_0040e94e:
    mov edx, dword ptr [esp + 4] ; 0040e94e
L_0040e952:
    push eax ; 0040e952
L_0040e953:
    push ecx ; 0040e953
L_0040e954:
    push edx ; 0040e954
L_0040e955:
    call L_0040f090 ; 0040e955
L_0040e95a:
    add esp, 0ch ; 0040e95a
L_0040e95d:
    retn  ; 0040e95d
L_0040e95e:
    cmp eax, 3 ; 0040e95e
L_0040e961:
    jne L_0040e97b ; 0040e961
L_0040e963:
    mov eax, dword ptr [esp + 010h] ; 0040e963
L_0040e967:
    mov ecx, dword ptr [esp + 0ch] ; 0040e967
L_0040e96b:
    mov edx, dword ptr [esp + 4] ; 0040e96b
L_0040e96f:
    push eax ; 0040e96f
L_0040e970:
    push ecx ; 0040e970
L_0040e971:
    push edx ; 0040e971
L_0040e972:
    call L_0040efa0 ; 0040e972
L_0040e977:
    add esp, 0ch ; 0040e977
L_0040e97a:
    retn  ; 0040e97a
L_0040e97b:
    mov eax, 0ffffffffh ; 0040e97b
L_0040e980:
    retn  ; 0040e980
L_0040e981:
    db 0cch
L_0040e982:
    db 0cch
L_0040e983:
    db 0cch
L_0040e984:
    db 0cch
L_0040e985:
    db 0cch
L_0040e986:
    db 0cch
L_0040e987:
    db 0cch
L_0040e988:
    db 0cch
L_0040e989:
    db 0cch
L_0040e98a:
    db 0cch
L_0040e98b:
    db 0cch
L_0040e98c:
    db 0cch
L_0040e98d:
    db 0cch
L_0040e98e:
    db 0cch
L_0040e98f:
    db 0cch
L_0040e990:
    mov eax, dword ptr [esp + 4] ; 0040e990
L_0040e994:
    push ebx ; 0040e994
L_0040e995:
    cmp dword ptr [eax + 02ed8h], 3 ; 0040e995
L_0040e99c:
    je L_0040e9dc ; 0040e99c
L_0040e99e:
    mov ecx, dword ptr [eax + 02b04h] ; 0040e99e
L_0040e9a4:
    xor edx, edx ; 0040e9a4
L_0040e9a6:
    xor ebx, ebx ; 0040e9a6
L_0040e9a8:
    mov dl, byte ptr [ecx + 1] ; 0040e9a8
L_0040e9ab:
    shl edx, 010h ; 0040e9ab
L_0040e9ae:
    mov bl, byte ptr [ecx + 3] ; 0040e9ae
L_0040e9b1:
    or edx, ebx ; 0040e9b1
L_0040e9b3:
    xor ebx, ebx ; 0040e9b3
L_0040e9b5:
    shl edx, 8 ; 0040e9b5
L_0040e9b8:
    mov bl, byte ptr [ecx + 2] ; 0040e9b8
L_0040e9bb:
    or edx, ebx ; 0040e9bb
L_0040e9bd:
    xor ebx, ebx ; 0040e9bd
L_0040e9bf:
    mov bl, byte ptr [ecx] ; 0040e9bf
L_0040e9c1:
    add ecx, 4 ; 0040e9c1
L_0040e9c4:
    shl ebx, 010h ; 0040e9c4
L_0040e9c7:
    mov dword ptr [eax + 02b04h], ecx ; 0040e9c7
L_0040e9cd:
    mov byte ptr [eax + 02eb4h], 010h ; 0040e9cd
L_0040e9d4:
    or edx, ebx ; 0040e9d4
L_0040e9d6:
    mov dword ptr [eax + 02eb0h], edx ; 0040e9d6
L_0040e9dc:
    pop ebx ; 0040e9dc
L_0040e9dd:
    retn  ; 0040e9dd
L_0040e9de:
    db 0cch
L_0040e9df:
    db 0cch
L_0040e9e0:
    mov eax, dword ptr [esp + 4] ; 0040e9e0
L_0040e9e4:
    push eax ; 0040e9e4
L_0040e9e5:
    call L_0040e990 ; 0040e9e5
L_0040e9ea:
    add esp, 4 ; 0040e9ea
L_0040e9ed:
    retn  ; 0040e9ed
L_0040e9ee:
    db 0cch
L_0040e9ef:
    db 0cch
L_0040e9f0:
    mov cl, byte ptr [esp + 8] ; 0040e9f0
L_0040e9f4:
    push ebx ; 0040e9f4
L_0040e9f5:
    push esi ; 0040e9f5
L_0040e9f6:
    push edi ; 0040e9f6
L_0040e9f7:
    mov esi, dword ptr [esp + 010h] ; 0040e9f7
L_0040e9fb:
    push ebp ; 0040e9fb
L_0040e9fc:
    mov ebx, dword ptr [esi + 02eb0h] ; 0040e9fc
L_0040ea02:
    mov al, byte ptr [esi + 02eb4h] ; 0040ea02
L_0040ea08:
    shl ebx, cl ; 0040ea08
L_0040ea0a:
    sub al, cl ; 0040ea0a
L_0040ea0c:
    mov dword ptr [esi + 02eb0h], ebx ; 0040ea0c
L_0040ea12:
    mov byte ptr [esi + 02eb4h], al ; 0040ea12
L_0040ea18:
    test al, al ; 0040ea18
L_0040ea1a:
    jg L_0040eab0 ; 0040ea1a
L_0040ea20:
    mov edi, dword ptr [esi + 02b04h] ; 0040ea20
L_0040ea26:
    mov ebp, dword ptr [esi + 02b08h] ; 0040ea26
L_0040ea2c:
    cmp edi, ebp ; 0040ea2c
L_0040ea2e:
    jb L_0040ea3f ; 0040ea2e
L_0040ea30:
    mov dword ptr [esi + 02ebch], 1 ; 0040ea30
L_0040ea3a:
    pop ebp ; 0040ea3a
L_0040ea3b:
    pop edi ; 0040ea3b
L_0040ea3c:
    pop esi ; 0040ea3c
L_0040ea3d:
    pop ebx ; 0040ea3d
L_0040ea3e:
    retn  ; 0040ea3e
L_0040ea3f:
    xor edx, edx ; 0040ea3f
L_0040ea41:
    xor ecx, ecx ; 0040ea41
L_0040ea43:
    mov dl, byte ptr [edi + 1] ; 0040ea43
L_0040ea46:
    mov cl, byte ptr [edi] ; 0040ea46
L_0040ea48:
    shl edx, 8 ; 0040ea48
L_0040ea4b:
    add edi, 2 ; 0040ea4b
L_0040ea4e:
    or edx, ecx ; 0040ea4e
L_0040ea50:
    mov dword ptr [esi + 02b04h], edi ; 0040ea50
L_0040ea56:
    mov cl, al ; 0040ea56
L_0040ea58:
    add al, 010h ; 0040ea58
L_0040ea5a:
    neg cl ; 0040ea5a
L_0040ea5c:
    shl edx, cl ; 0040ea5c
L_0040ea5e:
    or edx, ebx ; 0040ea5e
L_0040ea60:
    mov byte ptr [esi + 02eb4h], al ; 0040ea60
L_0040ea66:
    mov dword ptr [esi + 02eb0h], edx ; 0040ea66
L_0040ea6c:
    test al, al ; 0040ea6c
L_0040ea6e:
    jg L_0040eab0 ; 0040ea6e
L_0040ea70:
    cmp edi, ebp ; 0040ea70
L_0040ea72:
    jb L_0040ea83 ; 0040ea72
L_0040ea74:
    mov dword ptr [esi + 02ebch], 1 ; 0040ea74
L_0040ea7e:
    pop ebp ; 0040ea7e
L_0040ea7f:
    pop edi ; 0040ea7f
L_0040ea80:
    pop esi ; 0040ea80
L_0040ea81:
    pop ebx ; 0040ea81
L_0040ea82:
    retn  ; 0040ea82
L_0040ea83:
    xor ebx, ebx ; 0040ea83
L_0040ea85:
    xor ecx, ecx ; 0040ea85
L_0040ea87:
    mov bl, byte ptr [edi + 1] ; 0040ea87
L_0040ea8a:
    mov cl, byte ptr [edi] ; 0040ea8a
L_0040ea8c:
    shl ebx, 8 ; 0040ea8c
L_0040ea8f:
    add edi, 2 ; 0040ea8f
L_0040ea92:
    or ebx, ecx ; 0040ea92
L_0040ea94:
    mov dword ptr [esi + 02b04h], edi ; 0040ea94
L_0040ea9a:
    mov cl, al ; 0040ea9a
L_0040ea9c:
    add al, 010h ; 0040ea9c
L_0040ea9e:
    neg cl ; 0040ea9e
L_0040eaa0:
    shl ebx, cl ; 0040eaa0
L_0040eaa2:
    or ebx, edx ; 0040eaa2
L_0040eaa4:
    mov byte ptr [esi + 02eb4h], al ; 0040eaa4
L_0040eaaa:
    mov dword ptr [esi + 02eb0h], ebx ; 0040eaaa
L_0040eab0:
    pop ebp ; 0040eab0
L_0040eab1:
    pop edi ; 0040eab1
L_0040eab2:
    pop esi ; 0040eab2
L_0040eab3:
    pop ebx ; 0040eab3
L_0040eab4:
    retn  ; 0040eab4
L_0040eab5:
    db 0cch
L_0040eab6:
    db 0cch
L_0040eab7:
    db 0cch
L_0040eab8:
    db 0cch
L_0040eab9:
    db 0cch
L_0040eaba:
    db 0cch
L_0040eabb:
    db 0cch
L_0040eabc:
    db 0cch
L_0040eabd:
    db 0cch
L_0040eabe:
    db 0cch
L_0040eabf:
    db 0cch
L_0040eac0:
    mov eax, dword ptr [esp + 4] ; 0040eac0
L_0040eac4:
    push esi ; 0040eac4
L_0040eac5:
    mov cl, 020h ; 0040eac5
L_0040eac7:
    mov edx, dword ptr [esp + 0ch] ; 0040eac7
L_0040eacb:
    mov esi, dword ptr [eax + 02eb0h] ; 0040eacb
L_0040ead1:
    sub cl, dl ; 0040ead1
L_0040ead3:
    shr esi, cl ; 0040ead3
L_0040ead5:
    push edx ; 0040ead5
L_0040ead6:
    push eax ; 0040ead6
L_0040ead7:
    call L_0040e9f0 ; 0040ead7
L_0040eadc:
    add esp, 8 ; 0040eadc
L_0040eadf:
    mov eax, esi ; 0040eadf
L_0040eae1:
    pop esi ; 0040eae1
L_0040eae2:
    retn  ; 0040eae2
L_0040eae3:
    db 0cch
L_0040eae4:
    push ebx ; 0040eae4
L_0040eae5:
    push ecx ; 0040eae5
L_0040eae6:
    push edx ; 0040eae6
L_0040eae7:
    push esi ; 0040eae7
L_0040eae8:
    push edi ; 0040eae8
L_0040eae9:
    push ebp ; 0040eae9
L_0040eaea:
    mov edx, dword ptr [esp + 028h] ; 0040eaea
L_0040eaee:
    cmp edx, 6 ; 0040eaee
L_0040eaf1:
    jge L_0040eb00 ; 0040eaf1
L_0040eaf3:
    add edx, dword ptr [esp + 01ch] ; 0040eaf3
L_0040eaf7:
    mov eax, edx ; 0040eaf7
L_0040eaf9:
    pop ebp ; 0040eaf9
L_0040eafa:
    pop edi ; 0040eafa
L_0040eafb:
    pop esi ; 0040eafb
L_0040eafc:
    pop edx ; 0040eafc
L_0040eafd:
    pop ecx ; 0040eafd
L_0040eafe:
    pop ebx ; 0040eafe
L_0040eaff:
    retn  ; 0040eaff
L_0040eb00:
    mov ebp, dword ptr [esp + 020h] ; 0040eb00
L_0040eb04:
    mov ebx, 0e8h ; 0040eb04
L_0040eb09:
    mov esi, dword ptr [esp + 01ch] ; 0040eb09
L_0040eb0d:
    mov ecx, dword ptr [esp + 024h] ; 0040eb0d
L_0040eb11:
    mov edi, esi ; 0040eb11
L_0040eb13:
    add edi, edx ; 0040eb13
L_0040eb15:
    sub edi, 6 ; 0040eb15
L_0040eb18:
    sub esp, 6 ; 0040eb18
L_0040eb1b:
    mov eax, ecx ; 0040eb1b
L_0040eb1d:
    add eax, edx ; 0040eb1d
L_0040eb1f:
    sub eax, 6 ; 0040eb1f
L_0040eb22:
    mov edx, dword ptr [eax] ; 0040eb22
L_0040eb24:
    mov dword ptr [esp], edx ; 0040eb24
L_0040eb27:
    mov dx, word ptr [eax + 4] ; 0040eb27
L_0040eb2b:
    mov word ptr [esp + 4], dx ; 0040eb2b
L_0040eb30:
    mov dword ptr [eax], 0e8e8e8e8h ; 0040eb30
L_0040eb36:
    mov word ptr [eax + 4], 0e8e8h ; 0040eb36
L_0040eb3c:
    push eax ; 0040eb3c
L_0040eb3d:
    mov eax, ecx ; 0040eb3d
L_0040eb3f:
    nop  ; 0040eb3f
L_0040eb40:
    cmp bl, byte ptr [ecx] ; 0040eb40
L_0040eb42:
    je L_0040eb63 ; 0040eb42
L_0040eb44:
    cmp bl, byte ptr [ecx + 1] ; 0040eb44
L_0040eb47:
    je L_0040eb62 ; 0040eb47
L_0040eb49:
    cmp bl, byte ptr [ecx + 2] ; 0040eb49
L_0040eb4c:
    je L_0040eb5d ; 0040eb4c
L_0040eb4e:
    cmp bl, byte ptr [ecx + 3] ; 0040eb4e
L_0040eb51:
    je L_0040eb58 ; 0040eb51
L_0040eb53:
    add ecx, 4 ; 0040eb53
L_0040eb56:
    jmp L_0040eb40 ; 0040eb56
L_0040eb58:
    add ecx, 3 ; 0040eb58
L_0040eb5b:
    jmp L_0040eb63 ; 0040eb5b
L_0040eb5d:
    add ecx, 2 ; 0040eb5d
L_0040eb60:
    jmp L_0040eb63 ; 0040eb60
L_0040eb62:
    inc ecx ; 0040eb62
L_0040eb63:
    sub esi, eax ; 0040eb63
L_0040eb65:
    add esi, ecx ; 0040eb65
L_0040eb67:
    cmp esi, edi ; 0040eb67
L_0040eb69:
    jge L_0040eb8d ; 0040eb69
L_0040eb6b:
    mov eax, dword ptr [ecx + 1] ; 0040eb6b
L_0040eb6e:
    add ecx, 5 ; 0040eb6e
L_0040eb71:
    cmp eax, ebp ; 0040eb71
L_0040eb73:
    jae L_0040eb7f ; 0040eb73
L_0040eb75:
    sub dword ptr [ecx - 4], esi ; 0040eb75
L_0040eb78:
    add esi, 5 ; 0040eb78
L_0040eb7b:
    mov eax, ecx ; 0040eb7b
L_0040eb7d:
    jmp L_0040eb40 ; 0040eb7d
L_0040eb7f:
    neg eax ; 0040eb7f
L_0040eb81:
    cmp eax, esi ; 0040eb81
L_0040eb83:
    ja L_0040eb88 ; 0040eb83
L_0040eb85:
    add dword ptr [ecx - 4], ebp ; 0040eb85
L_0040eb88:
    add esi, 5 ; 0040eb88
L_0040eb8b:
    jmp L_0040eb3d ; 0040eb8b
L_0040eb8d:
    add edi, 6 ; 0040eb8d
L_0040eb90:
    pop eax ; 0040eb90
L_0040eb91:
    mov edx, dword ptr [esp] ; 0040eb91
L_0040eb94:
    mov dword ptr [eax], edx ; 0040eb94
L_0040eb96:
    mov dx, word ptr [esp + 4] ; 0040eb96
L_0040eb9b:
    mov word ptr [eax + 4], dx ; 0040eb9b
L_0040eb9f:
    add esp, 6 ; 0040eb9f
L_0040eba2:
    mov eax, edi ; 0040eba2
L_0040eba4:
    pop ebp ; 0040eba4
L_0040eba5:
    pop edi ; 0040eba5
L_0040eba6:
    pop esi ; 0040eba6
L_0040eba7:
    pop edx ; 0040eba7
L_0040eba8:
    pop ecx ; 0040eba8
L_0040eba9:
    pop ebx ; 0040eba9
L_0040ebaa:
    retn  ; 0040ebaa
L_0040ebab:
    db 0cch
L_0040ebac:
    db 0cch
L_0040ebad:
    db 0cch
L_0040ebae:
    db 0cch
L_0040ebaf:
    db 0cch
L_0040ebb0:
    mov edx, dword ptr [esp + 4] ; 0040ebb0
L_0040ebb4:
    push esi ; 0040ebb4
L_0040ebb5:
    mov eax, dword ptr [esp + 0ch] ; 0040ebb5
L_0040ebb9:
    push edi ; 0040ebb9
L_0040ebba:
    mov edi, dword ptr [edx + 02b0ch] ; 0040ebba
L_0040ebc0:
    mov esi, dword ptr [esp + 014h] ; 0040ebc0
L_0040ebc4:
    mov ecx, eax ; 0040ebc4
L_0040ebc6:
    shr ecx, 2 ; 0040ebc6
L_0040ebc9:
    rep movsd  ; 0040ebc9
L_0040ebcb:
    mov ecx, eax ; 0040ebcb
L_0040ebcd:
    and ecx, 3 ; 0040ebcd
L_0040ebd0:
    rep movsb  ; 0040ebd0
L_0040ebd2:
    cmp dword ptr [edx + 02ec4h], 0 ; 0040ebd2
L_0040ebd9:
    je L_0040ebf8 ; 0040ebd9
L_0040ebdb:
    cmp dword ptr [edx + 02ecch], 08000h ; 0040ebdb
L_0040ebe5:
    jae L_0040ebf8 ; 0040ebe5
L_0040ebe7:
    push eax ; 0040ebe7
L_0040ebe8:
    mov eax, dword ptr [edx + 02b0ch] ; 0040ebe8
L_0040ebee:
    push eax ; 0040ebee
L_0040ebef:
    push edx ; 0040ebef
L_0040ebf0:
    call L_0040e690 ; 0040ebf0
L_0040ebf5:
    add esp, 0ch ; 0040ebf5
L_0040ebf8:
    pop edi ; 0040ebf8
L_0040ebf9:
    pop esi ; 0040ebf9
L_0040ebfa:
    retn  ; 0040ebfa
L_0040ebfb:
    db 0cch
L_0040ebfc:
    db 0cch
L_0040ebfd:
    db 0cch
L_0040ebfe:
    db 0cch
L_0040ebff:
    db 0cch
L_0040ec00:
    push esi ; 0040ec00
L_0040ec01:
    push edi ; 0040ec01
L_0040ec02:
    mov esi, dword ptr [esp + 0ch] ; 0040ec02
L_0040ec06:
    lea edi, [esi + 0a18h] ; 0040ec06
L_0040ec0c:
    lea eax, [esi + 02b14h] ; 0040ec0c
L_0040ec12:
    push edi ; 0040ec12
L_0040ec13:
    push eax ; 0040ec13
L_0040ec14:
    push 0100h ; 0040ec14
L_0040ec19:
    push esi ; 0040ec19
L_0040ec1a:
    call L_0040ece0 ; 0040ec1a
L_0040ec1f:
    add esp, 010h ; 0040ec1f
L_0040ec22:
    test eax, eax ; 0040ec22
L_0040ec24:
    jne L_0040ec2b ; 0040ec24
L_0040ec26:
    xor eax, eax ; 0040ec26
L_0040ec28:
    pop edi ; 0040ec28
L_0040ec29:
    pop esi ; 0040ec29
L_0040ec2a:
    retn  ; 0040ec2a
L_0040ec2b:
    lea eax, [esi + 0b18h] ; 0040ec2b
L_0040ec31:
    lea ecx, [esi + 02c14h] ; 0040ec31
L_0040ec37:
    push eax ; 0040ec37
L_0040ec38:
    push ecx ; 0040ec38
L_0040ec39:
    xor eax, eax ; 0040ec39
L_0040ec3b:
    mov al, byte ptr [esi + 02eb5h] ; 0040ec3b
L_0040ec41:
    shl eax, 3 ; 0040ec41
L_0040ec44:
    push eax ; 0040ec44
L_0040ec45:
    push esi ; 0040ec45
L_0040ec46:
    call L_0040ece0 ; 0040ec46
L_0040ec4b:
    add esp, 010h ; 0040ec4b
L_0040ec4e:
    test eax, eax ; 0040ec4e
L_0040ec50:
    jne L_0040ec57 ; 0040ec50
L_0040ec52:
    xor eax, eax ; 0040ec52
L_0040ec54:
    pop edi ; 0040ec54
L_0040ec55:
    pop esi ; 0040ec55
L_0040ec56:
    retn  ; 0040ec56
L_0040ec57:
    lea eax, [esi + 0e3ch] ; 0040ec57
L_0040ec5d:
    lea ecx, [esi + 018h] ; 0040ec5d
L_0040ec60:
    push eax ; 0040ec60
L_0040ec61:
    push ecx ; 0040ec61
L_0040ec62:
    push 0ah ; 0040ec62
L_0040ec64:
    xor eax, eax ; 0040ec64
L_0040ec66:
    push edi ; 0040ec66
L_0040ec67:
    mov al, byte ptr [esi + 02eb5h] ; 0040ec67
L_0040ec6d:
    lea ecx, [eax*8 + 0100h] ; 0040ec6d
L_0040ec74:
    push ecx ; 0040ec74
L_0040ec75:
    push esi ; 0040ec75
L_0040ec76:
    call L_0040fabc ; 0040ec76
L_0040ec7b:
    add esp, 018h ; 0040ec7b
L_0040ec7e:
    test eax, eax ; 0040ec7e
L_0040ec80:
    jne L_0040ec87 ; 0040ec80
L_0040ec82:
    xor eax, eax ; 0040ec82
L_0040ec84:
    pop edi ; 0040ec84
L_0040ec85:
    pop esi ; 0040ec85
L_0040ec86:
    retn  ; 0040ec86
L_0040ec87:
    lea edi, [esi + 0cb8h] ; 0040ec87
L_0040ec8d:
    lea eax, [esi + 02db4h] ; 0040ec8d
L_0040ec93:
    push edi ; 0040ec93
L_0040ec94:
    push eax ; 0040ec94
L_0040ec95:
    push 0f9h ; 0040ec95
L_0040ec9a:
    push esi ; 0040ec9a
L_0040ec9b:
    call L_0040ece0 ; 0040ec9b
L_0040eca0:
    add esp, 010h ; 0040eca0
L_0040eca3:
    test eax, eax ; 0040eca3
L_0040eca5:
    jne L_0040ecac ; 0040eca5
L_0040eca7:
    xor eax, eax ; 0040eca7
L_0040eca9:
    pop edi ; 0040eca9
L_0040ecaa:
    pop esi ; 0040ecaa
L_0040ecab:
    retn  ; 0040ecab
L_0040ecac:
    lea eax, [esi + 0233ch] ; 0040ecac
L_0040ecb2:
    lea ecx, [esi + 0818h] ; 0040ecb2
L_0040ecb8:
    push eax ; 0040ecb8
L_0040ecb9:
    push ecx ; 0040ecb9
L_0040ecba:
    push 8 ; 0040ecba
L_0040ecbc:
    push edi ; 0040ecbc
L_0040ecbd:
    push 0f9h ; 0040ecbd
L_0040ecc2:
    push esi ; 0040ecc2
L_0040ecc3:
    call L_0040fabc ; 0040ecc3
L_0040ecc8:
    add esp, 018h ; 0040ecc8
L_0040eccb:
    cmp eax, 1 ; 0040eccb
L_0040ecce:
    sbb eax, eax ; 0040ecce
L_0040ecd0:
    pop edi ; 0040ecd0
L_0040ecd1:
    inc eax ; 0040ecd1
L_0040ecd2:
    pop esi ; 0040ecd2
L_0040ecd3:
    retn  ; 0040ecd3
L_0040ecd4:
    db 0cch
L_0040ecd5:
    db 0cch
L_0040ecd6:
    db 0cch
L_0040ecd7:
    db 0cch
L_0040ecd8:
    db 0cch
L_0040ecd9:
    db 0cch
L_0040ecda:
    db 0cch
L_0040ecdb:
    db 0cch
L_0040ecdc:
    db 0cch
L_0040ecdd:
    db 0cch
L_0040ecde:
    db 0cch
L_0040ecdf:
    db 0cch
L_0040ece0:
    sub esp, 02d8h ; 0040ece0
L_0040ece6:
    push ebx ; 0040ece6
L_0040ece7:
    push esi ; 0040ece7
L_0040ece8:
    push edi ; 0040ece8
L_0040ece9:
    xor esi, esi ; 0040ece9
L_0040eceb:
    push ebp ; 0040eceb
L_0040ecec:
    mov ebp, dword ptr [esp + 02ech] ; 0040ecec
L_0040ecf3:
    push 4 ; 0040ecf3
L_0040ecf5:
    inc esi ; 0040ecf5
L_0040ecf6:
    push ebp ; 0040ecf6
L_0040ecf7:
    call L_0040eac0 ; 0040ecf7
L_0040ecfc:
    mov byte ptr [esp + esi + 01bh], al ; 0040ecfc
L_0040ed00:
    add esp, 8 ; 0040ed00
L_0040ed03:
    cmp esi, 014h ; 0040ed03
L_0040ed06:
    jl L_0040ecf3 ; 0040ed06
L_0040ed08:
    cmp dword ptr [ebp + 02ebch], 0 ; 0040ed08
L_0040ed0f:
    je L_0040ed1e ; 0040ed0f
L_0040ed11:
    xor eax, eax ; 0040ed11
L_0040ed13:
    pop ebp ; 0040ed13
L_0040ed14:
    pop edi ; 0040ed14
L_0040ed15:
    pop esi ; 0040ed15
L_0040ed16:
    pop ebx ; 0040ed16
L_0040ed17:
    add esp, 02d8h ; 0040ed17
L_0040ed1d:
    retn  ; 0040ed1d
L_0040ed1e:
    lea eax, [esp + 02ch] ; 0040ed1e
L_0040ed22:
    lea ecx, [esp + 0e8h] ; 0040ed22
L_0040ed29:
    lea edx, [esp + 014h] ; 0040ed29
L_0040ed2d:
    push eax ; 0040ed2d
L_0040ed2e:
    push ecx ; 0040ed2e
L_0040ed2f:
    push 8 ; 0040ed2f
L_0040ed31:
    push edx ; 0040ed31
L_0040ed32:
    xor edi, edi ; 0040ed32
L_0040ed34:
    push 014h ; 0040ed34
L_0040ed36:
    push ebp ; 0040ed36
L_0040ed37:
    call L_0040fabc ; 0040ed37
L_0040ed3c:
    add esp, 018h ; 0040ed3c
L_0040ed3f:
    cmp dword ptr [esp + 02f0h], edi ; 0040ed3f
L_0040ed46:
    jle L_0040ef20 ; 0040ed46
L_0040ed4c:
    mov esi, dword ptr [esp + 02f8h] ; 0040ed4c
L_0040ed53:
    mov ecx, dword ptr [ebp + 02eb0h] ; 0040ed53
L_0040ed59:
    mov eax, ecx ; 0040ed59
L_0040ed5b:
    and eax, 0ff7fffffh ; 0040ed5b
L_0040ed60:
    shr eax, 017h ; 0040ed60
L_0040ed63:
    mov bx, word ptr [esp + eax + 0e8h] ; 0040ed63
L_0040ed6b:
    test bx, bx ; 0040ed6b
L_0040ed6e:
    jge L_0040ed93 ; 0040ed6e
L_0040ed70:
    mov edx, 0800000h ; 0040ed70
L_0040ed75:
    neg bx ; 0040ed75
L_0040ed78:
    movsx eax, bx ; 0040ed78
L_0040ed7b:
    test edx, ecx ; 0040ed7b
L_0040ed7d:
    je L_0040ed86 ; 0040ed7d
L_0040ed7f:
    mov bx, word ptr [esp + eax*4 + 02eh] ; 0040ed7f
L_0040ed84:
    jmp L_0040ed8b ; 0040ed84
L_0040ed86:
    mov bx, word ptr [esp + eax*4 + 02ch] ; 0040ed86
L_0040ed8b:
    shr edx, 1 ; 0040ed8b
L_0040ed8e:
    test bx, bx ; 0040ed8e
L_0040ed91:
    jl L_0040ed75 ; 0040ed91
L_0040ed93:
    movsx ecx, bx ; 0040ed93
L_0040ed96:
    xor eax, eax ; 0040ed96
L_0040ed98:
    mov dword ptr [esp + 010h], ecx ; 0040ed98
L_0040ed9c:
    mov al, byte ptr [esp + ecx + 014h] ; 0040ed9c
L_0040eda0:
    push eax ; 0040eda0
L_0040eda1:
    push ebp ; 0040eda1
L_0040eda2:
    call L_0040e9f0 ; 0040eda2
L_0040eda7:
    add esp, 8 ; 0040eda7
L_0040edaa:
    cmp dword ptr [ebp + 02ebch], 0 ; 0040edaa
L_0040edb1:
    jne L_0040ef36 ; 0040edb1
L_0040edb7:
    cmp bx, 011h ; 0040edb7
L_0040edbb:
    jne L_0040edfe ; 0040edbb
L_0040edbd:
    push 4 ; 0040edbd
L_0040edbf:
    push ebp ; 0040edbf
L_0040edc0:
    call L_0040eac0 ; 0040edc0
L_0040edc5:
    add esp, 8 ; 0040edc5
L_0040edc8:
    xor ecx, ecx ; 0040edc8
L_0040edca:
    mov cl, al ; 0040edca
L_0040edcc:
    lea eax, [edi + ecx + 4] ; 0040edcc
L_0040edd0:
    add ecx, 4 ; 0040edd0
L_0040edd3:
    cmp eax, dword ptr [esp + 02f0h] ; 0040edd3
L_0040edda:
    jl L_0040ede5 ; 0040edda
L_0040eddc:
    mov ecx, dword ptr [esp + 02f0h] ; 0040eddc
L_0040ede3:
    sub ecx, edi ; 0040ede3
L_0040ede5:
    mov eax, ecx ; 0040ede5
L_0040ede7:
    dec ecx ; 0040ede7
L_0040ede8:
    test eax, eax ; 0040ede8
L_0040edea:
    jle L_0040edf8 ; 0040edea
L_0040edec:
    mov byte ptr [edi + esi], 0 ; 0040edec
L_0040edf0:
    inc edi ; 0040edf0
L_0040edf1:
    mov eax, ecx ; 0040edf1
L_0040edf3:
    dec ecx ; 0040edf3
L_0040edf4:
    test eax, eax ; 0040edf4
L_0040edf6:
    jg L_0040edec ; 0040edf6
L_0040edf8:
    dec edi ; 0040edf8
L_0040edf9:
    jmp L_0040ef12 ; 0040edf9
L_0040edfe:
    cmp bx, 012h ; 0040edfe
L_0040ee02:
    jne L_0040ee45 ; 0040ee02
L_0040ee04:
    push 5 ; 0040ee04
L_0040ee06:
    push ebp ; 0040ee06
L_0040ee07:
    call L_0040eac0 ; 0040ee07
L_0040ee0c:
    add esp, 8 ; 0040ee0c
L_0040ee0f:
    xor ecx, ecx ; 0040ee0f
L_0040ee11:
    mov cl, al ; 0040ee11
L_0040ee13:
    lea eax, [edi + ecx + 014h] ; 0040ee13
L_0040ee17:
    add ecx, 014h ; 0040ee17
L_0040ee1a:
    cmp eax, dword ptr [esp + 02f0h] ; 0040ee1a
L_0040ee21:
    jl L_0040ee2c ; 0040ee21
L_0040ee23:
    mov ecx, dword ptr [esp + 02f0h] ; 0040ee23
L_0040ee2a:
    sub ecx, edi ; 0040ee2a
L_0040ee2c:
    mov eax, ecx ; 0040ee2c
L_0040ee2e:
    dec ecx ; 0040ee2e
L_0040ee2f:
    test eax, eax ; 0040ee2f
L_0040ee31:
    jle L_0040ee3f ; 0040ee31
L_0040ee33:
    mov byte ptr [edi + esi], 0 ; 0040ee33
L_0040ee37:
    inc edi ; 0040ee37
L_0040ee38:
    mov eax, ecx ; 0040ee38
L_0040ee3a:
    dec ecx ; 0040ee3a
L_0040ee3b:
    test eax, eax ; 0040ee3b
L_0040ee3d:
    jg L_0040ee33 ; 0040ee3d
L_0040ee3f:
    dec edi ; 0040ee3f
L_0040ee40:
    jmp L_0040ef12 ; 0040ee40
L_0040ee45:
    cmp bx, 013h ; 0040ee45
L_0040ee49:
    jne L_0040eef9 ; 0040ee49
L_0040ee4f:
    push 1 ; 0040ee4f
L_0040ee51:
    xor ebx, ebx ; 0040ee51
L_0040ee53:
    push ebp ; 0040ee53
L_0040ee54:
    call L_0040eac0 ; 0040ee54
L_0040ee59:
    add esp, 8 ; 0040ee59
L_0040ee5c:
    mov bl, al ; 0040ee5c
L_0040ee5e:
    lea eax, [edi + ebx + 4] ; 0040ee5e
L_0040ee62:
    add ebx, 4 ; 0040ee62
L_0040ee65:
    cmp eax, dword ptr [esp + 02f0h] ; 0040ee65
L_0040ee6c:
    jl L_0040ee77 ; 0040ee6c
L_0040ee6e:
    mov ebx, dword ptr [esp + 02f0h] ; 0040ee6e
L_0040ee75:
    sub ebx, edi ; 0040ee75
L_0040ee77:
    mov ecx, dword ptr [ebp + 02eb0h] ; 0040ee77
L_0040ee7d:
    mov eax, ecx ; 0040ee7d
L_0040ee7f:
    and eax, 0ff7fffffh ; 0040ee7f
L_0040ee84:
    shr eax, 017h ; 0040ee84
L_0040ee87:
    mov dx, word ptr [esp + eax + 0e8h] ; 0040ee87
L_0040ee8f:
    test dx, dx ; 0040ee8f
L_0040ee92:
    jge L_0040eeb7 ; 0040ee92
L_0040ee94:
    mov eax, 0800000h ; 0040ee94
L_0040ee99:
    neg dx ; 0040ee99
L_0040ee9c:
    movsx edx, dx ; 0040ee9c
L_0040ee9f:
    test eax, ecx ; 0040ee9f
L_0040eea1:
    je L_0040eeaa ; 0040eea1
L_0040eea3:
    mov dx, word ptr [esp + edx*4 + 02eh] ; 0040eea3
L_0040eea8:
    jmp L_0040eeaf ; 0040eea8
L_0040eeaa:
    mov dx, word ptr [esp + edx*4 + 02ch] ; 0040eeaa
L_0040eeaf:
    shr eax, 1 ; 0040eeaf
L_0040eeb2:
    test dx, dx ; 0040eeb2
L_0040eeb5:
    jl L_0040ee99 ; 0040eeb5
L_0040eeb7:
    movsx ecx, dx ; 0040eeb7
L_0040eeba:
    xor eax, eax ; 0040eeba
L_0040eebc:
    mov dword ptr [esp + 010h], ecx ; 0040eebc
L_0040eec0:
    mov al, byte ptr [esp + ecx + 014h] ; 0040eec0
L_0040eec4:
    push eax ; 0040eec4
L_0040eec5:
    push ebp ; 0040eec5
L_0040eec6:
    call L_0040e9f0 ; 0040eec6
L_0040eecb:
    mov ecx, dword ptr [esp + 02fch] ; 0040eecb
L_0040eed2:
    add esp, 8 ; 0040eed2
L_0040eed5:
    xor eax, eax ; 0040eed5
L_0040eed7:
    mov al, byte ptr [edi + ecx] ; 0040eed7
L_0040eeda:
    mov ecx, ebx ; 0040eeda
L_0040eedc:
    sub eax, dword ptr [esp + 010h] ; 0040eedc
L_0040eee0:
    dec ebx ; 0040eee0
L_0040eee1:
    test ecx, ecx ; 0040eee1
L_0040eee3:
    mov al, byte ptr [eax + _kb_rdata + 6873] ; 0040eee3
L_0040eee9:
    jle L_0040eef6 ; 0040eee9
L_0040eeeb:
    mov byte ptr [edi + esi], al ; 0040eeeb
L_0040eeee:
    inc edi ; 0040eeee
L_0040eeef:
    mov ecx, ebx ; 0040eeef
L_0040eef1:
    dec ebx ; 0040eef1
L_0040eef2:
    test ecx, ecx ; 0040eef2
L_0040eef4:
    jg L_0040eeeb ; 0040eef4
L_0040eef6:
    dec edi ; 0040eef6
L_0040eef7:
    jmp L_0040ef12 ; 0040eef7
L_0040eef9:
    xor eax, eax ; 0040eef9
L_0040eefb:
    mov ecx, dword ptr [esp + 02f4h] ; 0040eefb
L_0040ef02:
    mov al, byte ptr [edi + ecx] ; 0040ef02
L_0040ef05:
    sub eax, dword ptr [esp + 010h] ; 0040ef05
L_0040ef09:
    mov al, byte ptr [eax + _kb_rdata + 6873] ; 0040ef09
L_0040ef0f:
    mov byte ptr [edi + esi], al ; 0040ef0f
L_0040ef12:
    inc edi ; 0040ef12
L_0040ef13:
    cmp dword ptr [esp + 02f0h], edi ; 0040ef13
L_0040ef1a:
    jg L_0040ed53 ; 0040ef1a
L_0040ef20:
    cmp dword ptr [ebp + 02ebch], 1 ; 0040ef20
L_0040ef27:
    sbb eax, eax ; 0040ef27
L_0040ef29:
    pop ebp ; 0040ef29
L_0040ef2a:
    neg eax ; 0040ef2a
L_0040ef2c:
    pop edi ; 0040ef2c
L_0040ef2d:
    pop esi ; 0040ef2d
L_0040ef2e:
    pop ebx ; 0040ef2e
L_0040ef2f:
    add esp, 02d8h ; 0040ef2f
L_0040ef35:
    retn  ; 0040ef35
L_0040ef36:
    xor eax, eax ; 0040ef36
L_0040ef38:
    pop ebp ; 0040ef38
L_0040ef39:
    pop edi ; 0040ef39
L_0040ef3a:
    pop esi ; 0040ef3a
L_0040ef3b:
    pop ebx ; 0040ef3b
L_0040ef3c:
    add esp, 02d8h ; 0040ef3c
L_0040ef42:
    retn  ; 0040ef42
L_0040ef43:
    db 0cch
L_0040ef44:
    db 0cch
L_0040ef45:
    db 0cch
L_0040ef46:
    db 0cch
L_0040ef47:
    db 0cch
L_0040ef48:
    db 0cch
L_0040ef49:
    db 0cch
L_0040ef4a:
    db 0cch
L_0040ef4b:
    db 0cch
L_0040ef4c:
    db 0cch
L_0040ef4d:
    db 0cch
L_0040ef4e:
    db 0cch
L_0040ef4f:
    db 0cch
L_0040ef50:
    push esi ; 0040ef50
L_0040ef51:
    push edi ; 0040ef51
L_0040ef52:
    xor esi, esi ; 0040ef52
L_0040ef54:
    mov edi, dword ptr [esp + 0ch] ; 0040ef54
L_0040ef58:
    push 3 ; 0040ef58
L_0040ef5a:
    inc esi ; 0040ef5a
L_0040ef5b:
    push edi ; 0040ef5b
L_0040ef5c:
    call L_0040eac0 ; 0040ef5c
L_0040ef61:
    add esp, 8 ; 0040ef61
L_0040ef64:
    mov byte ptr [edi + esi + 0e33h], al ; 0040ef64
L_0040ef6b:
    cmp esi, 8 ; 0040ef6b
L_0040ef6e:
    jl L_0040ef58 ; 0040ef6e
L_0040ef70:
    cmp dword ptr [edi + 02ebch], 0 ; 0040ef70
L_0040ef77:
    je L_0040ef7e ; 0040ef77
L_0040ef79:
    xor eax, eax ; 0040ef79
L_0040ef7b:
    pop edi ; 0040ef7b
L_0040ef7c:
    pop esi ; 0040ef7c
L_0040ef7d:
    retn  ; 0040ef7d
L_0040ef7e:
    lea eax, [edi + 0db4h] ; 0040ef7e
L_0040ef84:
    lea ecx, [edi + 0e34h] ; 0040ef84
L_0040ef8a:
    push eax ; 0040ef8a
L_0040ef8b:
    push ecx ; 0040ef8b
L_0040ef8c:
    push edi ; 0040ef8c
L_0040ef8d:
    call L_0040fd40 ; 0040ef8d
L_0040ef92:
    add esp, 0ch ; 0040ef92
L_0040ef95:
    cmp eax, 1 ; 0040ef95
L_0040ef98:
    sbb eax, eax ; 0040ef98
L_0040ef9a:
    pop edi ; 0040ef9a
L_0040ef9b:
    inc eax ; 0040ef9b
L_0040ef9c:
    pop esi ; 0040ef9c
L_0040ef9d:
    retn  ; 0040ef9d
L_0040ef9e:
    db 0cch
L_0040ef9f:
    db 0cch
L_0040efa0:
    mov edx, dword ptr [esp + 0ch] ; 0040efa0
L_0040efa4:
    push ebx ; 0040efa4
L_0040efa5:
    mov ecx, dword ptr [esp + 8] ; 0040efa5
L_0040efa9:
    push esi ; 0040efa9
L_0040efaa:
    mov esi, dword ptr [esp + 010h] ; 0040efaa
L_0040efae:
    push edi ; 0040efae
L_0040efaf:
    push ebp ; 0040efaf
L_0040efb0:
    mov edi, esi ; 0040efb0
L_0040efb2:
    add edx, esi ; 0040efb2
L_0040efb4:
    mov ebx, dword ptr [ecx + 02b04h] ; 0040efb4
L_0040efba:
    cmp edx, esi ; 0040efba
L_0040efbc:
    jle L_0040efd4 ; 0040efbc
L_0040efbe:
    cmp dword ptr [ecx + 02b08h], ebx ; 0040efbe
L_0040efc4:
    jbe L_0040f013 ; 0040efc4
L_0040efc6:
    mov al, byte ptr [ebx] ; 0040efc6
L_0040efc8:
    mov ebp, dword ptr [ecx] ; 0040efc8
L_0040efca:
    inc ebx ; 0040efca
L_0040efcb:
    inc esi ; 0040efcb
L_0040efcc:
    cmp edx, esi ; 0040efcc
L_0040efce:
    mov byte ptr [ebp + esi - 1], al ; 0040efce
L_0040efd2:
    jg L_0040efbe ; 0040efd2
L_0040efd4:
    mov dword ptr [ecx + 02b04h], ebx ; 0040efd4
L_0040efda:
    cmp edx, 0101h ; 0040efda
L_0040efe0:
    mov ebx, edx ; 0040efe0
L_0040efe2:
    jl L_0040efe9 ; 0040efe2
L_0040efe4:
    mov ebx, 0101h ; 0040efe4
L_0040efe9:
    cmp ebx, edi ; 0040efe9
L_0040efeb:
    jbe L_0040f001 ; 0040efeb
L_0040efed:
    mov eax, dword ptr [ecx] ; 0040efed
L_0040efef:
    mov ebp, dword ptr [ecx + 4] ; 0040efef
L_0040eff2:
    add ebp, dword ptr [ecx] ; 0040eff2
L_0040eff4:
    inc edi ; 0040eff4
L_0040eff5:
    cmp ebx, edi ; 0040eff5
L_0040eff7:
    mov al, byte ptr [edi + eax - 1] ; 0040eff7
L_0040effb:
    mov byte ptr [ebp + edi - 1], al ; 0040effb
L_0040efff:
    ja L_0040efed ; 0040efff
L_0040f001:
    mov eax, esi ; 0040f001
L_0040f003:
    pop ebp ; 0040f003
L_0040f004:
    sub eax, edx ; 0040f004
L_0040f006:
    and esi, dword ptr [ecx + 8] ; 0040f006
L_0040f009:
    pop edi ; 0040f009
L_0040f00a:
    mov dword ptr [ecx + 02ec0h], esi ; 0040f00a
L_0040f010:
    pop esi ; 0040f010
L_0040f011:
    pop ebx ; 0040f011
L_0040f012:
    retn  ; 0040f012
L_0040f013:
    mov eax, 0ffffffffh ; 0040f013
L_0040f018:
    pop ebp ; 0040f018
L_0040f019:
    pop edi ; 0040f019
L_0040f01a:
    pop esi ; 0040f01a
L_0040f01b:
    pop ebx ; 0040f01b
L_0040f01c:
    retn  ; 0040f01c
L_0040f01d:
    db 0cch
L_0040f01e:
    db 0cch
L_0040f01f:
    db 0cch
L_0040f020:
    mov eax, dword ptr [esp + 4] ; 0040f020
L_0040f024:
    push ebx ; 0040f024
L_0040f025:
    push esi ; 0040f025
L_0040f026:
    push edi ; 0040f026
L_0040f027:
    mov ecx, dword ptr [eax + 02b04h] ; 0040f027
L_0040f02d:
    sub ecx, 2 ; 0040f02d
L_0040f030:
    mov dword ptr [eax + 02b04h], ecx ; 0040f030
L_0040f036:
    add ecx, 4 ; 0040f036
L_0040f039:
    cmp ecx, dword ptr [eax + 02b08h] ; 0040f039
L_0040f03f:
    jb L_0040f047 ; 0040f03f
L_0040f041:
    xor eax, eax ; 0040f041
L_0040f043:
    pop edi ; 0040f043
L_0040f044:
    pop esi ; 0040f044
L_0040f045:
    pop ebx ; 0040f045
L_0040f046:
    retn  ; 0040f046
L_0040f047:
    lea esi, [eax + 0ch] ; 0040f047
L_0040f04a:
    mov edi, 3 ; 0040f04a
L_0040f04f:
    mov ecx, dword ptr [eax + 02b04h] ; 0040f04f
L_0040f055:
    xor ebx, ebx ; 0040f055
L_0040f057:
    xor edx, edx ; 0040f057
L_0040f059:
    add esi, 4 ; 0040f059
L_0040f05c:
    mov bl, byte ptr [ecx + 3] ; 0040f05c
L_0040f05f:
    mov dl, byte ptr [ecx + 1] ; 0040f05f
L_0040f062:
    shl ebx, 010h ; 0040f062
L_0040f065:
    or ebx, edx ; 0040f065
L_0040f067:
    xor edx, edx ; 0040f067
L_0040f069:
    shl ebx, 8 ; 0040f069
L_0040f06c:
    mov dl, byte ptr [ecx + 2] ; 0040f06c
L_0040f06f:
    shl edx, 010h ; 0040f06f
L_0040f072:
    or ebx, edx ; 0040f072
L_0040f074:
    xor edx, edx ; 0040f074
L_0040f076:
    mov dl, byte ptr [ecx] ; 0040f076
L_0040f078:
    or ebx, edx ; 0040f078
L_0040f07a:
    mov dword ptr [esi - 4], ebx ; 0040f07a
L_0040f07d:
    add dword ptr [eax + 02b04h], 4 ; 0040f07d
L_0040f084:
    dec edi ; 0040f084
L_0040f085:
    jne L_0040f04f ; 0040f085
L_0040f087:
    mov eax, 1 ; 0040f087
L_0040f08c:
    pop edi ; 0040f08c
L_0040f08d:
    pop esi ; 0040f08d
L_0040f08e:
    pop ebx ; 0040f08e
L_0040f08f:
    retn  ; 0040f08f
L_0040f090:
    push ebx ; 0040f090
L_0040f091:
    push esi ; 0040f091
L_0040f092:
    push edi ; 0040f092
L_0040f093:
    mov edi, dword ptr [esp + 014h] ; 0040f093
L_0040f097:
    cmp edi, 0101h ; 0040f097
L_0040f09d:
    jge L_0040f0d5 ; 0040f09d
L_0040f09f:
    mov eax, 0101h ; 0040f09f
L_0040f0a4:
    mov ebx, dword ptr [esp + 018h] ; 0040f0a4
L_0040f0a8:
    sub eax, edi ; 0040f0a8
L_0040f0aa:
    cmp eax, ebx ; 0040f0aa
L_0040f0ac:
    jl L_0040f0b0 ; 0040f0ac
L_0040f0ae:
    mov eax, ebx ; 0040f0ae
L_0040f0b0:
    mov esi, dword ptr [esp + 010h] ; 0040f0b0
L_0040f0b4:
    push eax ; 0040f0b4
L_0040f0b5:
    push edi ; 0040f0b5
L_0040f0b6:
    push esi ; 0040f0b6
L_0040f0b7:
    call L_0040f0f0 ; 0040f0b7
L_0040f0bc:
    add esp, 0ch ; 0040f0bc
L_0040f0bf:
    sub ebx, eax ; 0040f0bf
L_0040f0c1:
    add ebx, edi ; 0040f0c1
L_0040f0c3:
    mov dword ptr [esi + 02ec0h], eax ; 0040f0c3
L_0040f0c9:
    mov edi, eax ; 0040f0c9
L_0040f0cb:
    test ebx, ebx ; 0040f0cb
L_0040f0cd:
    jg L_0040f0dd ; 0040f0cd
L_0040f0cf:
    mov eax, ebx ; 0040f0cf
L_0040f0d1:
    pop edi ; 0040f0d1
L_0040f0d2:
    pop esi ; 0040f0d2
L_0040f0d3:
    pop ebx ; 0040f0d3
L_0040f0d4:
    retn  ; 0040f0d4
L_0040f0d5:
    mov esi, dword ptr [esp + 010h] ; 0040f0d5
L_0040f0d9:
    mov ebx, dword ptr [esp + 018h] ; 0040f0d9
L_0040f0dd:
    push ebx ; 0040f0dd
L_0040f0de:
    push edi ; 0040f0de
L_0040f0df:
    push esi ; 0040f0df
L_0040f0e0:
    call L_0040fed3 ; 0040f0e0
L_0040f0e5:
    add esp, 0ch ; 0040f0e5
L_0040f0e8:
    pop edi ; 0040f0e8
L_0040f0e9:
    pop esi ; 0040f0e9
L_0040f0ea:
    pop ebx ; 0040f0ea
L_0040f0eb:
    retn  ; 0040f0eb
L_0040f0ec:
    db 0cch
L_0040f0ed:
    db 0cch
L_0040f0ee:
    db 0cch
L_0040f0ef:
    db 0cch
L_0040f0f0:
    sub esp, 014h ; 0040f0f0
L_0040f0f3:
    push ebx ; 0040f0f3
L_0040f0f4:
    push esi ; 0040f0f4
L_0040f0f5:
    mov esi, dword ptr [esp + 020h] ; 0040f0f5
L_0040f0f9:
    push edi ; 0040f0f9
L_0040f0fa:
    push ebp ; 0040f0fa
L_0040f0fb:
    mov cl, byte ptr [esi + 02eb4h] ; 0040f0fb
L_0040f101:
    mov eax, dword ptr [esi + 02eb0h] ; 0040f101
L_0040f107:
    mov ebp, dword ptr [esi + 02b04h] ; 0040f107
L_0040f10d:
    mov byte ptr [esp + 013h], cl ; 0040f10d
L_0040f111:
    mov dword ptr [esp + 014h], eax ; 0040f111
L_0040f115:
    mov ecx, dword ptr [esi + 02b08h] ; 0040f115
L_0040f11b:
    mov eax, dword ptr [esp + 02ch] ; 0040f11b
L_0040f11f:
    mov dword ptr [esp + 020h], ecx ; 0040f11f
L_0040f123:
    mov ecx, dword ptr [esp + 030h] ; 0040f123
L_0040f127:
    add ecx, eax ; 0040f127
L_0040f129:
    mov dword ptr [esp + 01ch], ecx ; 0040f129
L_0040f12d:
    cmp eax, ecx ; 0040f12d
L_0040f12f:
    jge L_0040f34b ; 0040f12f
L_0040f135:
    mov ecx, dword ptr [esp + 014h] ; 0040f135
L_0040f139:
    and ecx, 0ffdfffffh ; 0040f139
L_0040f13f:
    shr ecx, 015h ; 0040f13f
L_0040f142:
    movsx edx, word ptr [ecx + esi + 018h] ; 0040f142
L_0040f147:
    test edx, edx ; 0040f147
L_0040f149:
    jge L_0040f171 ; 0040f149
L_0040f14b:
    mov ecx, 0200000h ; 0040f14b
L_0040f150:
    neg edx ; 0040f150
L_0040f152:
    test dword ptr [esp + 014h], ecx ; 0040f152
L_0040f156:
    je L_0040f162 ; 0040f156
L_0040f158:
    movsx edx, word ptr [esi + edx*4 + 0e3eh] ; 0040f158
L_0040f160:
    jmp L_0040f16a ; 0040f160
L_0040f162:
    movsx edx, word ptr [esi + edx*4 + 0e3ch] ; 0040f162
L_0040f16a:
    shr ecx, 1 ; 0040f16a
L_0040f16d:
    test edx, edx ; 0040f16d
L_0040f16f:
    jl L_0040f150 ; 0040f16f
L_0040f171:
    cmp dword ptr [esp + 020h], ebp ; 0040f171
L_0040f175:
    jbe L_0040f36d ; 0040f175
L_0040f17b:
    mov cl, byte ptr [edx + esi + 0a18h] ; 0040f17b
L_0040f182:
    shl dword ptr [esp + 014h], cl ; 0040f182
L_0040f186:
    sub byte ptr [esp + 013h], cl ; 0040f186
L_0040f18a:
    cmp byte ptr [esp + 013h], 0 ; 0040f18a
L_0040f18f:
    jg L_0040f1b4 ; 0040f18f
L_0040f191:
    xor ebx, ebx ; 0040f191
L_0040f193:
    xor ecx, ecx ; 0040f193
L_0040f195:
    mov bl, byte ptr [ebp + 1] ; 0040f195
L_0040f198:
    mov cl, byte ptr [ebp] ; 0040f198
L_0040f19b:
    shl ebx, 8 ; 0040f19b
L_0040f19e:
    add ebp, 2 ; 0040f19e
L_0040f1a1:
    or ebx, ecx ; 0040f1a1
L_0040f1a3:
    mov cl, byte ptr [esp + 013h] ; 0040f1a3
L_0040f1a7:
    neg cl ; 0040f1a7
L_0040f1a9:
    shl ebx, cl ; 0040f1a9
L_0040f1ab:
    add byte ptr [esp + 013h], 010h ; 0040f1ab
L_0040f1b0:
    or dword ptr [esp + 014h], ebx ; 0040f1b0
L_0040f1b4:
    sub edx, 0100h ; 0040f1b4
L_0040f1ba:
    jns L_0040f1d1 ; 0040f1ba
L_0040f1bc:
    mov ecx, dword ptr [esi] ; 0040f1bc
L_0040f1be:
    inc eax ; 0040f1be
L_0040f1bf:
    mov byte ptr [ecx + eax - 1], dl ; 0040f1bf
L_0040f1c3:
    mov ecx, dword ptr [esi + 4] ; 0040f1c3
L_0040f1c6:
    add ecx, dword ptr [esi] ; 0040f1c6
L_0040f1c8:
    mov byte ptr [ecx + eax - 1], dl ; 0040f1c8
L_0040f1cc:
    jmp L_0040f341 ; 0040f1cc
L_0040f1d1:
    mov edi, edx ; 0040f1d1
L_0040f1d3:
    and edi, 7 ; 0040f1d3
L_0040f1d6:
    cmp edi, 7 ; 0040f1d6
L_0040f1d9:
    jne L_0040f256 ; 0040f1d9
L_0040f1db:
    mov ecx, dword ptr [esp + 014h] ; 0040f1db
L_0040f1df:
    and ecx, 0ff7fffffh ; 0040f1df
L_0040f1e5:
    shr ecx, 017h ; 0040f1e5
L_0040f1e8:
    movsx edi, word ptr [ecx + esi + 0818h] ; 0040f1e8
L_0040f1f0:
    test edi, edi ; 0040f1f0
L_0040f1f2:
    jge L_0040f21a ; 0040f1f2
L_0040f1f4:
    mov ecx, 0800000h ; 0040f1f4
L_0040f1f9:
    neg edi ; 0040f1f9
L_0040f1fb:
    test dword ptr [esp + 014h], ecx ; 0040f1fb
L_0040f1ff:
    je L_0040f20b ; 0040f1ff
L_0040f201:
    movsx edi, word ptr [esi + edi*4 + 0233eh] ; 0040f201
L_0040f209:
    jmp L_0040f213 ; 0040f209
L_0040f20b:
    movsx edi, word ptr [esi + edi*4 + 0233ch] ; 0040f20b
L_0040f213:
    shr ecx, 1 ; 0040f213
L_0040f216:
    test edi, edi ; 0040f216
L_0040f218:
    jl L_0040f1f9 ; 0040f218
L_0040f21a:
    mov cl, byte ptr [edi + esi + 0cb8h] ; 0040f21a
L_0040f221:
    shl dword ptr [esp + 014h], cl ; 0040f221
L_0040f225:
    sub byte ptr [esp + 013h], cl ; 0040f225
L_0040f229:
    cmp byte ptr [esp + 013h], 0 ; 0040f229
L_0040f22e:
    jg L_0040f253 ; 0040f22e
L_0040f230:
    xor ebx, ebx ; 0040f230
L_0040f232:
    xor ecx, ecx ; 0040f232
L_0040f234:
    mov bl, byte ptr [ebp + 1] ; 0040f234
L_0040f237:
    mov cl, byte ptr [ebp] ; 0040f237
L_0040f23a:
    shl ebx, 8 ; 0040f23a
L_0040f23d:
    add ebp, 2 ; 0040f23d
L_0040f240:
    or ebx, ecx ; 0040f240
L_0040f242:
    mov cl, byte ptr [esp + 013h] ; 0040f242
L_0040f246:
    neg cl ; 0040f246
L_0040f248:
    shl ebx, cl ; 0040f248
L_0040f24a:
    add byte ptr [esp + 013h], 010h ; 0040f24a
L_0040f24f:
    or dword ptr [esp + 014h], ebx ; 0040f24f
L_0040f253:
    add edi, 7 ; 0040f253
L_0040f256:
    sar edx, 3 ; 0040f256
L_0040f259:
    cmp dl, 2 ; 0040f259
L_0040f25c:
    jle L_0040f300 ; 0040f25c
L_0040f262:
    cmp dl, 3 ; 0040f262
L_0040f265:
    jle L_0040f2ed ; 0040f265
L_0040f26b:
    movsx ecx, dl ; 0040f26b
L_0040f26e:
    mov ebx, dword ptr [esp + 014h] ; 0040f26e
L_0040f272:
    mov dword ptr [esp + 018h], ecx ; 0040f272
L_0040f276:
    mov dl, byte ptr [ecx + _kb_rdata + 6592] ; 0040f276
L_0040f27c:
    mov cl, 020h ; 0040f27c
L_0040f27e:
    sub cl, dl ; 0040f27e
L_0040f280:
    sub byte ptr [esp + 013h], dl ; 0040f280
L_0040f284:
    shr ebx, cl ; 0040f284
L_0040f286:
    mov cl, dl ; 0040f286
L_0040f288:
    shl dword ptr [esp + 014h], cl ; 0040f288
L_0040f28c:
    cmp byte ptr [esp + 013h], 0 ; 0040f28c
L_0040f291:
    jg L_0040f2e0 ; 0040f291
L_0040f293:
    xor edx, edx ; 0040f293
L_0040f295:
    xor ecx, ecx ; 0040f295
L_0040f297:
    mov dl, byte ptr [ebp + 1] ; 0040f297
L_0040f29a:
    mov cl, byte ptr [ebp] ; 0040f29a
L_0040f29d:
    shl edx, 8 ; 0040f29d
L_0040f2a0:
    add ebp, 2 ; 0040f2a0
L_0040f2a3:
    or edx, ecx ; 0040f2a3
L_0040f2a5:
    mov cl, byte ptr [esp + 013h] ; 0040f2a5
L_0040f2a9:
    neg cl ; 0040f2a9
L_0040f2ab:
    shl edx, cl ; 0040f2ab
L_0040f2ad:
    add byte ptr [esp + 013h], 010h ; 0040f2ad
L_0040f2b2:
    or dword ptr [esp + 014h], edx ; 0040f2b2
L_0040f2b6:
    cmp byte ptr [esp + 013h], 0 ; 0040f2b6
L_0040f2bb:
    jg L_0040f2e0 ; 0040f2bb
L_0040f2bd:
    xor edx, edx ; 0040f2bd
L_0040f2bf:
    xor ecx, ecx ; 0040f2bf
L_0040f2c1:
    mov dl, byte ptr [ebp + 1] ; 0040f2c1
L_0040f2c4:
    mov cl, byte ptr [ebp] ; 0040f2c4
L_0040f2c7:
    shl edx, 8 ; 0040f2c7
L_0040f2ca:
    add ebp, 2 ; 0040f2ca
L_0040f2cd:
    or edx, ecx ; 0040f2cd
L_0040f2cf:
    mov cl, byte ptr [esp + 013h] ; 0040f2cf
L_0040f2d3:
    neg cl ; 0040f2d3
L_0040f2d5:
    shl edx, cl ; 0040f2d5
L_0040f2d7:
    add byte ptr [esp + 013h], 010h ; 0040f2d7
L_0040f2dc:
    or dword ptr [esp + 014h], edx ; 0040f2dc
L_0040f2e0:
    mov ecx, dword ptr [esp + 018h] ; 0040f2e0
L_0040f2e4:
    add ebx, dword ptr [ecx*4 + _kb_rdata + 6648] ; 0040f2e4
L_0040f2eb:
    jmp L_0040f2f2 ; 0040f2eb
L_0040f2ed:
    mov ebx, 1 ; 0040f2ed
L_0040f2f2:
    mov ecx, dword ptr [esi + 010h] ; 0040f2f2
L_0040f2f5:
    mov edx, dword ptr [esi + 0ch] ; 0040f2f5
L_0040f2f8:
    mov dword ptr [esi + 014h], ecx ; 0040f2f8
L_0040f2fb:
    mov dword ptr [esi + 010h], edx ; 0040f2fb
L_0040f2fe:
    jmp L_0040f312 ; 0040f2fe
L_0040f300:
    movsx ecx, dl ; 0040f300
L_0040f303:
    test dl, dl ; 0040f303
L_0040f305:
    lea ecx, [esi + ecx*4 + 0ch] ; 0040f305
L_0040f309:
    mov ebx, dword ptr [ecx] ; 0040f309
L_0040f30b:
    je L_0040f315 ; 0040f30b
L_0040f30d:
    mov edx, dword ptr [esi + 0ch] ; 0040f30d
L_0040f310:
    mov dword ptr [ecx], edx ; 0040f310
L_0040f312:
    mov dword ptr [esi + 0ch], ebx ; 0040f312
L_0040f315:
    add edi, 2 ; 0040f315
L_0040f318:
    mov edx, dword ptr [esi] ; 0040f318
L_0040f31a:
    mov ecx, eax ; 0040f31a
L_0040f31c:
    sub ecx, ebx ; 0040f31c
L_0040f31e:
    and ecx, dword ptr [esi + 8] ; 0040f31e
L_0040f321:
    cmp eax, 0101h ; 0040f321
L_0040f326:
    mov cl, byte ptr [ecx + edx] ; 0040f326
L_0040f329:
    mov byte ptr [edx + eax], cl ; 0040f329
L_0040f32c:
    jge L_0040f33b ; 0040f32c
L_0040f32e:
    mov ecx, dword ptr [esi] ; 0040f32e
L_0040f330:
    mov edx, dword ptr [esi + 4] ; 0040f330
L_0040f333:
    add edx, dword ptr [esi] ; 0040f333
L_0040f335:
    mov cl, byte ptr [ecx + eax] ; 0040f335
L_0040f338:
    mov byte ptr [edx + eax], cl ; 0040f338
L_0040f33b:
    inc eax ; 0040f33b
L_0040f33c:
    dec edi ; 0040f33c
L_0040f33d:
    test edi, edi ; 0040f33d
L_0040f33f:
    jg L_0040f318 ; 0040f33f
L_0040f341:
    cmp eax, dword ptr [esp + 01ch] ; 0040f341
L_0040f345:
    jl L_0040f135 ; 0040f345
L_0040f34b:
    mov cl, byte ptr [esp + 013h] ; 0040f34b
L_0040f34f:
    mov edx, dword ptr [esp + 014h] ; 0040f34f
L_0040f353:
    mov byte ptr [esi + 02eb4h], cl ; 0040f353
L_0040f359:
    mov dword ptr [esi + 02eb0h], edx ; 0040f359
L_0040f35f:
    mov dword ptr [esi + 02b04h], ebp ; 0040f35f
L_0040f365:
    pop ebp ; 0040f365
L_0040f366:
    pop edi ; 0040f366
L_0040f367:
    pop esi ; 0040f367
L_0040f368:
    pop ebx ; 0040f368
L_0040f369:
    add esp, 014h ; 0040f369
L_0040f36c:
    retn  ; 0040f36c
L_0040f36d:
    mov eax, 0ffffffffh ; 0040f36d
L_0040f372:
    pop ebp ; 0040f372
L_0040f373:
    pop edi ; 0040f373
L_0040f374:
    pop esi ; 0040f374
L_0040f375:
    pop ebx ; 0040f375
L_0040f376:
    add esp, 014h ; 0040f376
L_0040f379:
    retn  ; 0040f379
L_0040f37a:
    db 0cch
L_0040f37b:
    db 0cch
L_0040f37c:
    db 0cch
L_0040f37d:
    db 0cch
L_0040f37e:
    db 0cch
L_0040f37f:
    db 0cch
L_0040f380:
    sub esp, 020h ; 0040f380
L_0040f383:
    push ebx ; 0040f383
L_0040f384:
    push esi ; 0040f384
L_0040f385:
    mov esi, dword ptr [esp + 02ch] ; 0040f385
L_0040f389:
    push edi ; 0040f389
L_0040f38a:
    push ebp ; 0040f38a
L_0040f38b:
    mov dl, byte ptr [esi + 02eb4h] ; 0040f38b
L_0040f391:
    mov ecx, dword ptr [esi + 02eb0h] ; 0040f391
L_0040f397:
    mov eax, dword ptr [esi + 02b04h] ; 0040f397
L_0040f39d:
    mov ebx, dword ptr [esi + 02b08h] ; 0040f39d
L_0040f3a3:
    mov dword ptr [esp + 010h], ecx ; 0040f3a3
L_0040f3a7:
    mov ecx, dword ptr [esi] ; 0040f3a7
L_0040f3a9:
    mov dword ptr [esp + 014h], eax ; 0040f3a9
L_0040f3ad:
    mov eax, dword ptr [esp + 03ch] ; 0040f3ad
L_0040f3b1:
    mov dword ptr [esp + 02ch], ebx ; 0040f3b1
L_0040f3b5:
    add eax, dword ptr [esp + 038h] ; 0040f3b5
L_0040f3b9:
    mov dword ptr [esp + 024h], ecx ; 0040f3b9
L_0040f3bd:
    mov dword ptr [esp + 028h], eax ; 0040f3bd
L_0040f3c1:
    cmp dword ptr [esp + 038h], eax ; 0040f3c1
L_0040f3c5:
    jge L_0040f6ad ; 0040f3c5
L_0040f3cb:
    mov eax, dword ptr [esp + 010h] ; 0040f3cb
L_0040f3cf:
    and eax, 0ffdfffffh ; 0040f3cf
L_0040f3d4:
    shr eax, 015h ; 0040f3d4
L_0040f3d7:
    movsx eax, word ptr [eax + esi + 018h] ; 0040f3d7
L_0040f3dc:
    test eax, eax ; 0040f3dc
L_0040f3de:
    jge L_0040f406 ; 0040f3de
L_0040f3e0:
    mov ecx, 0200000h ; 0040f3e0
L_0040f3e5:
    neg eax ; 0040f3e5
L_0040f3e7:
    test dword ptr [esp + 010h], ecx ; 0040f3e7
L_0040f3eb:
    je L_0040f3f7 ; 0040f3eb
L_0040f3ed:
    movsx eax, word ptr [esi + eax*4 + 0e3eh] ; 0040f3ed
L_0040f3f5:
    jmp L_0040f3ff ; 0040f3f5
L_0040f3f7:
    movsx eax, word ptr [esi + eax*4 + 0e3ch] ; 0040f3f7
L_0040f3ff:
    shr ecx, 1 ; 0040f3ff
L_0040f402:
    test eax, eax ; 0040f402
L_0040f404:
    jl L_0040f3e5 ; 0040f404
L_0040f406:
    mov ecx, dword ptr [esp + 014h] ; 0040f406
L_0040f40a:
    cmp dword ptr [esp + 02ch], ecx ; 0040f40a
L_0040f40e:
    jbe L_0040f6e8 ; 0040f40e
L_0040f414:
    mov cl, byte ptr [eax + esi + 0a18h] ; 0040f414
L_0040f41b:
    shl dword ptr [esp + 010h], cl ; 0040f41b
L_0040f41f:
    sub dl, cl ; 0040f41f
L_0040f421:
    test dl, dl ; 0040f421
L_0040f423:
    jg L_0040f455 ; 0040f423
L_0040f425:
    xor ebx, ebx ; 0040f425
L_0040f427:
    mov ecx, dword ptr [esp + 014h] ; 0040f427
L_0040f42b:
    mov dword ptr [esp + 018h], 0 ; 0040f42b
L_0040f433:
    mov bl, byte ptr [ecx + 1] ; 0040f433
L_0040f436:
    mov cl, byte ptr [ecx] ; 0040f436
L_0040f438:
    shl ebx, 8 ; 0040f438
L_0040f43b:
    mov byte ptr [esp + 018h], cl ; 0040f43b
L_0040f43f:
    or ebx, dword ptr [esp + 018h] ; 0040f43f
L_0040f443:
    mov cl, dl ; 0040f443
L_0040f445:
    neg cl ; 0040f445
L_0040f447:
    shl ebx, cl ; 0040f447
L_0040f449:
    add dl, 010h ; 0040f449
L_0040f44c:
    or dword ptr [esp + 010h], ebx ; 0040f44c
L_0040f450:
    add dword ptr [esp + 014h], 2 ; 0040f450
L_0040f455:
    sub eax, 0100h ; 0040f455
L_0040f45a:
    jns L_0040f470 ; 0040f45a
L_0040f45c:
    mov ebx, dword ptr [esp + 024h] ; 0040f45c
L_0040f460:
    mov ecx, dword ptr [esp + 038h] ; 0040f460
L_0040f464:
    inc dword ptr [esp + 038h] ; 0040f464
L_0040f468:
    mov byte ptr [ebx + ecx], al ; 0040f468
L_0040f46b:
    jmp L_0040f69f ; 0040f46b
L_0040f470:
    mov edi, eax ; 0040f470
L_0040f472:
    and edi, 7 ; 0040f472
L_0040f475:
    cmp edi, 7 ; 0040f475
L_0040f478:
    jne L_0040f512 ; 0040f478
L_0040f47e:
    mov ecx, dword ptr [esp + 010h] ; 0040f47e
L_0040f482:
    and ecx, 0ff7fffffh ; 0040f482
L_0040f488:
    shr ecx, 017h ; 0040f488
L_0040f48b:
    movsx edi, word ptr [ecx + esi + 0818h] ; 0040f48b
L_0040f493:
    test edi, edi ; 0040f493
L_0040f495:
    jge L_0040f4bd ; 0040f495
L_0040f497:
    mov ecx, 0800000h ; 0040f497
L_0040f49c:
    neg edi ; 0040f49c
L_0040f49e:
    test dword ptr [esp + 010h], ecx ; 0040f49e
L_0040f4a2:
    je L_0040f4ae ; 0040f4a2
L_0040f4a4:
    movsx edi, word ptr [esi + edi*4 + 0233eh] ; 0040f4a4
L_0040f4ac:
    jmp L_0040f4b6 ; 0040f4ac
L_0040f4ae:
    movsx edi, word ptr [esi + edi*4 + 0233ch] ; 0040f4ae
L_0040f4b6:
    shr ecx, 1 ; 0040f4b6
L_0040f4b9:
    test edi, edi ; 0040f4b9
L_0040f4bb:
    jl L_0040f49c ; 0040f4bb
L_0040f4bd:
    mov cl, byte ptr [edi + esi + 0cb8h] ; 0040f4bd
L_0040f4c4:
    shl dword ptr [esp + 010h], cl ; 0040f4c4
L_0040f4c8:
    sub dl, cl ; 0040f4c8
L_0040f4ca:
    test dl, dl ; 0040f4ca
L_0040f4cc:
    jg L_0040f50f ; 0040f4cc
L_0040f4ce:
    mov ecx, dword ptr [esp + 014h] ; 0040f4ce
L_0040f4d2:
    xor ebx, ebx ; 0040f4d2
L_0040f4d4:
    mov dword ptr [esp + 018h], 0 ; 0040f4d4
L_0040f4dc:
    mov cl, byte ptr [ecx + 1] ; 0040f4dc
L_0040f4df:
    mov ebp, dword ptr [esp + 014h] ; 0040f4df
L_0040f4e3:
    mov byte ptr [esp + 018h], cl ; 0040f4e3
L_0040f4e7:
    mov bl, byte ptr [ebp] ; 0040f4e7
L_0040f4ea:
    shl dword ptr [esp + 018h], 8 ; 0040f4ea
L_0040f4ef:
    mov cl, dl ; 0040f4ef
L_0040f4f1:
    or dword ptr [esp + 018h], ebx ; 0040f4f1
L_0040f4f5:
    neg cl ; 0040f4f5
L_0040f4f7:
    shl dword ptr [esp + 018h], cl ; 0040f4f7
L_0040f4fb:
    mov ecx, dword ptr [esp + 010h] ; 0040f4fb
L_0040f4ff:
    add dl, 010h ; 0040f4ff
L_0040f502:
    add dword ptr [esp + 014h], 2 ; 0040f502
L_0040f507:
    or ecx, dword ptr [esp + 018h] ; 0040f507
L_0040f50b:
    mov dword ptr [esp + 010h], ecx ; 0040f50b
L_0040f50f:
    add edi, 7 ; 0040f50f
L_0040f512:
    sar eax, 3 ; 0040f512
L_0040f515:
    cmp al, 2 ; 0040f515
L_0040f517:
    jle L_0040f65f ; 0040f517
L_0040f51d:
    movsx eax, al ; 0040f51d
L_0040f520:
    mov dword ptr [esp + 018h], eax ; 0040f520
L_0040f524:
    mov al, byte ptr [eax + _kb_rdata + 6592] ; 0040f524
L_0040f52a:
    cmp al, 3 ; 0040f52a
L_0040f52c:
    jb L_0040f5e8 ; 0040f52c
L_0040f532:
    je L_0040f578 ; 0040f532
L_0040f534:
    mov ebx, dword ptr [esp + 010h] ; 0040f534
L_0040f538:
    mov cl, 023h ; 0040f538
L_0040f53a:
    sub cl, al ; 0040f53a
L_0040f53c:
    sub dl, al ; 0040f53c
L_0040f53e:
    shr ebx, cl ; 0040f53e
L_0040f540:
    lea ecx, [eax - 3] ; 0040f540
L_0040f543:
    add dl, 3 ; 0040f543
L_0040f546:
    shl dword ptr [esp + 010h], cl ; 0040f546
L_0040f54a:
    mov dword ptr [esp + 020h], ebx ; 0040f54a
L_0040f54e:
    test dl, dl ; 0040f54e
L_0040f550:
    jg L_0040f580 ; 0040f550
L_0040f552:
    xor eax, eax ; 0040f552
L_0040f554:
    mov ecx, dword ptr [esp + 014h] ; 0040f554
L_0040f558:
    xor ebx, ebx ; 0040f558
L_0040f55a:
    mov al, byte ptr [ecx + 1] ; 0040f55a
L_0040f55d:
    shl eax, 8 ; 0040f55d
L_0040f560:
    mov bl, byte ptr [ecx] ; 0040f560
L_0040f562:
    or eax, ebx ; 0040f562
L_0040f564:
    mov cl, dl ; 0040f564
L_0040f566:
    neg cl ; 0040f566
L_0040f568:
    shl eax, cl ; 0040f568
L_0040f56a:
    add dl, 010h ; 0040f56a
L_0040f56d:
    or dword ptr [esp + 010h], eax ; 0040f56d
L_0040f571:
    add dword ptr [esp + 014h], 2 ; 0040f571
L_0040f576:
    jmp L_0040f580 ; 0040f576
L_0040f578:
    mov dword ptr [esp + 020h], 0 ; 0040f578
L_0040f580:
    mov eax, dword ptr [esp + 018h] ; 0040f580
L_0040f584:
    mov ebx, dword ptr [esp + 020h] ; 0040f584
L_0040f588:
    mov ecx, dword ptr [eax*4 + _kb_rdata + 6648] ; 0040f588
L_0040f58f:
    lea eax, [ecx + ebx*8] ; 0040f58f
L_0040f592:
    mov dword ptr [esp + 01ch], eax ; 0040f592
L_0040f596:
    mov eax, dword ptr [esp + 010h] ; 0040f596
L_0040f59a:
    shr eax, 019h ; 0040f59a
L_0040f59d:
    movsx ecx, byte ptr [eax + esi + 0db4h] ; 0040f59d
L_0040f5a5:
    mov dword ptr [esp + 020h], ecx ; 0040f5a5
L_0040f5a9:
    mov cl, byte ptr [ecx + esi + 0e34h] ; 0040f5a9
L_0040f5b0:
    shl dword ptr [esp + 010h], cl ; 0040f5b0
L_0040f5b4:
    sub dl, cl ; 0040f5b4
L_0040f5b6:
    test dl, dl ; 0040f5b6
L_0040f5b8:
    jg L_0040f5de ; 0040f5b8
L_0040f5ba:
    xor eax, eax ; 0040f5ba
L_0040f5bc:
    mov ecx, dword ptr [esp + 014h] ; 0040f5bc
L_0040f5c0:
    xor ebx, ebx ; 0040f5c0
L_0040f5c2:
    mov al, byte ptr [ecx + 1] ; 0040f5c2
L_0040f5c5:
    shl eax, 8 ; 0040f5c5
L_0040f5c8:
    mov bl, byte ptr [ecx] ; 0040f5c8
L_0040f5ca:
    or eax, ebx ; 0040f5ca
L_0040f5cc:
    mov cl, dl ; 0040f5cc
L_0040f5ce:
    neg cl ; 0040f5ce
L_0040f5d0:
    shl eax, cl ; 0040f5d0
L_0040f5d2:
    add dl, 010h ; 0040f5d2
L_0040f5d5:
    or dword ptr [esp + 010h], eax ; 0040f5d5
L_0040f5d9:
    add dword ptr [esp + 014h], 2 ; 0040f5d9
L_0040f5de:
    mov ecx, dword ptr [esp + 020h] ; 0040f5de
L_0040f5e2:
    add dword ptr [esp + 01ch], ecx ; 0040f5e2
L_0040f5e6:
    jmp L_0040f64a ; 0040f5e6
L_0040f5e8:
    test al, al ; 0040f5e8
L_0040f5ea:
    je L_0040f63b ; 0040f5ea
L_0040f5ec:
    mov ebx, dword ptr [esp + 010h] ; 0040f5ec
L_0040f5f0:
    mov cl, 020h ; 0040f5f0
L_0040f5f2:
    sub cl, al ; 0040f5f2
L_0040f5f4:
    sub dl, al ; 0040f5f4
L_0040f5f6:
    shr ebx, cl ; 0040f5f6
L_0040f5f8:
    mov cl, al ; 0040f5f8
L_0040f5fa:
    mov dword ptr [esp + 01ch], ebx ; 0040f5fa
L_0040f5fe:
    shl dword ptr [esp + 010h], cl ; 0040f5fe
L_0040f602:
    test dl, dl ; 0040f602
L_0040f604:
    jg L_0040f62a ; 0040f604
L_0040f606:
    xor eax, eax ; 0040f606
L_0040f608:
    mov ecx, dword ptr [esp + 014h] ; 0040f608
L_0040f60c:
    xor ebx, ebx ; 0040f60c
L_0040f60e:
    mov al, byte ptr [ecx + 1] ; 0040f60e
L_0040f611:
    shl eax, 8 ; 0040f611
L_0040f614:
    mov bl, byte ptr [ecx] ; 0040f614
L_0040f616:
    or eax, ebx ; 0040f616
L_0040f618:
    mov cl, dl ; 0040f618
L_0040f61a:
    neg cl ; 0040f61a
L_0040f61c:
    shl eax, cl ; 0040f61c
L_0040f61e:
    add dl, 010h ; 0040f61e
L_0040f621:
    or dword ptr [esp + 010h], eax ; 0040f621
L_0040f625:
    add dword ptr [esp + 014h], 2 ; 0040f625
L_0040f62a:
    mov eax, dword ptr [esp + 018h] ; 0040f62a
L_0040f62e:
    mov ecx, dword ptr [eax*4 + _kb_rdata + 6648] ; 0040f62e
L_0040f635:
    add dword ptr [esp + 01ch], ecx ; 0040f635
L_0040f639:
    jmp L_0040f64a ; 0040f639
L_0040f63b:
    mov eax, dword ptr [esp + 018h] ; 0040f63b
L_0040f63f:
    mov ecx, dword ptr [eax*4 + _kb_rdata + 6648] ; 0040f63f
L_0040f646:
    mov dword ptr [esp + 01ch], ecx ; 0040f646
L_0040f64a:
    mov eax, dword ptr [esi + 010h] ; 0040f64a
L_0040f64d:
    mov ecx, dword ptr [esi + 0ch] ; 0040f64d
L_0040f650:
    mov ebx, dword ptr [esp + 01ch] ; 0040f650
L_0040f654:
    mov dword ptr [esi + 014h], eax ; 0040f654
L_0040f657:
    mov dword ptr [esi + 010h], ecx ; 0040f657
L_0040f65a:
    mov dword ptr [esi + 0ch], ebx ; 0040f65a
L_0040f65d:
    jmp L_0040f678 ; 0040f65d
L_0040f65f:
    movsx ecx, al ; 0040f65f
L_0040f662:
    test al, al ; 0040f662
L_0040f664:
    lea ebx, [esi + ecx*4 + 0ch] ; 0040f664
L_0040f668:
    mov ebp, dword ptr [ebx] ; 0040f668
L_0040f66a:
    mov dword ptr [esp + 01ch], ebp ; 0040f66a
L_0040f66e:
    je L_0040f678 ; 0040f66e
L_0040f670:
    mov eax, dword ptr [esi + 0ch] ; 0040f670
L_0040f673:
    mov dword ptr [ebx], eax ; 0040f673
L_0040f675:
    mov dword ptr [esi + 0ch], ebp ; 0040f675
L_0040f678:
    add edi, 2 ; 0040f678
L_0040f67b:
    mov ebp, dword ptr [esp + 038h] ; 0040f67b
L_0040f67f:
    sub ebp, dword ptr [esp + 01ch] ; 0040f67f
L_0040f683:
    and ebp, dword ptr [esi + 8] ; 0040f683
L_0040f686:
    mov ebx, dword ptr [esp + 024h] ; 0040f686
L_0040f68a:
    mov ecx, dword ptr [esp + 038h] ; 0040f68a
L_0040f68e:
    inc ebp ; 0040f68e
L_0040f68f:
    dec edi ; 0040f68f
L_0040f690:
    inc dword ptr [esp + 038h] ; 0040f690
L_0040f694:
    mov al, byte ptr [ebx + ebp - 1] ; 0040f694
L_0040f698:
    mov byte ptr [ebx + ecx], al ; 0040f698
L_0040f69b:
    test edi, edi ; 0040f69b
L_0040f69d:
    jg L_0040f686 ; 0040f69d
L_0040f69f:
    mov ecx, dword ptr [esp + 038h] ; 0040f69f
L_0040f6a3:
    cmp ecx, dword ptr [esp + 028h] ; 0040f6a3
L_0040f6a7:
    jl L_0040f3cb ; 0040f6a7
L_0040f6ad:
    mov ecx, dword ptr [esp + 010h] ; 0040f6ad
L_0040f6b1:
    mov eax, dword ptr [esp + 014h] ; 0040f6b1
L_0040f6b5:
    mov byte ptr [esi + 02eb4h], dl ; 0040f6b5
L_0040f6bb:
    mov dword ptr [esi + 02eb0h], ecx ; 0040f6bb
L_0040f6c1:
    mov ecx, dword ptr [esp + 038h] ; 0040f6c1
L_0040f6c5:
    mov dword ptr [esi + 02b04h], eax ; 0040f6c5
L_0040f6cb:
    mov eax, dword ptr [esp + 038h] ; 0040f6cb
L_0040f6cf:
    and ecx, dword ptr [esi + 8] ; 0040f6cf
L_0040f6d2:
    sub eax, dword ptr [esp + 028h] ; 0040f6d2
L_0040f6d6:
    mov dword ptr [esp + 038h], ecx ; 0040f6d6
L_0040f6da:
    pop ebp ; 0040f6da
L_0040f6db:
    mov dword ptr [esi + 02ec0h], ecx ; 0040f6db
L_0040f6e1:
    pop edi ; 0040f6e1
L_0040f6e2:
    pop esi ; 0040f6e2
L_0040f6e3:
    pop ebx ; 0040f6e3
L_0040f6e4:
    add esp, 020h ; 0040f6e4
L_0040f6e7:
    retn  ; 0040f6e7
L_0040f6e8:
    mov eax, 0ffffffffh ; 0040f6e8
L_0040f6ed:
    pop ebp ; 0040f6ed
L_0040f6ee:
    pop edi ; 0040f6ee
L_0040f6ef:
    pop esi ; 0040f6ef
L_0040f6f0:
    pop ebx ; 0040f6f0
L_0040f6f1:
    add esp, 020h ; 0040f6f1
L_0040f6f4:
    retn  ; 0040f6f4
L_0040f6f5:
    db 0cch
L_0040f6f6:
    db 0cch
L_0040f6f7:
    db 0cch
L_0040f6f8:
    db 0cch
L_0040f6f9:
    db 0cch
L_0040f6fa:
    db 0cch
L_0040f6fb:
    db 0cch
L_0040f6fc:
    db 0cch
L_0040f6fd:
    db 0cch
L_0040f6fe:
    db 0cch
L_0040f6ff:
    db 0cch
L_0040f700:
    push ebx ; 0040f700
L_0040f701:
    push esi ; 0040f701
L_0040f702:
    push edi ; 0040f702
L_0040f703:
    mov edi, dword ptr [esp + 014h] ; 0040f703
L_0040f707:
    cmp edi, 0101h ; 0040f707
L_0040f70d:
    jge L_0040f745 ; 0040f70d
L_0040f70f:
    mov eax, 0101h ; 0040f70f
L_0040f714:
    mov ebx, dword ptr [esp + 018h] ; 0040f714
L_0040f718:
    sub eax, edi ; 0040f718
L_0040f71a:
    cmp eax, ebx ; 0040f71a
L_0040f71c:
    jl L_0040f720 ; 0040f71c
L_0040f71e:
    mov eax, ebx ; 0040f71e
L_0040f720:
    mov esi, dword ptr [esp + 010h] ; 0040f720
L_0040f724:
    push eax ; 0040f724
L_0040f725:
    push edi ; 0040f725
L_0040f726:
    push esi ; 0040f726
L_0040f727:
    call L_0040f760 ; 0040f727
L_0040f72c:
    add esp, 0ch ; 0040f72c
L_0040f72f:
    sub ebx, eax ; 0040f72f
L_0040f731:
    add ebx, edi ; 0040f731
L_0040f733:
    mov dword ptr [esi + 02ec0h], eax ; 0040f733
L_0040f739:
    mov edi, eax ; 0040f739
L_0040f73b:
    test ebx, ebx ; 0040f73b
L_0040f73d:
    jg L_0040f74d ; 0040f73d
L_0040f73f:
    mov eax, ebx ; 0040f73f
L_0040f741:
    pop edi ; 0040f741
L_0040f742:
    pop esi ; 0040f742
L_0040f743:
    pop ebx ; 0040f743
L_0040f744:
    retn  ; 0040f744
L_0040f745:
    mov esi, dword ptr [esp + 010h] ; 0040f745
L_0040f749:
    mov ebx, dword ptr [esp + 018h] ; 0040f749
L_0040f74d:
    push ebx ; 0040f74d
L_0040f74e:
    push edi ; 0040f74e
L_0040f74f:
    push esi ; 0040f74f
L_0040f750:
    call L_0040f380 ; 0040f750
L_0040f755:
    add esp, 0ch ; 0040f755
L_0040f758:
    pop edi ; 0040f758
L_0040f759:
    pop esi ; 0040f759
L_0040f75a:
    pop ebx ; 0040f75a
L_0040f75b:
    retn  ; 0040f75b
L_0040f75c:
    db 0cch
L_0040f75d:
    db 0cch
L_0040f75e:
    db 0cch
L_0040f75f:
    db 0cch
L_0040f760:
    sub esp, 01ch ; 0040f760
L_0040f763:
    push ebx ; 0040f763
L_0040f764:
    push esi ; 0040f764
L_0040f765:
    mov esi, dword ptr [esp + 028h] ; 0040f765
L_0040f769:
    push edi ; 0040f769
L_0040f76a:
    push ebp ; 0040f76a
L_0040f76b:
    mov dl, byte ptr [esi + 02eb4h] ; 0040f76b
L_0040f771:
    mov ecx, dword ptr [esi + 02eb0h] ; 0040f771
L_0040f777:
    mov ebp, dword ptr [esi + 02b04h] ; 0040f777
L_0040f77d:
    mov eax, dword ptr [esi + 02b08h] ; 0040f77d
L_0040f783:
    mov dword ptr [esp + 014h], ecx ; 0040f783
L_0040f787:
    mov ecx, dword ptr [esi] ; 0040f787
L_0040f789:
    mov dword ptr [esp + 028h], eax ; 0040f789
L_0040f78d:
    mov eax, dword ptr [esp + 034h] ; 0040f78d
L_0040f791:
    mov dword ptr [esp + 01ch], ecx ; 0040f791
L_0040f795:
    mov ecx, dword ptr [esp + 038h] ; 0040f795
L_0040f799:
    add ecx, eax ; 0040f799
L_0040f79b:
    mov dword ptr [esp + 024h], ecx ; 0040f79b
L_0040f79f:
    cmp eax, ecx ; 0040f79f
L_0040f7a1:
    jge L_0040fa90 ; 0040f7a1
L_0040f7a7:
    mov ecx, dword ptr [esp + 014h] ; 0040f7a7
L_0040f7ab:
    and ecx, 0ffdfffffh ; 0040f7ab
L_0040f7b1:
    shr ecx, 015h ; 0040f7b1
L_0040f7b4:
    movsx ebx, word ptr [ecx + esi + 018h] ; 0040f7b4
L_0040f7b9:
    test ebx, ebx ; 0040f7b9
L_0040f7bb:
    jge L_0040f7e3 ; 0040f7bb
L_0040f7bd:
    mov ecx, 0200000h ; 0040f7bd
L_0040f7c2:
    neg ebx ; 0040f7c2
L_0040f7c4:
    test dword ptr [esp + 014h], ecx ; 0040f7c4
L_0040f7c8:
    je L_0040f7d4 ; 0040f7c8
L_0040f7ca:
    movsx ebx, word ptr [esi + ebx*4 + 0e3eh] ; 0040f7ca
L_0040f7d2:
    jmp L_0040f7dc ; 0040f7d2
L_0040f7d4:
    movsx ebx, word ptr [esi + ebx*4 + 0e3ch] ; 0040f7d4
L_0040f7dc:
    shr ecx, 1 ; 0040f7dc
L_0040f7df:
    test ebx, ebx ; 0040f7df
L_0040f7e1:
    jl L_0040f7c2 ; 0040f7e1
L_0040f7e3:
    cmp dword ptr [esp + 028h], ebp ; 0040f7e3
L_0040f7e7:
    jbe L_0040faae ; 0040f7e7
L_0040f7ed:
    mov cl, byte ptr [ebx + esi + 0a18h] ; 0040f7ed
L_0040f7f4:
    shl dword ptr [esp + 014h], cl ; 0040f7f4
L_0040f7f8:
    sub dl, cl ; 0040f7f8
L_0040f7fa:
    test dl, dl ; 0040f7fa
L_0040f7fc:
    jg L_0040f835 ; 0040f7fc
L_0040f7fe:
    mov dword ptr [esp + 010h], 0 ; 0040f7fe
L_0040f806:
    mov cl, byte ptr [ebp + 1] ; 0040f806
L_0040f809:
    mov byte ptr [esp + 010h], cl ; 0040f809
L_0040f80d:
    xor ecx, ecx ; 0040f80d
L_0040f80f:
    shl dword ptr [esp + 010h], 8 ; 0040f80f
L_0040f814:
    mov cl, byte ptr [ebp] ; 0040f814
L_0040f817:
    or dword ptr [esp + 010h], ecx ; 0040f817
L_0040f81b:
    mov cl, dl ; 0040f81b
L_0040f81d:
    add ebp, 2 ; 0040f81d
L_0040f820:
    add dl, 010h ; 0040f820
L_0040f823:
    neg cl ; 0040f823
L_0040f825:
    shl dword ptr [esp + 010h], cl ; 0040f825
L_0040f829:
    mov ecx, dword ptr [esp + 014h] ; 0040f829
L_0040f82d:
    or ecx, dword ptr [esp + 010h] ; 0040f82d
L_0040f831:
    mov dword ptr [esp + 014h], ecx ; 0040f831
L_0040f835:
    sub ebx, 0100h ; 0040f835
L_0040f83b:
    jns L_0040f852 ; 0040f83b
L_0040f83d:
    mov ecx, dword ptr [esp + 01ch] ; 0040f83d
L_0040f841:
    mov byte ptr [ecx + eax], bl ; 0040f841
L_0040f844:
    mov edi, dword ptr [esi + 4] ; 0040f844
L_0040f847:
    add edi, eax ; 0040f847
L_0040f849:
    inc eax ; 0040f849
L_0040f84a:
    mov byte ptr [edi + ecx], bl ; 0040f84a
L_0040f84d:
    jmp L_0040fa86 ; 0040f84d
L_0040f852:
    mov edi, ebx ; 0040f852
L_0040f854:
    and edi, 7 ; 0040f854
L_0040f857:
    cmp edi, 7 ; 0040f857
L_0040f85a:
    jne L_0040f8ea ; 0040f85a
L_0040f860:
    mov ecx, dword ptr [esp + 014h] ; 0040f860
L_0040f864:
    and ecx, 0ff7fffffh ; 0040f864
L_0040f86a:
    shr ecx, 017h ; 0040f86a
L_0040f86d:
    movsx edi, word ptr [ecx + esi + 0818h] ; 0040f86d
L_0040f875:
    test edi, edi ; 0040f875
L_0040f877:
    jge L_0040f89f ; 0040f877
L_0040f879:
    mov ecx, 0800000h ; 0040f879
L_0040f87e:
    neg edi ; 0040f87e
L_0040f880:
    test dword ptr [esp + 014h], ecx ; 0040f880
L_0040f884:
    je L_0040f890 ; 0040f884
L_0040f886:
    movsx edi, word ptr [esi + edi*4 + 0233eh] ; 0040f886
L_0040f88e:
    jmp L_0040f898 ; 0040f88e
L_0040f890:
    movsx edi, word ptr [esi + edi*4 + 0233ch] ; 0040f890
L_0040f898:
    shr ecx, 1 ; 0040f898
L_0040f89b:
    test edi, edi ; 0040f89b
L_0040f89d:
    jl L_0040f87e ; 0040f89d
L_0040f89f:
    mov cl, byte ptr [edi + esi + 0cb8h] ; 0040f89f
L_0040f8a6:
    shl dword ptr [esp + 014h], cl ; 0040f8a6
L_0040f8aa:
    sub dl, cl ; 0040f8aa
L_0040f8ac:
    test dl, dl ; 0040f8ac
L_0040f8ae:
    jg L_0040f8e7 ; 0040f8ae
L_0040f8b0:
    mov dword ptr [esp + 010h], 0 ; 0040f8b0
L_0040f8b8:
    mov cl, byte ptr [ebp + 1] ; 0040f8b8
L_0040f8bb:
    mov byte ptr [esp + 010h], cl ; 0040f8bb
L_0040f8bf:
    xor ecx, ecx ; 0040f8bf
L_0040f8c1:
    shl dword ptr [esp + 010h], 8 ; 0040f8c1
L_0040f8c6:
    mov cl, byte ptr [ebp] ; 0040f8c6
L_0040f8c9:
    or dword ptr [esp + 010h], ecx ; 0040f8c9
L_0040f8cd:
    mov cl, dl ; 0040f8cd
L_0040f8cf:
    add ebp, 2 ; 0040f8cf
L_0040f8d2:
    add dl, 010h ; 0040f8d2
L_0040f8d5:
    neg cl ; 0040f8d5
L_0040f8d7:
    shl dword ptr [esp + 010h], cl ; 0040f8d7
L_0040f8db:
    mov ecx, dword ptr [esp + 014h] ; 0040f8db
L_0040f8df:
    or ecx, dword ptr [esp + 010h] ; 0040f8df
L_0040f8e3:
    mov dword ptr [esp + 014h], ecx ; 0040f8e3
L_0040f8e7:
    add edi, 7 ; 0040f8e7
L_0040f8ea:
    sar ebx, 3 ; 0040f8ea
L_0040f8ed:
    movsx ecx, bl ; 0040f8ed
L_0040f8f0:
    cmp bl, 2 ; 0040f8f0
L_0040f8f3:
    jle L_0040fa37 ; 0040f8f3
L_0040f8f9:
    mov bl, byte ptr [ecx + _kb_rdata + 6592] ; 0040f8f9
L_0040f8ff:
    mov dword ptr [esp + 020h], ecx ; 0040f8ff
L_0040f903:
    cmp bl, 3 ; 0040f903
L_0040f906:
    jb L_0040f9c2 ; 0040f906
L_0040f90c:
    je L_0040f957 ; 0040f90c
L_0040f90e:
    mov ecx, dword ptr [esp + 014h] ; 0040f90e
L_0040f912:
    mov dword ptr [esp + 010h], ecx ; 0040f912
L_0040f916:
    mov cl, 023h ; 0040f916
L_0040f918:
    sub cl, bl ; 0040f918
L_0040f91a:
    sub dl, bl ; 0040f91a
L_0040f91c:
    shr dword ptr [esp + 010h], cl ; 0040f91c
L_0040f920:
    mov ecx, dword ptr [esp + 010h] ; 0040f920
L_0040f924:
    add dl, 3 ; 0040f924
L_0040f927:
    mov dword ptr [esp + 010h], ecx ; 0040f927
L_0040f92b:
    lea ecx, [ebx - 3] ; 0040f92b
L_0040f92e:
    shl dword ptr [esp + 014h], cl ; 0040f92e
L_0040f932:
    test dl, dl ; 0040f932
L_0040f934:
    jg L_0040f95f ; 0040f934
L_0040f936:
    xor ebx, ebx ; 0040f936
L_0040f938:
    xor ecx, ecx ; 0040f938
L_0040f93a:
    mov bl, byte ptr [ebp + 1] ; 0040f93a
L_0040f93d:
    mov cl, byte ptr [ebp] ; 0040f93d
L_0040f940:
    shl ebx, 8 ; 0040f940
L_0040f943:
    add ebp, 2 ; 0040f943
L_0040f946:
    or ebx, ecx ; 0040f946
L_0040f948:
    mov cl, dl ; 0040f948
L_0040f94a:
    neg cl ; 0040f94a
L_0040f94c:
    shl ebx, cl ; 0040f94c
L_0040f94e:
    add dl, 010h ; 0040f94e
L_0040f951:
    or dword ptr [esp + 014h], ebx ; 0040f951
L_0040f955:
    jmp L_0040f95f ; 0040f955
L_0040f957:
    mov dword ptr [esp + 010h], 0 ; 0040f957
L_0040f95f:
    mov ecx, dword ptr [esp + 020h] ; 0040f95f
L_0040f963:
    mov ebx, dword ptr [ecx*4 + _kb_rdata + 6648] ; 0040f963
L_0040f96a:
    mov ecx, dword ptr [esp + 010h] ; 0040f96a
L_0040f96e:
    lea ebx, [ebx + ecx*8] ; 0040f96e
L_0040f971:
    mov ecx, dword ptr [esp + 014h] ; 0040f971
L_0040f975:
    shr ecx, 019h ; 0040f975
L_0040f978:
    mov dword ptr [esp + 018h], ebx ; 0040f978
L_0040f97c:
    movsx ebx, byte ptr [ecx + esi + 0db4h] ; 0040f97c
L_0040f984:
    mov dword ptr [esp + 010h], ebx ; 0040f984
L_0040f988:
    mov cl, byte ptr [ebx + esi + 0e34h] ; 0040f988
L_0040f98f:
    shl dword ptr [esp + 014h], cl ; 0040f98f
L_0040f993:
    sub dl, cl ; 0040f993
L_0040f995:
    test dl, dl ; 0040f995
L_0040f997:
    jg L_0040f9b8 ; 0040f997
L_0040f999:
    xor ebx, ebx ; 0040f999
L_0040f99b:
    xor ecx, ecx ; 0040f99b
L_0040f99d:
    mov bl, byte ptr [ebp + 1] ; 0040f99d
L_0040f9a0:
    mov cl, byte ptr [ebp] ; 0040f9a0
L_0040f9a3:
    shl ebx, 8 ; 0040f9a3
L_0040f9a6:
    add ebp, 2 ; 0040f9a6
L_0040f9a9:
    or ebx, ecx ; 0040f9a9
L_0040f9ab:
    mov cl, dl ; 0040f9ab
L_0040f9ad:
    neg cl ; 0040f9ad
L_0040f9af:
    shl ebx, cl ; 0040f9af
L_0040f9b1:
    add dl, 010h ; 0040f9b1
L_0040f9b4:
    or dword ptr [esp + 014h], ebx ; 0040f9b4
L_0040f9b8:
    mov ecx, dword ptr [esp + 010h] ; 0040f9b8
L_0040f9bc:
    add dword ptr [esp + 018h], ecx ; 0040f9bc
L_0040f9c0:
    jmp L_0040fa22 ; 0040f9c0
L_0040f9c2:
    test bl, bl ; 0040f9c2
L_0040f9c4:
    je L_0040fa1a ; 0040f9c4
L_0040f9c6:
    mov ecx, dword ptr [esp + 014h] ; 0040f9c6
L_0040f9ca:
    mov dword ptr [esp + 010h], ecx ; 0040f9ca
L_0040f9ce:
    mov cl, 020h ; 0040f9ce
L_0040f9d0:
    sub cl, bl ; 0040f9d0
L_0040f9d2:
    sub dl, bl ; 0040f9d2
L_0040f9d4:
    shr dword ptr [esp + 010h], cl ; 0040f9d4
L_0040f9d8:
    mov ecx, dword ptr [esp + 010h] ; 0040f9d8
L_0040f9dc:
    mov dword ptr [esp + 018h], ecx ; 0040f9dc
L_0040f9e0:
    mov cl, bl ; 0040f9e0
L_0040f9e2:
    shl dword ptr [esp + 014h], cl ; 0040f9e2
L_0040f9e6:
    test dl, dl ; 0040f9e6
L_0040f9e8:
    jg L_0040fa09 ; 0040f9e8
L_0040f9ea:
    xor ebx, ebx ; 0040f9ea
L_0040f9ec:
    xor ecx, ecx ; 0040f9ec
L_0040f9ee:
    mov bl, byte ptr [ebp + 1] ; 0040f9ee
L_0040f9f1:
    mov cl, byte ptr [ebp] ; 0040f9f1
L_0040f9f4:
    shl ebx, 8 ; 0040f9f4
L_0040f9f7:
    add ebp, 2 ; 0040f9f7
L_0040f9fa:
    or ebx, ecx ; 0040f9fa
L_0040f9fc:
    mov cl, dl ; 0040f9fc
L_0040f9fe:
    neg cl ; 0040f9fe
L_0040fa00:
    shl ebx, cl ; 0040fa00
L_0040fa02:
    add dl, 010h ; 0040fa02
L_0040fa05:
    or dword ptr [esp + 014h], ebx ; 0040fa05
L_0040fa09:
    mov ecx, dword ptr [esp + 020h] ; 0040fa09
L_0040fa0d:
    mov ebx, dword ptr [ecx*4 + _kb_rdata + 6648] ; 0040fa0d
L_0040fa14:
    add dword ptr [esp + 018h], ebx ; 0040fa14
L_0040fa18:
    jmp L_0040fa22 ; 0040fa18
L_0040fa1a:
    mov dword ptr [esp + 018h], 1 ; 0040fa1a
L_0040fa22:
    mov ecx, dword ptr [esi + 010h] ; 0040fa22
L_0040fa25:
    mov ebx, dword ptr [esi + 0ch] ; 0040fa25
L_0040fa28:
    mov dword ptr [esi + 014h], ecx ; 0040fa28
L_0040fa2b:
    mov dword ptr [esi + 010h], ebx ; 0040fa2b
L_0040fa2e:
    mov ecx, dword ptr [esp + 018h] ; 0040fa2e
L_0040fa32:
    mov dword ptr [esi + 0ch], ecx ; 0040fa32
L_0040fa35:
    jmp L_0040fa59 ; 0040fa35
L_0040fa37:
    lea ecx, [esi + ecx*4 + 0ch] ; 0040fa37
L_0040fa3b:
    test bl, bl ; 0040fa3b
L_0040fa3d:
    mov dword ptr [esp + 010h], ecx ; 0040fa3d
L_0040fa41:
    mov ecx, dword ptr [ecx] ; 0040fa41
L_0040fa43:
    mov dword ptr [esp + 018h], ecx ; 0040fa43
L_0040fa47:
    je L_0040fa59 ; 0040fa47
L_0040fa49:
    mov ebx, dword ptr [esi + 0ch] ; 0040fa49
L_0040fa4c:
    mov ecx, dword ptr [esp + 010h] ; 0040fa4c
L_0040fa50:
    mov dword ptr [ecx], ebx ; 0040fa50
L_0040fa52:
    mov ebx, dword ptr [esp + 018h] ; 0040fa52
L_0040fa56:
    mov dword ptr [esi + 0ch], ebx ; 0040fa56
L_0040fa59:
    add edi, 2 ; 0040fa59
L_0040fa5c:
    mov ebx, eax ; 0040fa5c
L_0040fa5e:
    mov ecx, dword ptr [esp + 01ch] ; 0040fa5e
L_0040fa62:
    sub ebx, dword ptr [esp + 018h] ; 0040fa62
L_0040fa66:
    and ebx, dword ptr [esi + 8] ; 0040fa66
L_0040fa69:
    cmp eax, 0101h ; 0040fa69
L_0040fa6e:
    mov bl, byte ptr [ebx + ecx] ; 0040fa6e
L_0040fa71:
    mov byte ptr [ecx + eax], bl ; 0040fa71
L_0040fa74:
    jge L_0040fa80 ; 0040fa74
L_0040fa76:
    mov ecx, dword ptr [esi + 4] ; 0040fa76
L_0040fa79:
    add ecx, dword ptr [esp + 01ch] ; 0040fa79
L_0040fa7d:
    mov byte ptr [ecx + eax], bl ; 0040fa7d
L_0040fa80:
    inc eax ; 0040fa80
L_0040fa81:
    dec edi ; 0040fa81
L_0040fa82:
    test edi, edi ; 0040fa82
L_0040fa84:
    jg L_0040fa5c ; 0040fa84
L_0040fa86:
    cmp eax, dword ptr [esp + 024h] ; 0040fa86
L_0040fa8a:
    jl L_0040f7a7 ; 0040fa8a
L_0040fa90:
    mov ecx, dword ptr [esp + 014h] ; 0040fa90
L_0040fa94:
    mov byte ptr [esi + 02eb4h], dl ; 0040fa94
L_0040fa9a:
    mov dword ptr [esi + 02eb0h], ecx ; 0040fa9a
L_0040faa0:
    mov dword ptr [esi + 02b04h], ebp ; 0040faa0
L_0040faa6:
    pop ebp ; 0040faa6
L_0040faa7:
    pop edi ; 0040faa7
L_0040faa8:
    pop esi ; 0040faa8
L_0040faa9:
    pop ebx ; 0040faa9
L_0040faaa:
    add esp, 01ch ; 0040faaa
L_0040faad:
    retn  ; 0040faad
L_0040faae:
    mov eax, 0ffffffffh ; 0040faae
L_0040fab3:
    pop ebp ; 0040fab3
L_0040fab4:
    pop edi ; 0040fab4
L_0040fab5:
    pop esi ; 0040fab5
L_0040fab6:
    pop ebx ; 0040fab6
L_0040fab7:
    add esp, 01ch ; 0040fab7
L_0040faba:
    retn  ; 0040faba
L_0040fabb:
    db 0cch
L_0040fabc:
    push ebx ; 0040fabc
L_0040fabd:
    push ecx ; 0040fabd
L_0040fabe:
    push edx ; 0040fabe
L_0040fabf:
    push ebp ; 0040fabf
L_0040fac0:
    push esi ; 0040fac0
L_0040fac1:
    push edi ; 0040fac1
L_0040fac2:
    sub esp, 0100h ; 0040fac2
L_0040fac8:
    mov eax, dword ptr [esp + 0120h] ; 0040fac8
L_0040facf:
    and eax, 0ffffh ; 0040facf
L_0040fad4:
    mov dword ptr [esp + 0d8h], eax ; 0040fad4
L_0040fadb:
    mov eax, dword ptr [esp + 011ch] ; 0040fadb
L_0040fae2:
    mov dword ptr [esp + 0fch], eax ; 0040fae2
L_0040fae9:
    mov eax, dword ptr [esp + 0124h] ; 0040fae9
L_0040faf0:
    mov dword ptr [esp + 0dch], eax ; 0040faf0
L_0040faf7:
    mov eax, dword ptr [esp + 0128h] ; 0040faf7
L_0040fafe:
    and eax, 0ffh ; 0040fafe
L_0040fb03:
    mov dword ptr [esp + 0f4h], eax ; 0040fb03
L_0040fb0a:
    mov eax, dword ptr [esp + 012ch] ; 0040fb0a
L_0040fb11:
    mov dword ptr [esp + 0f0h], eax ; 0040fb11
L_0040fb18:
    mov eax, dword ptr [esp + 0130h] ; 0040fb18
L_0040fb1f:
    mov dword ptr [esp + 0e4h], eax ; 0040fb1f
L_0040fb26:
    xor eax, eax ; 0040fb26
L_0040fb28:
    lea edi, [esp + 094h] ; 0040fb28
L_0040fb2f:
    mov ecx, 010h ; 0040fb2f
L_0040fb34:
    rep stosd  ; 0040fb34
L_0040fb36:
    mov ecx, dword ptr [esp + 0d8h] ; 0040fb36
L_0040fb3d:
    mov esi, dword ptr [esp + 0dch] ; 0040fb3d
L_0040fb44:
    xor ebx, ebx ; 0040fb44
L_0040fb46:
    dec ecx ; 0040fb46
L_0040fb47:
    mov bl, byte ptr [ecx + esi] ; 0040fb47
L_0040fb4a:
    inc dword ptr [esp + ebx*4 + 090h] ; 0040fb4a
L_0040fb51:
    dec ecx ; 0040fb51
L_0040fb52:
    jge L_0040fb47 ; 0040fb52
L_0040fb54:
    lea ebp, [esp + 4] ; 0040fb54
L_0040fb58:
    lea esi, [esp + 094h] ; 0040fb58
L_0040fb5f:
    xor edx, edx ; 0040fb5f
L_0040fb61:
    mov ecx, 0fh ; 0040fb61
L_0040fb66:
    mov dword ptr [ebp], edx ; 0040fb66
L_0040fb69:
    nop  ; 0040fb69
L_0040fb6a:
    mov eax, dword ptr [esi] ; 0040fb6a
L_0040fb6c:
    add ebp, 4 ; 0040fb6c
L_0040fb6f:
    shl eax, cl ; 0040fb6f
L_0040fb71:
    add esi, 4 ; 0040fb71
L_0040fb74:
    add eax, edx ; 0040fb74
L_0040fb76:
    mov dword ptr [ebp], eax ; 0040fb76
L_0040fb79:
    mov edx, eax ; 0040fb79
L_0040fb7b:
    dec ecx ; 0040fb7b
L_0040fb7c:
    jge L_0040fb6a ; 0040fb7c
L_0040fb7e:
    mov edx, dword ptr [esp + 044h] ; 0040fb7e
L_0040fb82:
    cmp edx, 010000h ; 0040fb82
L_0040fb88:
    jne L_0040fd0e ; 0040fb88
L_0040fb8e:
    mov edx, dword ptr [esp + 0f4h] ; 0040fb8e
L_0040fb95:
    mov eax, 1 ; 0040fb95
L_0040fb9a:
    lea ecx, [edx - 1] ; 0040fb9a
L_0040fb9d:
    mov ebp, eax ; 0040fb9d
L_0040fb9f:
    shl ebp, cl ; 0040fb9f
L_0040fba1:
    mov ebx, ecx ; 0040fba1
L_0040fba3:
    mov cl, 010h ; 0040fba3
L_0040fba5:
    sub ecx, edx ; 0040fba5
L_0040fba7:
    mov dword ptr [esp + 0f8h], ecx ; 0040fba7
L_0040fbae:
    shr dword ptr [esp + eax*4], cl ; 0040fbae
L_0040fbb1:
    mov dword ptr [esp + eax*4 + 048h], ebp ; 0040fbb1
L_0040fbb5:
    shr ebp, 1 ; 0040fbb5
L_0040fbb7:
    inc eax ; 0040fbb7
L_0040fbb8:
    cmp eax, edx ; 0040fbb8
L_0040fbba:
    jle L_0040fbae ; 0040fbba
L_0040fbbc:
    cmp al, 010h ; 0040fbbc
L_0040fbbe:
    jg L_0040fbd7 ; 0040fbbe
L_0040fbc0:
    mov ecx, 010h ; 0040fbc0
L_0040fbc5:
    mov ebx, 1 ; 0040fbc5
L_0040fbca:
    sub ecx, eax ; 0040fbca
L_0040fbcc:
    inc eax ; 0040fbcc
L_0040fbcd:
    shl ebx, cl ; 0040fbcd
L_0040fbcf:
    mov dword ptr [esp + eax*4 + 044h], ebx ; 0040fbcf
L_0040fbd3:
    cmp al, 010h ; 0040fbd3
L_0040fbd5:
    jle L_0040fbc0 ; 0040fbd5
L_0040fbd7:
    mov ecx, dword ptr [esp + 0f8h] ; 0040fbd7
L_0040fbde:
    mov edx, dword ptr [esp + 0f4h] ; 0040fbde
L_0040fbe5:
    mov eax, dword ptr [esp + edx*4 + 4] ; 0040fbe5
L_0040fbe9:
    shr eax, cl ; 0040fbe9
L_0040fbeb:
    cmp eax, 010000h ; 0040fbeb
L_0040fbf0:
    je L_0040fc0e ; 0040fbf0
L_0040fbf2:
    mov ecx, edx ; 0040fbf2
L_0040fbf4:
    mov edx, 1 ; 0040fbf4
L_0040fbf9:
    shl edx, cl ; 0040fbf9
L_0040fbfb:
    sub edx, eax ; 0040fbfb
L_0040fbfd:
    mov ecx, edx ; 0040fbfd
L_0040fbff:
    mov edi, dword ptr [esp + 0f0h] ; 0040fbff
L_0040fc06:
    lea edi, [edi + eax*2] ; 0040fc06
L_0040fc09:
    xor eax, eax ; 0040fc09
L_0040fc0b:
    rep stosw  ; 0040fc0b
L_0040fc0e:
    mov eax, dword ptr [esp + 0d8h] ; 0040fc0e
L_0040fc15:
    xor edi, edi ; 0040fc15
L_0040fc17:
    mov dword ptr [esp + 0e8h], eax ; 0040fc17
L_0040fc1e:
    jmp L_0040fc27 ; 0040fc1e
L_0040fc20:
    xor eax, eax ; 0040fc20
L_0040fc22:
    jmp L_0040fd01 ; 0040fc22
L_0040fc27:
    mov eax, dword ptr [esp + 0dch] ; 0040fc27
L_0040fc2e:
    movzx ebp, byte ptr [edi + eax] ; 0040fc2e
L_0040fc32:
    test ebp, ebp ; 0040fc32
L_0040fc34:
    je L_0040fcee ; 0040fc34
L_0040fc3a:
    mov ebx, dword ptr [esp + ebp*4] ; 0040fc3a
L_0040fc3d:
    mov ecx, dword ptr [esp + 0f4h] ; 0040fc3d
L_0040fc44:
    mov eax, ebx ; 0040fc44
L_0040fc46:
    add ebx, dword ptr [esp + ebp*4 + 048h] ; 0040fc46
L_0040fc4a:
    cmp ebp, ecx ; 0040fc4a
L_0040fc4c:
    jg L_0040fc83 ; 0040fc4c
L_0040fc4e:
    mov edx, 1 ; 0040fc4e
L_0040fc53:
    shl edx, cl ; 0040fc53
L_0040fc55:
    mov ecx, ebx ; 0040fc55
L_0040fc57:
    cmp ebx, edx ; 0040fc57
L_0040fc59:
    jg L_0040fc20 ; 0040fc59
L_0040fc5b:
    sub ecx, eax ; 0040fc5b
L_0040fc5d:
    add eax, eax ; 0040fc5d
L_0040fc5f:
    add eax, dword ptr [esp + 0f0h] ; 0040fc5f
L_0040fc66:
    mov dword ptr [esp + ebp*4], ebx ; 0040fc66
L_0040fc69:
    mov word ptr [eax], di ; 0040fc69
L_0040fc6c:
    add eax, 2 ; 0040fc6c
L_0040fc6f:
    dec ecx ; 0040fc6f
L_0040fc70:
    jne L_0040fc69 ; 0040fc70
L_0040fc72:
    inc edi ; 0040fc72
L_0040fc73:
    cmp edi, dword ptr [esp + 0d8h] ; 0040fc73
L_0040fc7a:
    jl L_0040fc27 ; 0040fc7a
L_0040fc7c:
    mov eax, 1 ; 0040fc7c
L_0040fc81:
    jmp L_0040fd01 ; 0040fc81
L_0040fc83:
    mov esi, ebp ; 0040fc83
L_0040fc85:
    mov edx, eax ; 0040fc85
L_0040fc87:
    sub esi, ecx ; 0040fc87
L_0040fc89:
    add cl, 010h ; 0040fc89
L_0040fc8c:
    shl edx, cl ; 0040fc8c
L_0040fc8e:
    mov dword ptr [esp + 0ech], eax ; 0040fc8e
L_0040fc95:
    mov dword ptr [esp + ebp*4], ebx ; 0040fc95
L_0040fc98:
    nop  ; 0040fc98
L_0040fc99:
    mov ecx, dword ptr [esp + 0f8h] ; 0040fc99
L_0040fca0:
    mov ebx, dword ptr [esp + 0ech] ; 0040fca0
L_0040fca7:
    shr ebx, cl ; 0040fca7
L_0040fca9:
    mov eax, dword ptr [esp + 0f0h] ; 0040fca9
L_0040fcb0:
    lea ebx, [eax + ebx*2] ; 0040fcb0
L_0040fcb3:
    mov ebp, dword ptr [esp + 0e8h] ; 0040fcb3
L_0040fcba:
    mov eax, dword ptr [esp + 0e4h] ; 0040fcba
L_0040fcc1:
    movsx ecx, word ptr [ebx] ; 0040fcc1
L_0040fcc4:
    test ecx, ecx ; 0040fcc4
L_0040fcc6:
    jne L_0040fcd2 ; 0040fcc6
L_0040fcc8:
    mov word ptr [ebx], bp ; 0040fcc8
L_0040fccb:
    mov dword ptr [eax + ebp*4], ecx ; 0040fccb
L_0040fcce:
    inc ebp ; 0040fcce
L_0040fccf:
    neg word ptr [ebx] ; 0040fccf
L_0040fcd2:
    movsx ecx, word ptr [ebx] ; 0040fcd2
L_0040fcd5:
    neg ecx ; 0040fcd5
L_0040fcd7:
    lea ebx, [eax + ecx*4] ; 0040fcd7
L_0040fcda:
    add edx, edx ; 0040fcda
L_0040fcdc:
    jae L_0040fce1 ; 0040fcdc
L_0040fcde:
    add ebx, 2 ; 0040fcde
L_0040fce1:
    dec esi ; 0040fce1
L_0040fce2:
    jne L_0040fcba ; 0040fce2
L_0040fce4:
    mov word ptr [ebx], di ; 0040fce4
L_0040fce7:
    mov dword ptr [esp + 0e8h], ebp ; 0040fce7
L_0040fcee:
    inc edi ; 0040fcee
L_0040fcef:
    cmp edi, dword ptr [esp + 0d8h] ; 0040fcef
L_0040fcf6:
    jl L_0040fc27 ; 0040fcf6
L_0040fcfc:
    mov eax, 1 ; 0040fcfc
L_0040fd01:
    add esp, 0100h ; 0040fd01
L_0040fd07:
    pop edi ; 0040fd07
L_0040fd08:
    pop esi ; 0040fd08
L_0040fd09:
    pop ebp ; 0040fd09
L_0040fd0a:
    pop edx ; 0040fd0a
L_0040fd0b:
    pop ecx ; 0040fd0b
L_0040fd0c:
    pop ebx ; 0040fd0c
L_0040fd0d:
    retn  ; 0040fd0d
L_0040fd0e:
    test edx, edx ; 0040fd0e
L_0040fd10:
    jne L_0040fd35 ; 0040fd10
L_0040fd12:
    xor eax, eax ; 0040fd12
L_0040fd14:
    mov edi, dword ptr [esp + 0f0h] ; 0040fd14
L_0040fd1b:
    mov edx, 1 ; 0040fd1b
L_0040fd20:
    mov ecx, dword ptr [esp + 0f4h] ; 0040fd20
L_0040fd27:
    dec ecx ; 0040fd27
L_0040fd28:
    shl edx, cl ; 0040fd28
L_0040fd2a:
    mov ecx, edx ; 0040fd2a
L_0040fd2c:
    rep stosd  ; 0040fd2c
L_0040fd2e:
    mov eax, 1 ; 0040fd2e
L_0040fd33:
    jmp L_0040fd01 ; 0040fd33
L_0040fd35:
    xor eax, eax ; 0040fd35
L_0040fd37:
    jmp L_0040fd01 ; 0040fd37
L_0040fd39:
    db 0cch
L_0040fd3a:
    db 0cch
L_0040fd3b:
    db 0cch
L_0040fd3c:
    db 0cch
L_0040fd3d:
    db 0cch
L_0040fd3e:
    db 0cch
L_0040fd3f:
    db 0cch
L_0040fd40:
    mov ax, 1 ; 0040fd40
L_0040fd44:
    sub esp, 050h ; 0040fd44
L_0040fd47:
    xor ecx, ecx ; 0040fd47
L_0040fd49:
    push ebx ; 0040fd49
L_0040fd4a:
    push esi ; 0040fd4a
L_0040fd4b:
    push edi ; 0040fd4b
L_0040fd4c:
    push ebp ; 0040fd4c
L_0040fd4d:
    movzx edx, ax ; 0040fd4d
L_0040fd50:
    inc ax ; 0040fd50
L_0040fd52:
    mov word ptr [esp + edx*2 + 03ch], cx ; 0040fd52
L_0040fd57:
    cmp ax, 010h ; 0040fd57
L_0040fd5b:
    jbe L_0040fd4d ; 0040fd5b
L_0040fd5d:
    xor ax, ax ; 0040fd5d
L_0040fd60:
    mov ebp, dword ptr [esp + 068h] ; 0040fd60
L_0040fd64:
    movzx ecx, ax ; 0040fd64
L_0040fd67:
    inc ax ; 0040fd67
L_0040fd69:
    xor edx, edx ; 0040fd69
L_0040fd6b:
    mov dl, byte ptr [ecx + ebp] ; 0040fd6b
L_0040fd6e:
    inc word ptr [esp + edx*2 + 03ch] ; 0040fd6e
L_0040fd73:
    cmp ax, 8 ; 0040fd73
L_0040fd77:
    jb L_0040fd64 ; 0040fd77
L_0040fd79:
    mov word ptr [esp + 01ah], 0 ; 0040fd79
L_0040fd80:
    mov dx, 1 ; 0040fd80
L_0040fd84:
    movzx eax, dx ; 0040fd84
L_0040fd87:
    add eax, eax ; 0040fd87
L_0040fd89:
    mov cl, 010h ; 0040fd89
L_0040fd8b:
    mov si, word ptr [esp + eax + 03ch] ; 0040fd8b
L_0040fd90:
    sub cl, dl ; 0040fd90
L_0040fd92:
    shl si, cl ; 0040fd92
L_0040fd95:
    inc dx ; 0040fd95
L_0040fd97:
    add si, word ptr [esp + eax + 018h] ; 0040fd97
L_0040fd9c:
    mov word ptr [esp + eax + 01ah], si ; 0040fd9c
L_0040fda1:
    cmp dx, 010h ; 0040fda1
L_0040fda5:
    jbe L_0040fd84 ; 0040fda5
L_0040fda7:
    cmp word ptr [esp + 03ah], 0 ; 0040fda7
L_0040fdad:
    je L_0040fdb9 ; 0040fdad
L_0040fdaf:
    xor eax, eax ; 0040fdaf
L_0040fdb1:
    pop ebp ; 0040fdb1
L_0040fdb2:
    pop edi ; 0040fdb2
L_0040fdb3:
    pop esi ; 0040fdb3
L_0040fdb4:
    pop ebx ; 0040fdb4
L_0040fdb5:
    add esp, 050h ; 0040fdb5
L_0040fdb8:
    retn  ; 0040fdb8
L_0040fdb9:
    mov dx, 1 ; 0040fdb9
L_0040fdbd:
    mov si, 1 ; 0040fdbd
L_0040fdc1:
    mov cl, 7 ; 0040fdc1
L_0040fdc3:
    movzx eax, dx ; 0040fdc3
L_0040fdc6:
    add eax, eax ; 0040fdc6
L_0040fdc8:
    sub cl, dl ; 0040fdc8
L_0040fdca:
    shl si, cl ; 0040fdca
L_0040fdcd:
    inc dx ; 0040fdcd
L_0040fdcf:
    shr word ptr [esp + eax + 018h], 9 ; 0040fdcf
L_0040fdd5:
    mov word ptr [esp + eax + 03ch], si ; 0040fdd5
L_0040fdda:
    cmp dx, 7 ; 0040fdda
L_0040fdde:
    jbe L_0040fdbd ; 0040fdde
L_0040fde0:
    cmp dx, 010h ; 0040fde0
L_0040fde4:
    ja L_0040fe01 ; 0040fde4
L_0040fde6:
    mov si, 1 ; 0040fde6
L_0040fdea:
    mov cl, 010h ; 0040fdea
L_0040fdec:
    sub cl, dl ; 0040fdec
L_0040fdee:
    movzx eax, dx ; 0040fdee
L_0040fdf1:
    shl si, cl ; 0040fdf1
L_0040fdf4:
    inc dx ; 0040fdf4
L_0040fdf6:
    mov word ptr [esp + eax*2 + 03ch], si ; 0040fdf6
L_0040fdfb:
    cmp dx, 010h ; 0040fdfb
L_0040fdff:
    jbe L_0040fde6 ; 0040fdff
L_0040fe01:
    mov edi, dword ptr [esp + 06ch] ; 0040fe01
L_0040fe05:
    xor eax, eax ; 0040fe05
L_0040fe07:
    mov ecx, 020h ; 0040fe07
L_0040fe0c:
    xor bl, bl ; 0040fe0c
L_0040fe0e:
    rep stosd  ; 0040fe0e
L_0040fe10:
    xor eax, eax ; 0040fe10
L_0040fe12:
    mov al, bl ; 0040fe12
L_0040fe14:
    mov cl, byte ptr [eax + ebp] ; 0040fe14
L_0040fe17:
    test cl, cl ; 0040fe17
L_0040fe19:
    je L_0040fe7f ; 0040fe19
L_0040fe1b:
    xor edx, edx ; 0040fe1b
L_0040fe1d:
    mov dl, cl ; 0040fe1d
L_0040fe1f:
    add edx, edx ; 0040fe1f
L_0040fe21:
    mov di, word ptr [esp + edx + 018h] ; 0040fe21
L_0040fe26:
    mov si, word ptr [esp + edx + 03ch] ; 0040fe26
L_0040fe2b:
    add si, di ; 0040fe2b
L_0040fe2e:
    cmp si, 080h ; 0040fe2e
L_0040fe33:
    ja L_0040fe93 ; 0040fe33
L_0040fe35:
    cmp si, di ; 0040fe35
L_0040fe38:
    jbe L_0040fe7a ; 0040fe38
L_0040fe3a:
    mov cx, si ; 0040fe3a
L_0040fe3d:
    mov byte ptr [esp + 010h], al ; 0040fe3d
L_0040fe41:
    sub cx, di ; 0040fe41
L_0040fe44:
    mov byte ptr [esp + 011h], al ; 0040fe44
L_0040fe48:
    movzx ecx, cx ; 0040fe48
L_0040fe4b:
    mov dword ptr [esp + 014h], ecx ; 0040fe4b
L_0040fe4f:
    mov byte ptr [esp + 010h], al ; 0040fe4f
L_0040fe53:
    movzx ecx, di ; 0040fe53
L_0040fe56:
    mov eax, dword ptr [esp + 010h] ; 0040fe56
L_0040fe5a:
    mov edi, dword ptr [esp + 06ch] ; 0040fe5a
L_0040fe5e:
    shl eax, 010h ; 0040fe5e
L_0040fe61:
    add edi, ecx ; 0040fe61
L_0040fe63:
    mov ax, word ptr [esp + 010h] ; 0040fe63
L_0040fe68:
    mov ecx, dword ptr [esp + 014h] ; 0040fe68
L_0040fe6c:
    shr ecx, 2 ; 0040fe6c
L_0040fe6f:
    rep stosd  ; 0040fe6f
L_0040fe71:
    mov ecx, dword ptr [esp + 014h] ; 0040fe71
L_0040fe75:
    and ecx, 3 ; 0040fe75
L_0040fe78:
    rep stosb  ; 0040fe78
L_0040fe7a:
    mov word ptr [esp + edx + 018h], si ; 0040fe7a
L_0040fe7f:
    inc bl ; 0040fe7f
L_0040fe81:
    cmp bl, 8 ; 0040fe81
L_0040fe84:
    jb L_0040fe10 ; 0040fe84
L_0040fe86:
    mov eax, 1 ; 0040fe86
L_0040fe8b:
    pop ebp ; 0040fe8b
L_0040fe8c:
    pop edi ; 0040fe8c
L_0040fe8d:
    pop esi ; 0040fe8d
L_0040fe8e:
    pop ebx ; 0040fe8e
L_0040fe8f:
    add esp, 050h ; 0040fe8f
L_0040fe92:
    retn  ; 0040fe92
L_0040fe93:
    xor eax, eax ; 0040fe93
L_0040fe95:
    pop ebp ; 0040fe95
L_0040fe96:
    pop edi ; 0040fe96
L_0040fe97:
    pop esi ; 0040fe97
L_0040fe98:
    pop ebx ; 0040fe98
L_0040fe99:
    add esp, 050h ; 0040fe99
L_0040fe9c:
    retn  ; 0040fe9c
L_0040fe9d:
    db 0cch
L_0040fe9e:
    db 0cch
L_0040fe9f:
    db 0cch
L_0040fea0:
    db 020h
L_0040fea1:
    db 020h
L_0040fea2:
    db 020h
L_0040fea3:
    db 020h
L_0040fea4:
    db 01fh
L_0040fea5:
    db 01fh
L_0040fea6:
    db 01eh
L_0040fea7:
    db 01eh
L_0040fea8:
    db 01dh
L_0040fea9:
    db 01dh
L_0040feaa:
    db 01ch
L_0040feab:
    db 01ch
L_0040feac:
    db 01bh
L_0040fead:
    db 01bh
L_0040feae:
    db 01ah
L_0040feaf:
    db 01ah
L_0040feb0:
    db 019h
L_0040feb1:
    db 019h
L_0040feb2:
    db 018h
L_0040feb3:
    db 018h
L_0040feb4:
    db 017h
L_0040feb5:
    db 017h
L_0040feb6:
    db 016h
L_0040feb7:
    db 016h
L_0040feb8:
    db 015h
L_0040feb9:
    db 015h
L_0040feba:
    db 014h
L_0040febb:
    db 014h
L_0040febc:
    db 013h
L_0040febd:
    db 013h
L_0040febe:
    db 012h
L_0040febf:
    db 012h
L_0040fec0:
    db 011h
L_0040fec1:
    db 011h
L_0040fec2:
    db 010h
L_0040fec3:
    db 010h
L_0040fec4:
    db 00fh
L_0040fec5:
    db 00fh
L_0040fec6:
    db 00fh
L_0040fec7:
    db 00fh
L_0040fec8:
    db 00fh
L_0040fec9:
    db 00fh
L_0040feca:
    db 00fh
L_0040fecb:
    db 00fh
L_0040fecc:
    db 00fh
L_0040fecd:
    db 00fh
L_0040fece:
    db 00fh
L_0040fecf:
    db 00fh
L_0040fed0:
    db 00fh
L_0040fed1:
    db 00fh
L_0040fed2:
    db 00fh
L_0040fed3:
    push edx ; 0040fed3
L_0040fed4:
    push ecx ; 0040fed4
L_0040fed5:
    push ebx ; 0040fed5
L_0040fed6:
    push edi ; 0040fed6
L_0040fed7:
    push esi ; 0040fed7
L_0040fed8:
    push ebp ; 0040fed8
L_0040fed9:
    mov edx, dword ptr [esp + 01ch] ; 0040fed9
L_0040fedd:
    mov edi, dword ptr [esp + 020h] ; 0040fedd
L_0040fee1:
    mov eax, dword ptr [esp + 024h] ; 0040fee1
L_0040fee5:
    mov esi, dword ptr [edx + 02b04h] ; 0040fee5
L_0040feeb:
    add eax, edi ; 0040feeb
L_0040feed:
    sub esp, 020h ; 0040feed
L_0040fef0:
    mov dword ptr [esp + 8], edx ; 0040fef0
L_0040fef4:
    mov dword ptr [esp + 4], eax ; 0040fef4
L_0040fef8:
    mov ecx, dword ptr [edx] ; 0040fef8
L_0040fefa:
    mov eax, dword ptr [edx + 02eb0h] ; 0040fefa
L_0040ff00:
    mov dword ptr [esp + 0ch], ecx ; 0040ff00
L_0040ff04:
    mov dword ptr [esp], eax ; 0040ff04
L_0040ff07:
    mov ecx, dword ptr [edx + 0ch] ; 0040ff07
L_0040ff0a:
    mov ebx, dword ptr [edx + 010h] ; 0040ff0a
L_0040ff0d:
    mov eax, dword ptr [edx + 014h] ; 0040ff0d
L_0040ff10:
    mov dword ptr [esp + 010h], ecx ; 0040ff10
L_0040ff14:
    mov dword ptr [esp + 014h], ebx ; 0040ff14
L_0040ff18:
    mov dword ptr [esp + 018h], eax ; 0040ff18
L_0040ff1c:
    xor ecx, ecx ; 0040ff1c
L_0040ff1e:
    mov cl, byte ptr [edx + 02eb4h] ; 0040ff1e
L_0040ff24:
    mov dword ptr [esp + 01ch], ecx ; 0040ff24
L_0040ff28:
    mov edx, ecx ; 0040ff28
L_0040ff2a:
    jmp L_0040ff78 ; 0040ff2a
L_0040ff2c:
    add esp, 020h ; 0040ff2c
L_0040ff2f:
    pop ebp ; 0040ff2f
L_0040ff30:
    pop esi ; 0040ff30
L_0040ff31:
    pop edi ; 0040ff31
L_0040ff32:
    pop ebx ; 0040ff32
L_0040ff33:
    pop ecx ; 0040ff33
L_0040ff34:
    pop edx ; 0040ff34
L_0040ff35:
    mov eax, 0ffffffffh ; 0040ff35
L_0040ff3a:
    retn  ; 0040ff3a
L_0040ff3b:
    mov eax, dword ptr [esp] ; 0040ff3b
L_0040ff3e:
    shl eax, 0ah ; 0040ff3e
L_0040ff41:
    neg ebx ; 0040ff41
L_0040ff43:
    add ebx, ebx ; 0040ff43
L_0040ff45:
    add eax, eax ; 0040ff45
L_0040ff47:
    adc ebx, 0 ; 0040ff47
L_0040ff4a:
    movsx ebx, word ptr [ecx + ebx*2 + 0e3ch] ; 0040ff4a
L_0040ff52:
    test ebx, ebx ; 0040ff52
L_0040ff54:
    jl L_0040ff41 ; 0040ff54
L_0040ff56:
    jmp L_0040ff91 ; 0040ff56
L_0040ff58:
    mov ecx, dword ptr [esp] ; 0040ff58
L_0040ff5b:
    shl ecx, 8 ; 0040ff5b
L_0040ff5e:
    neg ebp ; 0040ff5e
L_0040ff60:
    add ebp, ebp ; 0040ff60
L_0040ff62:
    add ecx, ecx ; 0040ff62
L_0040ff64:
    adc ebp, 0 ; 0040ff64
L_0040ff67:
    movsx ebp, word ptr [eax + ebp*2 + 0233ch] ; 0040ff67
L_0040ff6f:
    test ebp, ebp ; 0040ff6f
L_0040ff71:
    jl L_0040ff5e ; 0040ff71
L_0040ff73:
    jmp L_00410046 ; 0040ff73
L_0040ff78:
    mov ecx, dword ptr [esp + 8] ; 0040ff78
L_0040ff7c:
    mov eax, dword ptr [esp] ; 0040ff7c
L_0040ff7f:
    shr eax, 016h ; 0040ff7f
L_0040ff82:
    mov ebp, dword ptr [ecx + 02b08h] ; 0040ff82
L_0040ff88:
    movsx ebx, word ptr [ecx + eax*2 + 018h] ; 0040ff88
L_0040ff8d:
    test ebx, ebx ; 0040ff8d
L_0040ff8f:
    jl L_0040ff3b ; 0040ff8f
L_0040ff91:
    cmp ebp, esi ; 0040ff91
L_0040ff93:
    jbe L_0040ff2c ; 0040ff93
L_0040ff95:
    mov cl, byte ptr [ecx + ebx + 0a18h] ; 0040ff95
L_0040ff9c:
    xor eax, eax ; 0040ff9c
L_0040ff9e:
    shl dword ptr [esp], cl ; 0040ff9e
L_0040ffa1:
    sub dl, cl ; 0040ffa1
L_0040ffa3:
    jg L_0040ffc0 ; 0040ffa3
L_0040ffa5:
    mov al, byte ptr [esi] ; 0040ffa5
L_0040ffa7:
    mov cl, dl ; 0040ffa7
L_0040ffa9:
    mov ah, byte ptr [esi + 1] ; 0040ffa9
L_0040ffac:
    xor cl, 0ffh ; 0040ffac
L_0040ffaf:
    add esi, 2 ; 0040ffaf
L_0040ffb2:
    inc cl ; 0040ffb2
L_0040ffb4:
    shl eax, cl ; 0040ffb4
L_0040ffb6:
    or eax, dword ptr [esp] ; 0040ffb6
L_0040ffb9:
    add dl, 010h ; 0040ffb9
L_0040ffbc:
    mov dword ptr [esp], eax ; 0040ffbc
L_0040ffbf:
    nop  ; 0040ffbf
L_0040ffc0:
    sub ebx, 0100h ; 0040ffc0
L_0040ffc6:
    jns L_0041001f ; 0040ffc6
L_0040ffc8:
    mov ebp, dword ptr [esp + 0ch] ; 0040ffc8
L_0040ffcc:
    inc edi ; 0040ffcc
L_0040ffcd:
    mov eax, dword ptr [esp] ; 0040ffcd
L_0040ffd0:
    mov ecx, dword ptr [esp + 8] ; 0040ffd0
L_0040ffd4:
    shr eax, 016h ; 0040ffd4
L_0040ffd7:
    mov byte ptr [edi + ebp - 1], bl ; 0040ffd7
L_0040ffdb:
    mov ebp, dword ptr [ecx + 02b08h] ; 0040ffdb
L_0040ffe1:
    cmp dword ptr [esp + 4], edi ; 0040ffe1
L_0040ffe5:
    ja L_0040ff88 ; 0040ffe5
L_0040ffe7:
    jmp L_00410114 ; 0040ffe7
L_0040ffec:
    mov ebx, 1 ; 0040ffec
L_0040fff1:
    jmp L_004100d3 ; 0040fff1
L_0040fff6:
    cmp bl, 3 ; 0040fff6
L_0040fff9:
    je L_0040ffec ; 0040fff9
L_0040fffb:
    mov eax, dword ptr [esp + 010h] ; 0040fffb
L_0040ffff:
    mov ecx, dword ptr [esp + ebx*4 + 010h] ; 0040ffff
L_00410003:
    mov dword ptr [esp + 010h], ecx ; 00410003
L_00410007:
    mov dword ptr [esp + ebx*4 + 010h], eax ; 00410007
L_0041000b:
    mov ebx, ecx ; 0041000b
L_0041000d:
    jmp L_004100e7 ; 0041000d
L_00410012:
    test ebx, ebx ; 00410012
L_00410014:
    jne L_0040fff6 ; 00410014
L_00410016:
    mov ebx, dword ptr [esp + 010h] ; 00410016
L_0041001a:
    jmp L_004100e7 ; 0041001a
L_0041001f:
    mov ebp, ebx ; 0041001f
L_00410021:
    mov eax, dword ptr [esp + 8] ; 00410021
L_00410025:
    shr ebx, 3 ; 00410025
L_00410028:
    and ebp, 7 ; 00410028
L_0041002b:
    cmp ebp, 7 ; 0041002b
L_0041002e:
    jne L_00410073 ; 0041002e
L_00410030:
    mov ecx, dword ptr [esp] ; 00410030
L_00410033:
    shr ecx, 018h ; 00410033
L_00410036:
    movsx ebp, word ptr [eax + ecx*2 + 0818h] ; 00410036
L_0041003e:
    test ebp, ebp ; 0041003e
L_00410040:
    jl L_0040ff58 ; 00410040
L_00410046:
    mov cl, byte ptr [ebp + eax + 0cb8h] ; 00410046
L_0041004d:
    add ebp, 7 ; 0041004d
L_00410050:
    shl dword ptr [esp], cl ; 00410050
L_00410053:
    sub dl, cl ; 00410053
L_00410055:
    jg L_00410073 ; 00410055
L_00410057:
    xor eax, eax ; 00410057
L_00410059:
    mov cl, dl ; 00410059
L_0041005b:
    mov al, byte ptr [esi] ; 0041005b
L_0041005d:
    xor cl, 0ffh ; 0041005d
L_00410060:
    mov ah, byte ptr [esi + 1] ; 00410060
L_00410063:
    inc cl ; 00410063
L_00410065:
    shl eax, cl ; 00410065
L_00410067:
    or eax, dword ptr [esp] ; 00410067
L_0041006a:
    add dl, 010h ; 0041006a
L_0041006d:
    add esi, 2 ; 0041006d
L_00410070:
    mov dword ptr [esp], eax ; 00410070
L_00410073:
    xor eax, eax ; 00410073
L_00410075:
    cmp bl, 3 ; 00410075
L_00410078:
    mov al, bl ; 00410078
L_0041007a:
    jle L_00410012 ; 0041007a
L_0041007c:
    mov cl, byte ptr [eax + L_0040fea0] ; 0041007c
L_00410082:
    mov ebx, dword ptr [esp] ; 00410082
L_00410085:
    shr ebx, cl ; 00410085
L_00410087:
    add ebx, dword ptr [eax*4 + _kb_rdata + 6648] ; 00410087
L_0041008e:
    mov cl, byte ptr [eax + _kb_rdata + 6592] ; 0041008e
L_00410094:
    shl dword ptr [esp], cl ; 00410094
L_00410097:
    sub dl, cl ; 00410097
L_00410099:
    jg L_004100d3 ; 00410099
L_0041009b:
    mov al, byte ptr [esi] ; 0041009b
L_0041009d:
    mov cl, dl ; 0041009d
L_0041009f:
    mov ah, byte ptr [esi + 1] ; 0041009f
L_004100a2:
    xor cl, 0ffh ; 004100a2
L_004100a5:
    add esi, 2 ; 004100a5
L_004100a8:
    inc cl ; 004100a8
L_004100aa:
    shl eax, cl ; 004100aa
L_004100ac:
    or eax, dword ptr [esp] ; 004100ac
L_004100af:
    add dl, 010h ; 004100af
L_004100b2:
    mov dword ptr [esp], eax ; 004100b2
L_004100b5:
    jg L_004100d3 ; 004100b5
L_004100b7:
    xor eax, eax ; 004100b7
L_004100b9:
    mov cl, dl ; 004100b9
L_004100bb:
    mov al, byte ptr [esi] ; 004100bb
L_004100bd:
    xor cl, 0ffh ; 004100bd
L_004100c0:
    mov ah, byte ptr [esi + 1] ; 004100c0
L_004100c3:
    inc cl ; 004100c3
L_004100c5:
    shl eax, cl ; 004100c5
L_004100c7:
    or eax, dword ptr [esp] ; 004100c7
L_004100ca:
    add dl, 010h ; 004100ca
L_004100cd:
    mov dword ptr [esp], eax ; 004100cd
L_004100d0:
    add esi, 2 ; 004100d0
L_004100d3:
    mov eax, dword ptr [esp + 010h] ; 004100d3
L_004100d7:
    mov ecx, dword ptr [esp + 014h] ; 004100d7
L_004100db:
    mov dword ptr [esp + 014h], eax ; 004100db
L_004100df:
    mov dword ptr [esp + 018h], ecx ; 004100df
L_004100e3:
    mov dword ptr [esp + 010h], ebx ; 004100e3
L_004100e7:
    mov ecx, edi ; 004100e7
L_004100e9:
    mov eax, dword ptr [esp + 8] ; 004100e9
L_004100ed:
    inc edi ; 004100ed
L_004100ee:
    sub ecx, ebx ; 004100ee
L_004100f0:
    and ecx, dword ptr [eax + 8] ; 004100f0
L_004100f3:
    mov eax, dword ptr [eax] ; 004100f3
L_004100f5:
    mov bl, byte ptr [ecx + eax] ; 004100f5
L_004100f8:
    inc ecx ; 004100f8
L_004100f9:
    mov byte ptr [edi + eax - 1], bl ; 004100f9
L_004100fd:
    nop  ; 004100fd
L_004100fe:
    inc edi ; 004100fe
L_004100ff:
    mov bl, byte ptr [ecx + eax] ; 004100ff
L_00410102:
    inc ecx ; 00410102
L_00410103:
    dec ebp ; 00410103
L_00410104:
    mov byte ptr [edi + eax - 1], bl ; 00410104
L_00410108:
    jge L_004100fe ; 00410108
L_0041010a:
    cmp dword ptr [esp + 4], edi ; 0041010a
L_0041010e:
    ja L_0040ff78 ; 0041010e
L_00410114:
    mov ebx, dword ptr [esp + 8] ; 00410114
L_00410118:
    xor eax, eax ; 00410118
L_0041011a:
    cmp edi, dword ptr [esp + 4] ; 0041011a
L_0041011e:
    je L_00410125 ; 0041011e
L_00410120:
    mov eax, 0ffffffffh ; 00410120
L_00410125:
    and edi, dword ptr [ebx + 8] ; 00410125
L_00410128:
    mov byte ptr [ebx + 02eb4h], dl ; 00410128
L_0041012e:
    mov dword ptr [ebx + 02ec0h], edi ; 0041012e
L_00410134:
    mov dword ptr [ebx + 02b04h], esi ; 00410134
L_0041013a:
    mov edi, dword ptr [esp] ; 0041013a
L_0041013d:
    mov ecx, dword ptr [esp + 010h] ; 0041013d
L_00410141:
    mov ebp, dword ptr [esp + 014h] ; 00410141
L_00410145:
    mov esi, dword ptr [esp + 018h] ; 00410145
L_00410149:
    mov dword ptr [ebx + 0ch], ecx ; 00410149
L_0041014c:
    mov dword ptr [ebx + 010h], ebp ; 0041014c
L_0041014f:
    mov dword ptr [ebx + 014h], esi ; 0041014f
L_00410152:
    mov dword ptr [ebx + 02eb0h], edi ; 00410152
L_00410158:
    add esp, 020h ; 00410158
L_0041015b:
    pop ebp ; 0041015b
L_0041015c:
    pop esi ; 0041015c
L_0041015d:
    pop edi ; 0041015d
L_0041015e:
    pop ebx ; 0041015e
L_0041015f:
    pop ecx ; 0041015f
L_00410160:
    pop edx ; 00410160
L_00410161:
    retn  ; 00410161
L_00410162:
    db 0ffh
L_00410163:
    db 025h
L_00410164:
    db 064h
L_00410165:
    db 023h
L_00410166:
    db 041h
L_00410167:
    db 000h
L_00410168:
    jmp dword ptr [_kb_rdata + 864] ; 00410168
L_0041016e:
    jmp dword ptr [_kb_rdata + 860] ; 0041016e
L_00410174:
    jmp dword ptr [_kb_rdata + 856] ; 00410174
L_0041017a:
    jmp dword ptr [_kb_rdata + 852] ; 0041017a
L_00410180:
    jmp dword ptr [_kb_rdata + 848] ; 00410180
L_00410186:
    jmp dword ptr [_kb_rdata + 844] ; 00410186
L_0041018c:
    jmp dword ptr [_kb_rdata + 840] ; 0041018c
L_00410192:
    jmp dword ptr [_kb_rdata + 836] ; 00410192
L_00410198:
    jmp dword ptr [_kb_rdata + 832] ; 00410198
L_0041019e:
    jmp dword ptr [_kb_rdata + 828] ; 0041019e
L_004101a4:
    jmp dword ptr [_kb_rdata + 824] ; 004101a4
L_004101aa:
    jmp dword ptr [_kb_rdata + 820] ; 004101aa
L_004101b0:
    jmp dword ptr [_kb_rdata + 816] ; 004101b0
L_004101b6:
    jmp dword ptr [_kb_rdata + 812] ; 004101b6
L_004101bc:
    jmp dword ptr [_kb_rdata + 808] ; 004101bc
L_004101c2:
    jmp dword ptr [_kb_rdata + 804] ; 004101c2
L_004101c8:
    jmp dword ptr [_kb_rdata + 800] ; 004101c8
L_004101ce:
    jmp dword ptr [_kb_rdata + 796] ; 004101ce
L_004101d4:
    jmp dword ptr [_kb_rdata + 792] ; 004101d4
L_004101da:
    jmp dword ptr [_kb_rdata + 788] ; 004101da
L_004101e0:
    jmp dword ptr [_kb_rdata + 784] ; 004101e0
L_004101e6:
    jmp dword ptr [_kb_rdata + 780] ; 004101e6
L_004101ec:
    jmp dword ptr [_kb_rdata + 776] ; 004101ec
L_004101f2:
    jmp dword ptr [_kb_rdata + 772] ; 004101f2
L_004101f8:
    jmp dword ptr [_kb_rdata + 768] ; 004101f8
L_004101fe:
    jmp dword ptr [_kb_rdata + 764] ; 004101fe
L_00410204:
    jmp dword ptr [_kb_rdata + 760] ; 00410204
L_0041020a:
    jmp dword ptr [_kb_rdata + 756] ; 0041020a
L_00410210:
    jmp dword ptr [_kb_rdata + 752] ; 00410210
L_00410216:
    jmp dword ptr [_kb_rdata + 748] ; 00410216
L_0041021c:
    jmp dword ptr [_kb_rdata + 744] ; 0041021c
L_00410222:
    jmp dword ptr [_kb_rdata + 740] ; 00410222
L_00410228:
    jmp dword ptr [_kb_rdata + 736] ; 00410228
L_0041022e:
    jmp dword ptr [_kb_rdata + 732] ; 0041022e
L_00410234:
    jmp dword ptr [_kb_rdata + 728] ; 00410234
L_0041023a:
    jmp dword ptr [_kb_rdata + 724] ; 0041023a
L_00410240:
    jmp dword ptr [_kb_rdata + 720] ; 00410240
L_00410246:
    jmp dword ptr [_kb_rdata + 716] ; 00410246
L_0041024c:
    jmp dword ptr [_kb_rdata + 392] ; 0041024c
L_00410252:
    jmp dword ptr [_kb_rdata + 92] ; 00410252
L_00410258:
    jmp dword ptr [_kb_rdata + 96] ; 00410258
L_0041025e:
    jmp dword ptr [_kb_rdata + 100] ; 0041025e
L_00410264:
    jmp dword ptr [_kb_rdata + 104] ; 00410264
END
