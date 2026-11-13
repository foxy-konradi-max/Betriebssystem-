#!/bin/sh
# FluidOS ISO bauen (Debian 12 "bookworm" + XFCE). Läuft in einem Debian-Container.
set -eu
cd "$(dirname "$0")"

# Dateirechte setzen (beim Hochladen im Browser gehen sie verloren)
chmod +x config/hooks/live/*.chroot config/includes.chroot/usr/local/bin/* 2>/dev/null || true

export DEBIAN_FRONTEND=noninteractive

lb config \
  --distribution bookworm \
  --architectures amd64 \
  --binary-images iso-hybrid \
  --debian-installer none \
  --archive-areas "main contrib non-free non-free-firmware" \
  --iso-application FluidOS \
  --iso-volume FluidOS \
  --memtest none \
  --apt-recommends false \
  --chroot-squashfs-compression-type zstd \
  --bootappend-live "boot=live components quiet splash locales=de_DE.UTF-8 keyboard-layouts=de timezone=Europe/Berlin"

lb build

# Verify that live-build actually produced a bootable ISO artifact.
set -- *.iso
if [ ! -f "$1" ]; then
  echo "FEHLER: live-build hat keine ISO-Datei erzeugt." >&2
  exit 1
fi
