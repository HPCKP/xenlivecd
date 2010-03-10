#! /bin/bash

# This script gets the guestname from the kernel command line and write the new
# etc/hostname and etc/hosts files inside an already mounted aufs in read-write mode.

GUESTNAME=`dmesg | grep 'Kernel command line' | perl -ane '/guestname=(\S+)/; print "$1\n"'`

echo $GUESTNAME > /etc/hostname
echo "127.0.1.1 $GUESTNAME $GUESTNAME" >> /etc/hosts
