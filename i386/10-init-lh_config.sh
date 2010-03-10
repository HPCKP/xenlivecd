#! /bin/sh

# What day is it?
TODAY=`date +%Y%m%d`

lh_config \
    -a i386 \
    -b iso \
    -k "xen-686 686" \
    -p standard \
    --apt apt \
    --apt-recommends disabled \
    --apt-secure disable \
    --debconf-frontend dialog \
    --debconf-priority high \
    --cache enabled \
    --bootloader grub \
    --linux-packages "linux-image-2.6 aufs-modules-2.6 squashfs-modules-2.6" \
    --packages "squashfs-tools aufs-tools libc6-xen bridge-utils xen-linux-system-2.6.26-1-xen-686 xen-hypervisor-3.2-1-i386 xen-utils-3.2-1 xen-docs-3.2 libvirt-bin less virt-manager virt-viewer xen-tools xorg x11-xserver-utils gnome-session gnome-panel gdm evince metacity gnome-terminal gnome-backgrounds gnome-themes nautilus tsclient mesa-utils vinagre gnome-system-monitor lvm2 mdadm dmraid python-paramiko iceweasel gedit kpartx openssh-client parted gparted ntfsprogs ntfs-3g vim telnet screen xvnc4viewer mlocate desktop-base vlan vtun vde2 vdetelweb redhat-cluster-suite aoetools vblade vblade-persist"  \
    --chroot-filesystem squashfs \
    --union-filesystem aufs \
    --username livexen \
    --hostname xenalive \
    --root-command sudo \
    --mirror-bootstrap http://ftp.br.debian.org/debian \
    --mirror-chroot http://ftp.br.debian.org/debian \
    --mirror-chroot-security http://security.debian.org/ \
    --mirror-binary http://ftp.br.debian.org/debian \
    --categories "main" \
    --checksums enabled \
    --initramfs live-initramfs \
    --distribution lenny \
    --iso-application "Xen Live build $TODAY" \
    --iso-volume "Xen Live CD v2.0" \
    --iso-preparer "Thiago Camargo M. Cordeiro <thiago.martins@worldweb.com.br>" \
    --iso-publisher "Xen Live project; http://wiki.xensource.com/xenwiki/LiveCD; xen-users@lists.xensource.com" \
    --grub-splash "../stuff/splash.xpm.gz" \
    --interactive shell \
    --source disabled
 
#    --bootstrap-flavour minimal|standard
#    --cache-indices enabled \
#    --cache-packages enabled \
#    --debian-installer enabled|live \
#    --use-fakeroot enabled \

