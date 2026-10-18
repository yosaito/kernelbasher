# KernelBasher 1.1

This project builds a working 32-bit Windows GUI and command-line tool.
It contains editable C++ application/patch code, the recovered dialog resources,
and reassemblable x86 MASM source for the embedded M8/LZX codec.

This is a functional reconstruction, not the lost original project. Compiler
output cannot recover the original comments, most local variable names, original
file boundaries, or Visual Studio project settings. The large patch routine
retains decompiler-style local names and original addresses to make its lineage
auditable. The new GUI uses Win32 in place of the old MFC71 shell.

## Start here

- `src/core.cpp`: named settings, original BIOS identification, presets, logo
  conversion, file handling, and the original xbflash DLL interface.
- `src/patch_engine.cpp`: compiled C++ reconstruction of the original signature
  scanner and patch routine, operating entirely on memory buffers.
- `src/patch_memory.hpp`: one initial `memcpy`, bounded writes and skipping of
  unchanged spans. No temporary streams or per-byte filesystem calls.
- `src/m8_container.cpp`: bounded C++ reconstruction of M8 container packing and
  unpacking.
- `src/m8_codec.asm`: 7,873 recovered x86 instructions, with relocated symbolic
  references and current CRT imports. This is assembled into the new executable;
  the old KernelBasher EXE is not loaded or executed by the rebuilt application.
- `src/gui.cpp`, `src/KernelBasher.rc`, `src/resources/`: the Windows dialog and
  recovered artwork/resources. `src/core.hpp` is the public application API.
- `docs/RECOVERY.md`: provenance, source-to-binary map, compatibility decisions,
  test coverage, and remaining limitations.
- `docs/DATA_FORMATS.md`: preset format, settings bindings and BIOS IDs.

The scanner searches the immutable input with `memchr`/`memcmp`, preserving the
original failed-prefix consumption and last-match behavior. The patcher copies
the kernel once and changes only the selected ranges in the output buffer.
M8 extraction and repacking also stay in memory; the original X2/M7 `xbflash.dll`
still requires files at its container boundary.

## Build

Requirements: Visual Studio C++ Build Tools with x86 C++/MASM tools and a Windows
SDK, plus Python 3. No Python packages are needed for an ordinary build.

Run `build.cmd` from this folder. It locates the compiler through `vswhere`, with
support for the local `C:\BuildTools` installation. Alternatively use an **x86
Native Tools** command prompt. The assembly and original xbflash DLL require an
x86 build. The build uses `/arch:IA32` to preserve the original x87 float behavior.

Outputs:

```text
build/KernelBasher.exe       Windows application
build/KernelBasher-cli.exe   command-line application
build/xbflash.dll            original third-party dependency
build/msvcr71.dll            runtime required by that original DLL
build/config.ini            original release configuration
```

Both EXEs were compiled successfully with MSVC 14.44.35207 on Windows. The new
source archive was also extracted into a clean folder, rebuilt, and passed all
28 standard regression checks there. The new
application itself uses a statically linked current C++ runtime; it does not need
MFC71. Keep the two DLLs and configuration beside the EXEs for X2/M7 container
operations. M8 uses the reconstructed embedded codec and C++ container code.

The portable archive includes the original `Presets` and `xfiles` directories.
For a source build, those examples remain under `original/extracted/`.

## Use

Open `build/KernelBasher.exe`. Open a supported unmodified BIOS, adjust the
controls, optionally load a `.kbp` preset or select an `.x` logo, then SaveAs to
a **new filename**. The original supported families are Xecuter 4981, Xecuter
4983.06/4983.67, Evox M7, and Evox M8/M8 1.6. Identification preserves the original
checksum rule; it is not a cryptographic validation of a BIOS.

Command-line examples, run from the project folder:

```bat
build\KernelBasher-cli.exe identify original.bin
build\KernelBasher-cli.exe unpack original.bin xboxkrnl.img
build\KernelBasher-cli.exe preset-info original\extracted\Presets\RED.kbp
build\KernelBasher-cli.exe logo-info original\extracted\xfiles\Bio.x
build\KernelBasher-cli.exe patch original.bin edited.bin original\extracted\Presets\RED.kbp
build\KernelBasher-cli.exe patch original.bin edited.bin original\extracted\Presets\RED.kbp original\extracted\xfiles\Bio.x
```

`kernel-patch INPUT OUTPUT KIND [PRESET] [LOGO]` operates on an already extracted
kernel; kinds 1, 2, 3, 4 correspond to 4981, 4983, M7, M8. Private `test-*` commands
exist for the supplied developer tests and accept trusted fixtures.

Preserve the original release's instruction to start each edit from an
unmodified BIOS rather than patching a previously edited output. The application
does not flash hardware. No Xbox was flashed or used to validate these outputs.
End-to-end validation on real supported BIOS files and an Xbox remains unverified.

## Verification

Run the standard regression suite after building:

```bat
python tools\regression_test.py
python tools\replay_comparisons.py
```

The checked results in `evidence/regression-results.json` cover the original
presets and meshes, compression/decompression, M8 layout, dependency loading,
malformed-input rejection, and preservation of existing output files.
The replay command checks the final build against all eight saved original x86
outputs without requiring Unicorn or any optional Python packages.

For differential execution of the original x86 scanner, patch loop, and logo
converter against the rebuilt C++, install the optional recovery dependencies
and run:

```bat
python -m pip install -r tools\requirements-recovery.txt
python tools\differential_test.py
python tools\memory_edge_test.py
```

The eight cases compare 49,152 output bytes each, with zero differences in all
cases. The fixtures contain the original signatures but are synthetic kernels;
these checks do not establish hardware compatibility. `evidence/differential/`
contains the exact inputs, settings, outputs and results. The M8 container test
also compares the new C++ packer with the recovered assembly packer byte for byte
on a synthetic 256 KiB ROM with a 64 KiB PE kernel.

The memory edge suite separately compares the scanner against original x86 code
for repeated/overlapping prefixes and truncated signatures, checks reordered and
consumed patch sites, rejects a patch extending beyond EOF, and patches without a
usable temporary directory. The comparison CLI also checks that the input remains
unchanged and a repeated call produces the same result.

The current memory implementation passed all 330 scanner comparisons and both
additional 64 KiB patch comparisons. These results are recorded in
`evidence/memory-edge-results.json`.

The GUI was opened and visually checked; loading the shipped `RED.kbp` correctly
updated the numeric channels, sliders and colour previews. See
`evidence/gui-red-preset.png`.

## Recovery tools and original material

REA 6.5.0 was used for PE inspection and a successful function dossier for the
patch scanner, supplemented by Ghidra 12.1.4 for full exports, manual function
discovery and decompilation. The captured REA and Ghidra evidence is included.
REA/Ghidra are not required to compile or run this reconstruction.

The release was fetched from:

```text
/XBOX/PC Based Applications/bios tools/KernelBasher/KernelBasherV1.1.zip
SHA256 e8010ae7a60e830a70594727f0f34ee1fa602c7d9ba1c673676f665782a3361e
```

The installer was extracted as an archive, without running it. The full release,
extracted application, presets, logos, original README and tutorial are preserved
under `original/`. The source package includes the evidence needed for the
reconstruction generators. Do not run generators over edits without preserving
your work: they regenerate the initially recovered files, not every later GUI
compatibility adjustment.

## Attribution and dependencies

The original release identifies Team KernelBase and credits Angelfly, NghtShd,
Yoshihiro/GUEUX.NET, Mterlouw, RjT, BlackstormX, Klutsh and The_Lynx (xbtc), and
consolemods.co.uk. See `original/extracted/README.TXT` for the original wording.
Original artwork, lookup tables, codec code and third-party binaries retain
their original ownership and license status; no new blanket license is asserted.

`xbflash.dll` and `msvcr71.dll` are preserved binary dependencies, not recreated
source. The lost application's embedded M8 code and patching logic are represented
in the new source. Historical original application code outside that functional
path is available as Ghidra pseudocode in the evidence directory.

Gemini 4 Argon High contributed a planning review that led to additional DDX
binding recovery, explicit ABI checks, x87 compatibility and signature-seeded
comparison tests. A focused follow-up review timed out; it is not counted as a
completed code review. A later focused review of the memory conversion also
timed out; the memory conversion was verified locally against original code.
