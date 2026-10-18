# Bundled preview dependencies

## xbox-boot-re

Source: https://github.com/bennyborn/xbox-boot-re

Pinned commit: `12a3396aa77f72c8d2fd94c0988c7e11539b47e7` (main, retrieved 18 October 2026).
The selected portable C core, data, pack generator and six web-renderer modules
are copied without edits under `xbox-boot-re/`. Its MIT license is included.
Upstream explicitly excludes `data/` from that license: the extracted geometry,
tables and samples remain Microsoft's property. See the included
`xbox-boot-re/docs/provenance.md`. No Xbox BIOS or decryption key is included.

KernelBasher's adapter is in `src/preview/`, `src/preview.cpp` and
`tools/build_preview.py`. The build generates a private copy of Blob.c with
`B_RADIUS` made configurable, adds `kb_set_radius`, and compiles that with the
remaining unmodified core. Runtime colours, mesh replacements and render options
are applied by a renderer subclass. The compiled WASM and its SHA-256 are included
under `src/preview/` so normal builds require no LLVM installation or network.

The bundled WASM was built with LLVM clang 23.1.3, wasm32, upstream's strict
floating-point flags and `-mbulk-memory`. Compiler source release:
https://github.com/llvm/llvm-project/releases/tag/llvmorg-23.1.3
The toolchain itself is not distributed in this repository.

## Microsoft Edge WebView2

SDK NuGet version `1.0.4258.31`:
https://www.nuget.org/packages/Microsoft.Web.WebView2/1.0.4258.31

`webview2/` contains the SDK's unmodified `WebView2.h`, x86
`WebView2LoaderStatic.lib`, and `LICENSE.txt`. The static loader is linked into
the GUI; the separately installed WebView2 Runtime supplies the browser engine.
The Runtime and graphics driver must support WebGPU. There is no runtime asset
download, local web server or audio playback.
