# KernelBasher web application

Published at **https://mather.click/kernelbasher/** on the existing main VPS.

The browser editor includes the desktop colour controls, presets, camera and
scene options, radius and opacity, custom text DirectX X meshes, bundled sample
meshes, and a looping WebGPU preview. Changes reach the same renderer used by
the Windows dialog through a same-origin iframe message bridge. A BIOS is not
needed to preview settings. The layout supports desktop and mobile widths.

The preview requires a WebGPU-capable browser and graphics driver. If WebGPU is
unavailable the editor and downloads remain usable, with an explicit message.
It uses the Complex 4627 reference animation and cannot establish the appearance
of every BIOS on real hardware. See [PREVIEW.md](PREVIEW.md).

## Data and patching

BIOS recognition and preset / X-file parsing happen in the browser. Only clicking
**Download patched BIOS** uploads the selected BIOS, settings, and optional mesh.
The API invokes the exact Windows x86 CLI under Wine, including the original
xbflash dependency for Xecuter/M7 and the reconstructed M8 container and codec.
The scanner and patcher still operate on whole in-memory kernel buffers.

Each request has its own temporary directory. The native dependency's TEMP/TMP
also point into that directory. Input, unpacked data, settings, and output are
removed before the response is returned, including on normal error or timeout.
The container's `/tmp` is a 64 MiB tmpfs; uploads are not stored in the persistent
Wine prefix. There is no account system, database, upload history or telemetry.
Nginx access logs contain request metadata, not uploaded file contents.

The worker runs as UID 10001 with no network, a read-only root filesystem, all
Linux capabilities dropped, no-new-privileges, a 128-process limit and a 384 MiB
memory limit. Only its Unix socket is reachable from Nginx. One patch runs at a
time; a second receives HTTP 429. Requests are capped at 2 MiB and patch processes
at 20 seconds. The native engine repeats BIOS recognition and strict signature
checks before writing a result. M8 keeps the original ROM size.

`GET /kernelbasher/api/health` returns readiness metadata.
`POST /kernelbasher/api/patch` accepts multipart `bios`, JSON `settings`, and
optional `logo`, returning a new binary attachment or a JSON `error`.
Responses include SHA-256 headers for the input and output and disable caching.

## Build and run locally

Requirements: the normal Windows x86 build tools, Python 3, Node.js, and Docker
with Linux containers. No npm dependencies are needed to build the web editor.

```powershell
.\build.cmd --cli-only
python tools/build_web.py
docker build --platform linux/386 -t kernelbasher-worker:dev build/web-worker
docker volume create kernelbasher-dev-state
docker run --rm --user 0 --entrypoint chown -v kernelbasher-dev-state:/state kernelbasher-worker:dev 10001:10001 /state
docker run -d --name kernelbasher-worker-check --read-only --cap-drop ALL --security-opt no-new-privileges --pids-limit 128 --memory 384m --cpus 1 --tmpfs /tmp:rw,nosuid,nodev,size=64m -v kernelbasher-dev-state:/state -p 127.0.0.1:4506:8000 -e KB_BIND=0.0.0.0:8000 -e KB_ORIGIN=http://127.0.0.1:4505 kernelbasher-worker:dev
node tools/serve_web.mjs
```

Open http://127.0.0.1:4505/kernelbasher/. The local server proxies API requests
to the loopback-only worker. Production uses a Unix socket with no container
network. The Debian base image is pinned; OS packages come from its apt
repositories when a fresh image is built. The deployed image is saved and
transferred as a whole, so the VPS executes the locally tested image.

## Checks

```powershell
python tools/regression_test.py
python tools/replay_comparisons.py
python tools/worker_test.py
python tools/web_api_test.py
$env:PLAYWRIGHT_MODULE = 'path/to/existing/playwright'
node tools/web_browser_test.mjs
```

The worker check replays 28 core tests and eight saved original x86 outputs
under Wine. HTTP checks build a non-bootable synthetic M8 file, then compare
three complete downloads byte for byte with Windows and an independently
constructed legacy DDX settings buffer. They cover default settings, changed
colours/radius/camera/wireframe, custom X lettering and M8 size preservation,
plus nine malformed-input / origin rejection cases. No real BIOS is bundled.

Browser checks verify actual rendered pixel changes, X lettering and two loop
boundaries, preset round trips, input validation, a real binary download, keyboard
tabs, a 390px mobile layout, and the no-WebGPU fallback. The upstream preview
fork retains its separate 20 renderer checks. Reports are under `evidence/`.

Cross-platform testing found a reconstruction error at original address
`0040a488`: Ghidra labelled the literal `0x00b71b00` (12,000,000) as a data address.
The assembler recovery now retains that literal as the LZX Intel E8 transform
size. Previously relocating it made a compressed-stream header depend on ASLR.
Both Windows and web builds include the correction; a regression assertion
checks that header, and the saved scanner/patcher comparisons remain unchanged.

## Publish and operate

`tools/deploy_web.py` uses the already configured SSH alias `mather.click`,
noninteractive sudo, and the existing Docker/Nginx installation. Credentials
remain in the user's SSH configuration. It touches only this app's container,
site file and `/mnt/vps-data/kernelbasher` directory.

```powershell
python tools/deploy_web.py certificate
python tools/deploy_web.py publish --release UNIQUE_RELEASE_NAME
```

The certificate step uses the existing Certbot account and webroot. The VPS's
existing `yevhart-certificate.timer` already runs `certbot renew` for **all**
certificates and reloads Nginx; it therefore covers `mather.click` as well.
The published route is `/kernelbasher/`; no DNS change or new subdomain is needed.

Deployment validates transferred SHA-256 hashes, starts the isolated worker,
waits for its socket health check, switches the static release symlink, checks
Nginx and reloads it. Previous image and release details are recorded in
`releases/<release>/deployment.json`; a failed deployment restores them.
The existing website configurations are not edited.

```sh
sudo docker logs --tail 50 kernelbasher-worker
sudo docker stats --no-stream kernelbasher-worker
sudo curl --unix-socket /mnt/vps-data/kernelbasher/state/socket/api.sock http://localhost/health
sudo nginx -t
systemctl status yevhart-certificate.timer
```

For rollback, use the recorded previous release and image, recreate the worker
with the same flags in `deploy_web.py`, and repoint `current` to that previous
release. Keep the current and preceding usable release; remove only older app
releases/images after verifying they are no longer required.
