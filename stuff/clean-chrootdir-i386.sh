#! /bin/bash

# Since lh_build copy the kernel and initrs images from chroot to
# binary/live/ dir, we don't need to keep this files duplicated on
# the final live image.

echo ***LIMPANDOOOOO***
sleep 20
ls -l /
rm -f /boot/vmlinuz* /boot/initrd* /boot/xen-3.2-1-i386.gz /vmlinuz /initrd.img
