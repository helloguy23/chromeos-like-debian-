# ChromeOS-like Debian (starter)

This repo is a **starter** for building a Debian-based Linux OS that:

- Boots as a **live ISO** (works in **VMs** and on **real hardware**)
- Has a **ChromeOS-like** feel: **Chromium-first**, minimal UI
- Includes an **“app store”** experience via **Flatpak + Flathub** (GNOME Software)
- Has **custom branding** (name/icon/menu entries)
- Can later be extended with an installer (Calamares) and OEM features

## What you get right now

- **ISO build system** using Debian `live-build`
- **Minimal desktop stack** (Wayland + Sway) and Chromium
- **Autostart**: kiosk-ish Chromium launcher (you can adjust)
- **Flatpak + GNOME Software** for a store-like UX
- A place to plug in **Calamares** (installer) configs

## Build requirements (recommended)

Because ISO building is Linux-native, build inside **WSL2** (Windows) or on a Linux machine.

## Get a download link (GitHub-built ISO)

If you want a **download link** without building locally, you can use GitHub Actions:

1. Create a GitHub repo and push this folder.
2. Go to **Actions → Build ISO → Run workflow**.
3. When it finishes, open that run and download the artifact named **`chromeos-like-debian-iso`** (contains `live-image-*.hybrid.iso`).

### Option A: WSL2 (Windows 10/11)

- Install WSL2 and an Ubuntu/Debian distro
- In WSL:

```bash
sudo apt update
sudo apt install -y live-build xorriso squashfs-tools grub-pc-bin grub-efi-amd64-bin mtools dosfstools isolinux syslinux-common
```

Then build:

```bash
cd chromeos-like-debian/live-build
sudo ./auto/config
sudo lb build
```

The ISO appears under `live-build/` as `live-image-*.hybrid.iso`.

### Option B: Native Debian/Ubuntu

Same commands as above.

## Customizing

- **Branding/icon**: `live-build/config/includes.chroot/usr/share/icons/hicolor/scalable/apps/`
- **Chromium launch behavior**: `live-build/config/includes.chroot/usr/local/bin/launch-chromium`
- **Packages**: `live-build/config/package-lists/*.list.chroot`

## Roadmap (next steps you can ask for)

- Calamares-based installer integrated into the ISO
- A custom “store” UI (web/PWA) that fronts Flatpak apps
- Theme, login flow, first-boot UX, updates channel, telemetry opt-in, etc.

