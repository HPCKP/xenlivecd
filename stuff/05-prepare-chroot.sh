#! /bin/sh

passwd root                             # change the root password to "live"

lighty-enable-mod fastcgi
update-alternatives --set editor /usr/bin/vim.basic
ln -s /etc/alternatives/xen-default /usr/lib/xen
rm -f /etc/ssh/ssh_host_*

mkdir -p /var/lib/xen/kernels

updatedb
