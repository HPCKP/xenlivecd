#! /bin/sh

mkdir binary/guests
cd binary/guests

ln /home/xenbuilder/guests-builddir/ubuntu-8.10-desktop-i386.squashfs 
ln /home/xenbuilder/guests-builddir/ubuntu-8.10-server-i386.squashfs 
ln /home/xenbuilder/guests-builddir/initrd.img-2.6.27-14-server 
ln /home/xenbuilder/guests-builddir/vmlinuz-2.6.27-14-server 
