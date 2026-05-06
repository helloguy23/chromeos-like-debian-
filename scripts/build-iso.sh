#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../live-build"

sudo ./auto/config
sudo lb build

echo
echo "ISO output:"
ls -1 live-image-*.hybrid.iso 2>/dev/null || true

