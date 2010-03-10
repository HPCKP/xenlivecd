#! /bin/bash

# Since lh_build copy the kernel and initrs images from chroot to
# binary/live/ dir, we don't need to keep this files duplicated on
# the final live image.

rm -f chroot/boot/vmlinuz* chroot/boot/initrd* chroot/boot/xen-3.2-1-i386.gz chroot/vmlinuz chroot/initrd.img
rm -f binary/live/filesystem.squashfs

mksquashfs chroot binary/live/filesystem.squashfs
