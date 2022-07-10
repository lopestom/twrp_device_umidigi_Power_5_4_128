#!/system/bin/sh

umount /dev/block/dm-2
umount /dev/block/dm-1
umount /dev/block/dm-0

blockdev --setrw /dev/block/dm-2
mount -o remount,rw /
mount -o remount,rw /system_root
blockdev --setrw /dev/block/dm-1
mount -o remount,rw /vendor
blockdev --setrw /dev/block/dm-0
mount -o remount,rw /product
