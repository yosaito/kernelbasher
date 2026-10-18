#!/bin/sh
set -eu
mkdir -p "$WINEPREFIX" /state/socket
wineboot -u
wineserver -w
wineserver -p
wine /app/engine/KernelBasher-cli.exe test-dependencies ignored
exec gunicorn --bind "${KB_BIND:-unix:/state/socket/api.sock}" --umask 0007 --workers 1 --threads 2 --timeout 40 --access-logfile - --error-logfile - server:app
