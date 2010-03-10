#! /bin/sh

passwd root                             # change the root password to "live"
update-alternatives --config editor     # Select option 5 - vim please!
lighty-enable-mod fastcgi

ln -s /etc/alternatives/xen-default /usr/lib/xen
rm -f /etc/ssh/ssh_host_*

mkdir -p /var/lib/xen/kernels
