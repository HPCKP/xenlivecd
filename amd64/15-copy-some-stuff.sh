#! /bin/sh

cp -a ../stuff/Xen/dom0/etc config/chroot_local-includes
cp -a ../stuff/Xen/dom0/root config/chroot_local-includes
cp ../stuff/Xen/dom0/livexen-libvirt config/chroot_local-preseed
