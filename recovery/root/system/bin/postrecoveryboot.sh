#!/system/bin/sh

umount /dev/block/dm-4
umount /dev/block/dm-5
umount /dev/block/dm-6

blockdev --setrw /dev/block/dm-4
mount -o remount,rw /
mount -o remount,rw /system_root
blockdev --setrw /dev/block/dm-5
mount -o remount,rw /vendor
blockdev --setrw /dev/block/dm-6
mount -o remount,rw /product