#! /bin/sh

cp ../stuff/05-prepare-chroot.sh config/chroot_local-hooks

cp -a ../stuff/Xen/dom0/etc config/chroot_local-includes
cp -a ../stuff/Xen/dom0/root config/chroot_local-includes

