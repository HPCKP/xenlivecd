#! /bin/sh

# What day is it?
TODAY=`date +%Y%m%d`

# Run lh_config to prepare all the basic stuff
lh_config \
    -a i386 \
    -b iso \
    -k "xen-686 686" \
    -p standard \
    --apt apt \
    --apt-recommends disabled \
    --apt-secure disable \
    --debconf-frontend noninteractive \
    --debconf-priority high \
    --cache enabled \
    --bootloader grub \
    --linux-packages "linux-image-2.6 aufs-modules-2.6 squashfs-modules-2.6 redhat-cluster-modules-2.6 iscsitarget-modules-2.6" \
    --packages "squashfs-tools aufs-tools libc6-xen bridge-utils xen-linux-system-2.6.26-2-xen-686 xen-hypervisor-3.2-1-i386 xen-utils-3.2-1 xen-docs-3.2 libvirt-bin less virt-manager virt-viewer xen-tools xorg x11-xserver-utils gnome-session gnome-panel gdm evince metacity gnome-terminal gnome-backgrounds gnome-themes nautilus tsclient mesa-utils vinagre gnome-system-monitor lvm2 mdadm dmraid iceweasel gedit kpartx parted gparted ntfsprogs ntfs-3g vim telnet screen vncviewer mlocate desktop-base vlan vtun vde2 vdetelweb redhat-cluster-suite aoetools vblade vblade-persist python-rpm yelp iscsitarget open-iscsi isns isns-client ssh ganeti ganeti-instance-debootstrap firmware-bnx2 snmpd lighttpd php5-cgi php5-cli php5-sqlite sqlite3 kvm libwww-perl libdigest-sha1-perl x-ttcidfont-conf mc" \
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
    --iso-volume "Xen Live DVD v2.0" \
    --iso-preparer "Thiago Camargo M. Cordeiro <thiago.martins@worldweb.com.br>" \
    --iso-publisher "Xen Live project; http://wiki.xensource.com/xenwiki/LiveDVD; xen-users@lists.xensource.com" \
    --grub-splash "../stuff/splash.xpm.gz" \
    --memtest none \
    --source disabled

# make the tmp directories
mkdir tmp ; mkdir -p config/chroot_local-includes/tmp ; chmod 1777 config/chroot_local-includes/tmp
 
#    --interactive shell \
#    --bootstrap-flavour minimal|standard
#    --cache-indices enabled \
#    --cache-packages enabled \
#    --debian-installer enabled|live \
#    --use-fakeroot enabled \
