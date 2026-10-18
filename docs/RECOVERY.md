# Recovery record

## Provenance

The xbins retrieval manifest is `evidence/download.json`. The release archive was
464,972 bytes. Its `Setup.exe` is 481,993 bytes, SHA256
`f956b9ea3512bc48635731aa9c17089aaa3741a347524ce6fe4bc16801966779`.
The extracted `KernelBasher.exe` is 151,552 bytes, SHA256
`563004b3934a878af5d6435855f6df84dbf194aee6cbbb1ece1d60e828cf94f2`.
It is native x86 PE32, originally using MSVC/MFC 7.1, rather than a managed .NET
application. The installer was extracted using 7-Zip, not launched.

REA successfully inspected the installer/application and produced the native
scanner dossier in `evidence/rea-locate-patches.json`. An earlier broad REA query
hit a JVM access violation; targeted inspection then succeeded. Ghidra headless
export supplied functions, instructions, call references and strings. Its initial
342-function pass timed out on the large save handler; a separate 180-second
decompilation recovered that handler. Additional MFC handlers were defined from
the recovered message map and DDX function and decompiled separately. The initial
`ghidra/summary.json` is retained as the original pass record, not a final status.

## Original-to-reconstructed source map

| Original virtual address | Role | Editable implementation |
|---|---|---|
| 0x401a90 | MFC data-exchange bindings | `core.cpp` bindings, `core.hpp`, `gui.cpp` |
| 0x401fa0 / 0x4021a0 | DirectX mesh vertices / indices | `core.cpp::load_logo` |
| 0x402380 | Packed logo conversion | `core.cpp::prepare_logo` |
| 0x402420 | Kernel signature scanner | `patch_engine.cpp::locate_patch_sites` |
| 0x4034c0 | Initial dialog settings | `Options::defaults`, `gui.cpp` |
| 0x404450 | Slider changes | `gui.cpp` scroll handling |
| 0x404850 / 0x404ba0 | Save/load presets | `core.cpp` preset functions |
| 0x405290 | Empty scenery-mod handler | preserved as an unavailable feature |
| 0x405320 | Save/patch routine | `patch_engine.cpp::patch_buffer`, `core.cpp` |
| 0x408f60 | BIOS identification / extraction | `identify_bios`, `unpack_bios` |
| 0x409ea0 / 0x40dfd0 | LZX compression / decompression | `m8_codec.asm` |
| 0x409ff0 / 0x40e0b0 | M8 pack / unpack | `m8_container.cpp`, archival assembly entry points |

`tools/reconstruct_core.py` translates the scanner and patch body to buildable
C++, correcting decompiler float-bit casts and replacing CRT/MFC/UI plumbing.
`tools/reconstruct_codec.py` uses the original PE and recovered instruction map
to emit relocatable MASM mnemonics. Absolute data pointers become symbolic
references to the reconstructed data arrays. This is source that is recompiled,
not a memory-mapped copy of the old EXE.

## Deliberate compatibility choices

- Preserved the original identification sum, including Windows text-mode CRLF
  and Ctrl-Z handling and `fgetc` returning -1 after EOF.
- Preserved original patch order, signatures, byte tables, float formatting and
  x87 arithmetic. Unsupported/patched input now receives additional signature
  checks before output can be accepted.
- Converted the kernel scanner and patcher entirely to memory. Signature search
  uses `memchr`/`memcmp` while preserving the original non-overlapping,
  failed-prefix-consuming search and last-match-wins behavior. A single `memcpy`
  initializes the output, and bounded buffer writes apply replacements. The
  outer loop skips unchanged spans but retains handler order and the original
  treatment of sites consumed by an earlier replacement.
- Preserved the 88-byte preset format. The original writes three option bytes
  and a camera character but does not restore them when loading a preset; this
  behavior is retained. Existing preset padding is retained when saving.
- Preserved the original camera-character comparison: its first branch compares
  ASCII camera text to numeric 1 and 7, making some advertised camera motions
  unreachable. Cameras 7/8 have separate working branches. This was checked in
  original assembly, not inferred only from decompiler output.
- Preserved logo packing, including the original patch loop's 464 index bytes.
- Original “Scenery Mod” has an empty handler and is hidden/unavailable. Hidden
  colour controls remain hidden in the reconstructed dialog.
- Corrected the surrounding GUI: native Windows dialog instead of MFC, explicit
  preview brushes, consistent BIOS-size order, and a normal top-level window.
  Preset editing is available without opening a BIOS; SaveAs still needs one.
- Corrected the original 1 MB selection's apparent `0x120000` value to standard
  `0x100000` for the xbflash path. As in the original M8 packer, M8 output retains
  the input ROM's size; the size selector does not resize M8 images.
- The kernel patcher creates no temporary streams or directories. M8 remains in
  memory through extraction, patching and repacking. Only the third-party X2/M7
  container DLL uses a unique temporary directory in place of `C:\temp`.
  Existing output filenames are rejected atomically and the input is preserved.
- Added bounded preset/mesh parsing and M8 structure checks. The new M8 unpacker
  uses the compressed stream length (the legacy wrapper passed the decompressed
  length), checks frame lengths, and bounds the copied initialized data.
- The reconstructed M8 packer checks PE section and ROM capacity bounds, avoids
  the legacy footer search beyond EOF, and defines the empty `.data` case.
  Valid synthetic output matches the recovered assembly packer exactly.

## Verification and scope

Eight differential tests run isolated original scanner/patch/mesh-converter x86
code under Unicorn. CRT file calls use memory streams; float parsing/formatting
and the camera-string query are explicitly modeled. The prefix that opens GUI
dialogs and the suffix that repacks a BIOS are outside these comparisons. All
eight 49,152-byte outputs match. The current memory implementation's full rerun
is in `evidence/differential/results.json`; `logo-results.json` records the earlier
two mesh checks from the first reconstruction.

`tools/memory_edge_test.py` compares scanner edge cases with original x86 code,
including every truncated prefix of all recovered patterns, duplicate matches,
overlaps and M8/non-M8 variants. It also compares two 64 KiB reordered-signature
patch fixtures against the original routine, checks EOF bounds, and exercises
patching with unusable TEMP/TMP paths. `test-kernel` checks input immutability and
repeatability in-process.

The standard regression suite checks three preset slider round trips, all 14
shipped meshes, four LZX sizes/patterns including incompressible multi-block data,
M8 pack parity and unpacking, dependency exports/config, rejection of selected
malformed inputs, and output preservation. The GUI was launched and its actual
preset load was observed, not just inferred from compilation.

These are substantial function-level checks, not exhaustive equivalence. No real
supported BIOS was patched and booted on an Xbox in this task. The preserved
xbflash binary is checked for loading/config/ABI, but its full BIOS pack/unpack
path has not been independently recreated or exercised end to end here. The
original identifier is a weak checksum, and these checks do not establish a safe
flash image. The legacy LZX internals are recovered code, not a newly audited
decoder for arbitrary hostile streams. The shared recovered data area makes the
core single-threaded. The original xbflash interface uses narrow paths, so use
ASCII filenames for its X2/M7 operations.

## Reproduction material

`tools/*.java` are the Ghidra export/recovery scripts. `tools/*.py` include the
translation, resource extraction, packaging and regression tools. Required Python
packages for optional reverse engineering are pinned in
`tools/requirements-recovery.txt`. Compiling the provided source does not require
REA, Ghidra, Java, Unicorn, Capstone, or pefile.

The local working folder additionally retains the Ghidra project and original
analysis logs. The source archive omits installed tool distributions, Python
package caches, crash dumps, build intermediates and external-consultation records.
