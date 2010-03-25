#! /bin/sh

# Change the root password to "live":
sed -i "s/^root::/root:\$1\$XB0iKAYV\$DZM1qDJXQlzDeyszVTipn\/:/" /etc/shadow

lighty-enable-mod fastcgi

update-alternatives --set editor /usr/bin/vim.basic

ln -s /etc/alternatives/xen-default /usr/lib/xen

rm -f /etc/ssh/ssh_host_*

mkdir -p /var/lib/xen/kernels

updatedb
