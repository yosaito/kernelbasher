# Live boot animation preview

The native dialog embeds a small WebView2 pane containing the original-look
WebGPU renderer from [xbox-boot-re](https://github.com/bennyborn/xbox-boot-re).
It plays the eight-second animation, holds the final frame for one second and
repeats. Pause and Restart are available in the pane. All assets are local;
no browser window, internet connection, Node server or BIOS file is needed.

Changes arrive from sliders, numeric edit boxes while typing, checkboxes,
camera selection, preset loading, BIOS selection and logo loading. The latest
settings are retained during startup and sent after the renderer announces
readiness. Updates are coalesced to one per rendered frame. Colour changes do
not restart playback. Radius, camera and changes affecting cached logo geometry
replay the current ticks so the image updates at the same animation time.

## Coverage and interpretation

| Setting | Preview behaviour |
|---|---|
| Fog RGB | Colours the procedural veil during its active part of the animation |
| Initial glow RGB | Colours the opening flash |
| Main glow RGB | Colours the glow surrounding the flubber |
| Scene geometry RGB | Changes the machinery's lighting colour |
| End glow RGB | Colours the ending glow and veil flash |
| Flubber RGB / alpha / radius | Changes blob/drop colour, opacity and simulated radius |
| Wireframe Scene | Draws machinery edges; retains the flubber and other effects |
| White animation | White animation background; removes machinery unless Keep Machinery is checked |
| White splash | White logo/background render target and border |
| Camera 1–6 | Default path, preserving the original patcher's unreachable ASCII-vs-numeric branch |
| Camera 7 / 8 | Reference ROM paths 1 / 3, matching the original patch's selection bytes |
| Random Camera Motion | Chooses among the reference ROM's four paths at restart/loop |
| XBOX Logo Text | Uses the selected .x mesh with the recovered int16 quantisation and reference ROM's lettering decoder |
| Torn X Logo | Uses the recovered Torn-X byte payload, decoded into the reference logo meshes |
| BIOS size | Does not affect the visual scene |

White animation, white splash and Torn X are suppressed for M8, where the GUI
disables those options. Keep Machinery only has an effect with White animation,
as in the original patcher. Radius zero hides the flubber; the simulation uses
a tiny nonzero radius internally to prevent divisions by zero.

**This is a reference preview.** Upstream reconstructs Complex 4627, whereas
KernelBasher patches 4981/4983, M7 and M8. The colours and options are mapped to
the reference renderer, not obtained by emulating the edited BIOS. Lighting,
white/additive blending, random motion, timing and BIOS-specific differences
are not verified against real patched firmware. The preview is deliberately
labelled in the dialog. Existing binary comparison guarantees concern the
patcher output, not pixel equivalence between this renderer and an Xbox.

## Build and dependencies

`build.cmd` calls `python tools/build_preview.py`, which verifies the bundled
WASM hash, rebuilds the upstream data pack (also hash checked), reconstructs the
Torn-X meshes, and assembles `build/preview/`. Keep that folder beside the GUI.
The Windows ZIP includes it. The CLI does not use the preview.

To rebuild the WASM after editing the adapter/core, use LLVM clang with the
wasm32 backend and wasm-ld (23.1.3 was used):

```powershell
$env:XBOOT_CLANG = 'C:/path/to/llvm/bin/clang.exe'
python tools/build_preview.py --recompile
```

The compiler, sources, flags and hash are described in `third_party/README.md`.
No core RE tools are needed. The upstream subset remains unchanged; adapted
C files are generated under ignored `build/preview-core/`.

The preview requires Microsoft Edge WebView2 Runtime and a WebGPU-capable
graphics driver. Missing assets/runtime/WebGPU or device loss produces an
explanation inside the pane; BIOS editing remains available. WebView2 keeps its
browser cache under `%LOCALAPPDATA%/KernelBasher/WebView2`, so the installation
folder can be read-only. Async callbacks retain independent lifetime state;
closing the dialog closes the controller, including late creation callbacks.

## Verification

`tools/preview_test.mjs` runs the actual renderer in Edge through Playwright. It
starts a temporary loopback asset server solely for the test, checks pixel
hash changes for visual settings, restoration/deterministic replay, the camera
quirk, stable WASM allocation and two automatic loops. It records
`evidence/preview-tests.json` and example PNGs. Install Playwright with Node or
point `PLAYWRIGHT_MODULE` at an existing package, then run:

```powershell
node tools/preview_test.mjs
```

The portable application uses WebView2's HTTPS virtual-folder mapping and needs
no server. Preview integration does not modify the scanner, patcher or codec;
the 28 standard regression checks and eight saved-original output comparisons
continue to pass.
