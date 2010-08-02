#! /bin/sh

# This script must be run just after lh_build finishes.
# It's needed because I don't know how to tell live-helper to do this
# jobs... Maybe merging some functions from update-grub to live-helper
# can be a good idea to improve this! Then live-helper will be able
# to generate grub's menu.lst for the live CD from binary/ contents... ;-)

# Copy 32 bits Hypervisor
cp chroot/boot/xen-3.2-1-amd64.gz binary/live

# Copy that grub menu version
cp -f ../stuff/menu.lst_amd64 binary/boot/grub/menu.lst
