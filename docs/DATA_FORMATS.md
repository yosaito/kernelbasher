# Recovered formats and settings

## Preset `.kbp`

Exactly 88 bytes, little-endian. Offsets 0..79 contain twenty uint32 slider
positions (0..255), in the following order. Colour values are `255 - position`.
Radius is `(255 - position) * 0.025`.

| Index | Dialog setting | Original member offset |
|---:|---|---:|
| 0, 1, 2 | Main glow R, G, B | 0xd70, 0xd6c, 0xd68 |
| 3, 4, 5 | Initial glow R, G, B | 0xd7c, 0xd78, 0xd74 |
| 6, 7, 8 | End glow R, G, B | 0xda4, 0xda0, 0xd9c |
| 9, 10, 11, 12 | Flubber R, G, B, alpha | 0xdb4, 0xdb0, 0xdac, 0xda8 |
| 13 | Radius | 0xdcc |
| 14, 15, 16 | Fog colour R, G, B | 0xd88, 0xd84, 0xd80 |
| 17, 18, 19 | Scene geometry R, G, B | 0xd98, 0xd94, 0xd90 |

Bytes 80, 81, 82 are white splash, keep machinery and white animation booleans.
Byte 83 is padding. Offset 84 contains the ASCII camera digit in a uint32. The
original loader does not apply these last eight bytes; reconstruction retains
that behavior. Channel names above follow the recovered dialog captions.

## BIOS identification

After restricting file size to 256 KiB, 512 KiB or 1 MiB, the original sums 8,000
text-mode `fgetc` results. It collapses CRLF, stops at Ctrl-Z, and adds -1 for
remaining reads after EOF. This is a compatibility identifier, not a hash.

| Sum | Family | Internal kind |
|---:|---|---:|
| 0x501f9 | Xecuter 4981 | 1 |
| 0x516c1 | Xecuter 4983.06 | 2 |
| 0x5160d | Xecuter 4983.67 | 2 |
| 0x4fab7 | Evox M7 | 3 |
| 0x4a03a | Evox M8 1.6 | 4 |
| 0x4a0c2 | Evox M8 | 4 |

## Text `.x` logo

The reconstruction reads an ASCII DirectX text mesh, with 2..156 vertices and
2..155 triangular faces. Positions are converted to packed signed 16-bit
coordinates using the original constants and truncation. Indices are delta
encoded in the original order. The bundled 14 examples all parse, and the largest
vertex-count case was used for original-machine-code comparisons in kinds 1/4.

## M8 container

The footer marker is ten bytes: `$EvoxRom$` followed by NUL. It is found on an
even offset in the final 4096 bytes of the ROM. Fields relative to that marker:

| Offset | uint32 field |
|---:|---|
| +10 | ROM tail size used to locate the replacement boot block |
| +14 | Compressed kernel ROM address |
| +18 | Compressed stream byte count |
| +22 | Decompressed kernel byte count |

The stream consists of blocks with little-endian uint16 compressed and plain
lengths, followed by the compressed bytes. Plain blocks are at most 0x8000 bytes.
The initialized `.data` section immediately follows the compressed stream.
Kernel header fields 0x28..0x3b describe uninitialized/initialized data lengths,
data ROM/RAM addresses, and the replacement boot-block size (0x4658).
## Web adapter options (KBO1)

`patch-options BIOS OUTPUT OPTIONS [LOGO]` accepts the full settings independently
of the original partial-load `.kbp` semantics. The options file is exactly 40 bytes:

| Offset | Type | Meaning |
| --- | --- | --- |
| 0 | 4 bytes | ASCII `KBO1` |
| 4 | 19 bytes | Fog RGB, initial glow RGB, main glow RGB, scene RGB, end glow RGB, flubber RGB, flubber alpha |
| 23 | byte | Reserved, must be zero |
| 24 | float32 LE | Radius, finite and between 0 and 6.375 |
| 28 | uint32 LE | Camera, 1–8 |
| 32 | uint32 LE | Flags: white splash, white animation, keep machinery, replace logo, random camera, wireframe, Torn X (bits 0–6) |
| 36 | uint32 LE | Requested output size: 262144, 524288 or 1048576 |

Unspecified hidden colour channels retain the desktop defaults. M8 preserves
its input size. Unknown flag bits, malformed lengths and invalid values are
rejected. Selecting replace-logo requires a valid X file.
