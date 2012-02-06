# For i386
iso-i386:
	cd i386 && ./10-init-lh_config.sh
	cd i386 && ./15-copy-some-stuff.sh
	cd i386 && ./16-get-openvswitch.sh
	cd i386 && ./17-get-convirture-tools.sh
	cd i386 && ./20-run-lh_build.sh
	cd i386 && ./25-copy-grub-menu.sh
	cd i386 && ./26-purge-grub-common.sh
	cd i386 && ./29-update-apt-repositories.sh
	cd i386 && ./30-remake-squashfs.sh
	cd i386 && ./31-prepare-binary-for-xen.sh
	cd i386 && ./32-gen-windows-gplpv-drivers-iso.sh
	cd i386 && ./35-remake-iso.sh

plussource-i386:
	cd i386 && ./34-copy-source-to-iso.sh
	cd i386 && ./35-remake-iso.sh

plusguests-i386:
	cd i386 && ./33-ln-guests.sh
	cd i386 && ./35-remake-iso.sh

cp-2-site-i386:
	cd i386 && ./40-copy-iso-to-site.sh

clean-i386:
	cd i386 && rm -r binary* chroot* .lock .stage scripts config tmp -f

# For amd64
iso-amd64:
	cd amd64 && ./10-init-lh_config.sh
	cd amd64 && ./15-copy-some-stuff.sh
	cd amd64 && ./20-run-lh_build.sh
	cd amd64 && ./25-copy-grub-menu.sh
	cd amd64 && ./26-purge-grub-common.sh
	cd amd64 && ./29-update-apt-repositories.sh
	cd amd64 && ./30-remake-squashfs.sh
	cd amd64 && ./31-prepare-binary-for-xen.sh
	cd amd64 && ./35-remake-iso.sh

plussource-amd64:
	cd amd64 && ./34-copy-source-to-iso.sh
	cd amd64 && ./35-remake-iso.sh

plusguests-amd64:
	cd amd64 && ./33-ln-guests.sh
	cd amd64 && ./35-remake-iso.sh

cp-2-site-amd64:
	cd amd64 && ./40-copy-iso-to-site.sh

clean-amd64:
	cd amd64 && rm -r binary* chroot* .lock .stage scripts config tmp -f

# Global sections
i386: iso-i386

amd64: iso-amd64

dist-clean: clean-i386 clean-amd64

.PHONY: iso-i386 plusguests-i386 clean-i386 iso-amd64 plusguests-amd64 clean-amd64 clean-all
