#! /bin/bash

if [ ! -d config/chroot_local-includes/root ];then
    mkdir -p config/chroot_local-includes/root
fi

cd config/chroot_local-includes/root

# OpenVSwitch Essentials
wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-common_1.0.1_i386.deb
wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-pki_1.0.1_all.deb
wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-switch_1.0.1_i386.deb

# OpenVSwitch Kernel Module
wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-datapath-module-2.6.26-2-686_1.0.1_i386.deb
wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-datapath-module-2.6.26-2-xen-686_1.0.1_i386.deb
