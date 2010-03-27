#! /bin/sh

# My live-hlper is running under a 64 bits Xen domU, so, to install the 686
# openvswitch modules under a chroot environment for the Xen Live CD, I need to
# do this workaround to install the packages under the chroot...
# This mkdir will not work on a different system!
mkdir /lib/modules/2.6.26-2-xen-amd64

dpkg -i /root/openvswitch-common_0.99.2-0tcmc1_i386.deb
dpkg -i /root/openvswitch-datapath-module-2.6.26-2-686_0.99.2-0tcmc1_i386.deb
dpkg -i /root/openvswitch-datapath-module-2.6.26-2-xen-686_0.99.2-0tcmc1_i386.deb
dpkg -i /root/openvswitch-pki_0.99.2-0tcmc1_all.deb

# NOTE: The installations of the next package will load the openvswitch_mod
# kernel module, so, you need to have it in your build host (where the
# live-helper is running).
dpkg -i /root/openvswitch-switch_0.99.2-0tcmc1_i386.deb

rm -f /root/openvswitch*

# Workaround
rm -r /lib/modules/2.6.26-2-xen-amd64 -f
