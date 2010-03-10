#! /bin/sh
#

# First use convencional PV configuration style to start ours domains.
#xm create /etc/xen/server01.cfg
#xm create /etc/xen/server02.cfg
#xm create /etc/xen/client01.cfg
#xm create /etc/xen/client02.cfg

# Just to be sure...
#sleep 3

# Use libvirt to register the domUs.
#
# dump
#virsh dumpxml server01 > /etc/xen/server01.xml
#virsh dumpxml server02 > /etc/xen/server02.xml
#virsh dumpxml client01 > /etc/xen/client01.xml
#virsh dumpxml client02 > /etc/xen/client02.xml

# define
# This step is higly depended on a working bridged network on dom0.
# Who don't have a working network ethernet (eth0) today? So, I'll do it and
# hope for the best.
virsh define /etc/xen/server01.xml
virsh define /etc/xen/server02.xml
virsh define /etc/xen/client01.xml
virsh define /etc/xen/client02.xml

# Start at last two domUs
virsh start server01
#virsh start server02
virsh start client01
#virsh start client02
