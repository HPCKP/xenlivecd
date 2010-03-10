#! /bin/sh

cp ../stuff/01-install-convirt.sh config/chroot_local-includes/tmp
cp ../stuff/02-install-xn-suite.sh config/chroot_local-includes/tmp
cp ../stuff/05-prepare-chroot.sh config/chroot_local-includes/tmp

cp -a ../stuff/Xen/dom0/etc config/chroot_local-includes
cp -a ../stuff/Xen/dom0/root config/chroot_local-includes

cp ../stuff/Xen/dom0/livexen-libvirt config/chroot_local-preseed
