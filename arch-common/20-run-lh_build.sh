#! /bin/sh

export MKSQUASHFS_OPTIONS="-e boot initrd.img vmlinuz"
lh_build
