Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Write-Host "This project builds ISOs on Linux. Recommended: WSL2."
Write-Host ""
Write-Host "In WSL (Ubuntu/Debian), run:"
Write-Host "  sudo apt update"
Write-Host "  sudo apt install -y live-build xorriso squashfs-tools grub-pc-bin grub-efi-amd64-bin mtools dosfstools isolinux syslinux-common"
Write-Host "  cd chromeos-like-debian/live-build"
Write-Host "  sudo ./auto/config"
Write-Host "  sudo lb build"
Write-Host ""
Write-Host "Output ISO will be: live-build/live-image-*.hybrid.iso"

