#! /bin/sh

xm create /etc/xen/xm-debian-vfb.cfg install=true \
    install-mirror=ftp://ftp.debian.org/debian \
    install-installer=http://people.debian.org/~joeyh/d-i/images/daily/

echo
echo "Use VNC, ConVirt or virt-manager to continue this Debian installation..."
echo
