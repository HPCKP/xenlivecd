#! /bin/sh

# What day is it?
TODAY=`date +%Y%m%d`

# Run lh_config to prepare all the basic stuff
lh_config \
    -a amd64 \
    -b iso \
    -k "xen-amd64 amd64" \
    -p standard \
    --apt apt \
    --apt-recommends disabled \
    --apt-secure disable \
    --debconf-frontend noninteractive \
    --debconf-priority high \
    --cache enabled \
    --bootloader grub \
    --linux-packages "linux-image-2.6 aufs-modules-2.6 squashfs-modules-2.6 xen-hypervisor xen-linux-system linux-image-xen-amd64 xen-tools" \
    --packages "squashfs-tools aufs-tools bridge-utils module-assistant build-essential gawk flex libncurses5 debconf-utils debhelper dpkg-dev kernel-package linux-headers-2.6.32-5-xen-amd64 ethtool lvm2 mdadm dmraid google-chrome ntfsprogs ntfs-3g vim screen vlan vtun ssh" \
    --chroot-filesystem squashfs \
    --union-filesystem aufs \
    --username livexen \
    --hostname xenalive \
    --root-command sudo \
    --mirror-bootstrap http://ftp.br.debian.org/debian \
    --mirror-chroot http://ftp.br.debian.org/debian \
    --mirror-chroot-security http://security.debian.org/ \
    --mirror-binary http://ftp.br.debian.org/debian \
    --categories "main contrib non-free" \
    --checksums enabled \
    --initramfs live-initramfs \
    --distribution lenny \
    --iso-application "Xen Live build $TODAY" \
    --iso-volume "HPCKP Xen Live DVD v0.1" \
    --iso-preparer "Jordi Blasco <jordi.blasco@gmail.com>" \
    --iso-publisher "Xen Live project; http://wiki.xensource.com/xenwiki/LiveDVD; xen-users@lists.xensource.com" \
    --grub-splash "../stuff/splash.xpm.gz" \
    --source disabled

# make the tmp directories
mkdir tmp ; mkdir -p config/chroot_local-includes/tmp ; chmod 1777 config/chroot_local-includes/tmp
 
#    --interactive shell \
#    --bootstrap-flavour minimal|standard
#    --cache-indices enabled \
#    --cache-packages enabled \
#    --debian-installer enabled|live \
#    --use-fakeroot enabled \
