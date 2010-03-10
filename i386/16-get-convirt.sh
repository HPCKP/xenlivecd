#! /bin/sh

mkdir -p config/chroot_local-includes/usr/local tmp

cd tmp
wget -c http://ufpr.dl.sourceforge.net/sourceforge/xenman/convirt-0.9.6.tar.gz
tar xzf convirt-0.9.6.tar.gz
cd convirt-0.9.6
patch -p1 < ../../../stuff/convirt-0.9.6-xen-lib-path.diff
cd ../..
cp -a tmp/convirt-0.9.6 config/chroot_local-includes/usr/local
chown root: config/chroot_local-includes/usr/local -R
