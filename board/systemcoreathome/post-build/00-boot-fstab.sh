#!/bin/bash

# Add boot partition to fstab at /boot

BOOT_FSTAB="/dev/mmcblk0p1 /boot vfat defaults 0 2"
if ! grep -Fsq /dev/mmcblk0p1 "${TARGET_DIR}"/etc/fstab; then
  echo "${BOOT_FSTAB}" >> "${TARGET_DIR}"/etc/fstab
fi
