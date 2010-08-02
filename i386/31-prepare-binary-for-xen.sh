#! /bin/sh

# This script is needed because I don't know how to tell live-helper to do this
# jobs...

# Copy 32 bits Hypervisor
cp chroot/boot/xen-3.2-1-i386.gz binary/live

# Get and copy 64 bits hypervisor
cd tmp
wget -c http://ftp.br.debian.org/debian/pool/main/x/xen-3/xen-hypervisor-3.2-1-amd64_3.2.1-2_amd64.deb
dpkg -x xen-hypervisor-3.2-1-amd64_3.2.1-2_amd64.deb hyper
cp hyper/boot/xen-3.2-1-amd64.gz ../binary/live
