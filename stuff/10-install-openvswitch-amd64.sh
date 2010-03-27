#! /bin/sh

dpkg -i /root/openvswitch-common_0.99.2-0tcmc1_amd64.deb
dpkg -i /root/openvswitch-datapath-module-2.6.26-2-amd64_0.99.2-0tcmc1_amd64.deb
dpkg -i /root/openvswitch-datapath-module-2.6.26-2-xen-amd64_0.99.2-0tcmc1_amd64.deb
dpkg -i /root/openvswitch-pki_0.99.2-0tcmc1_all.deb

# NOTE: The installations of the next package will load the openvswitch_mod
# kernel module, so, you need to have it in your build host (where the
# live-helper is running).
dpkg -i /root/openvswitch-switch_0.99.2-0tcmc1_amd64.deb

rm -f /root/openvswitch*
