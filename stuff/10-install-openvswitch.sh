#! /bin/sh

echo "deb http://livexen01.worldweb.com.br/debian lenny ovs" > /etc/apt/sources.list.d/openvswitch.list
echo "deb-src http://livexen01.worldweb.com.br/debian lenny ovs" >> /etc/apt/sources.list.d/openvswitch.list

aptitude update
aptitude install -y openvswitch modules etc
