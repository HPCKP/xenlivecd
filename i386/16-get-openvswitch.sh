#! /bin/bash

if [ ! -d config/chroot_local-includes/root ];then
    mkdir -p config/chroot_local-includes/roo
fi

cd config/chroot_local-includes/root

wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-common_0.99.2-0tcmc1_i386.deb
wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-datapath-module-2.6.26-2-686_0.99.2-0tcmc1_i386.deb
wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-datapath-module-2.6.26-2-xen-686_0.99.2-0tcmc1_i386.deb
wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-pki_0.99.2-0tcmc1_all.deb
wget -c http://livexen01.worldweb.com.br/ovs/i386/openvswitch-switch_0.99.2-0tcmc1_i386.deb
