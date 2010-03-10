#! /bin/sh

xm create -c /etc/xen/xm-debian-curses.cfg install=true \
    install-mirror=ftp://ftp.debian.org/debian \
    install-installer=http://people.debian.org/~joeyh/d-i/images/daily/
