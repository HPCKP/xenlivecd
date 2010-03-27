#! /bin/bash

if [ ! -d config/chroot_local-includes/root ];then
    mkdir -p config/chroot_local-includes/roo 
fi

cd config/chroot_local-includes/root

wget -c http://livexen01.worldweb.com.br/ovs/amd64/openvswitch-common_0.99.2-0tcmc1_amd64.deb
wget -c http://livexen01.worldweb.com.br/ovs/amd64/openvswitch-datapath-module-2.6.26-2-amd64_0.99.2-0tcmc1_amd64.deb
wget -c http://livexen01.worldweb.com.br/ovs/amd64/openvswitch-datapath-module-2.6.26-2-xen-amd64_0.99.2-0tcmc1_amd64.deb
wget -c http://livexen01.worldweb.com.br/ovs/amd64/openvswitch-pki_0.99.2-0tcmc1_all.deb
wget -c http://livexen01.worldweb.com.br/ovs/amd64/openvswitch-switch_0.99.2-0tcmc1_amd64.deb
