#!/bin/bash
#
set -euo pipefail

OVERLAY_DEV=$(blkid -L OVERLAY)
if [ -z "$OVERLAY_DEV" ]; then
    echo "Could not find OVERLAY partition"
    exit 0
fi

DISK=$(lsblk -no PKNAME "$OVERLAY_DEV" | tr -d ' ')
PART_NUM=$(echo "$OVERLAY_DEV" | grep -oE '[0-9]+$')

DISK_PATH="/dev/$DISK"

echo "Growing GPT partition table on $DISK_PATH"
sgdisk -e "$DISK_PATH" 2>/dev/null || true

echo "Growing partition $PART_NUM on $DISK_PATH"
growpart "$DISK_PATH" "$PART_NUM" || echo "Partition already at maximum size"

echo "Resizing ext4 filesystem on $OVERLAY_DEV"
resize2fs "$OVERLAY_DEV" || echo "Filesystem already at maximum size"

echo "OVERLAY partition growth complete"
