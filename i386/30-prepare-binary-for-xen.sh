#! /bin/sh

# This script must be run just after lh_build finishes.
# It's needed because I don't know how to tell live-helper to do this
# jobs... Maybe merging some functions from update-grub to live-helper
# can be a good idea to improve this! Then live-helper will be able
# to generate grub's menu.lst for the live CD from binary/ contents... ;-)

# Copy 32 bits Hypervisor
cp chroot/boot/xen-3.2-1-i386.gz binary/live

# Get and copy 64 bits hypervisor
mkdir tmp
cd tmp
wget -c http://ftp.br.debian.org/debian/pool/main/x/xen-3/xen-hypervisor-3.2-1-amd64_3.2.1-2_amd64.deb
dpkg -x xen-hypervisor-3.2-1-amd64_3.2.1-2_amd64.deb hyper
cp hyper/boot/xen-3.2-1-amd64.gz ../binary/live
cd ..
# done.

cp -f ../stuff/menu.lst_i386 binary/boot/grub/menu.lst
