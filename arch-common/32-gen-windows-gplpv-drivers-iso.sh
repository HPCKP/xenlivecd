#! /bin/sh

cd tmp

wget -c http://www.meadowcourt.org/downloads/gplpv_2003x32_0.11.0.213.msi
wget -c http://www.meadowcourt.org/downloads/gplpv_2003x64_0.11.0.213.msi

wget -c http://www.meadowcourt.org/downloads/gplpv_Vista2008x32_0.11.0.213.msi
wget -c http://www.meadowcourt.org/downloads/gplpv_Vista2008x64_0.11.0.213.msi

wget -c http://www.meadowcourt.org/downloads/gplpv_XP_0.11.0.213.msi

wget -c http://www.meadowcourt.org/downloads/gplpv_fre_wlh_AMD64_0.10.0.130.msi
wget -c http://www.meadowcourt.org/downloads/gplpv_fre_wlh_x86_0.10.0.130.msi

wget -c http://www.meadowcourt.org/downloads/gplpv_fre_wnet_AMD64_0.10.0.130.msi
wget -c http://www.meadowcourt.org/downloads/gplpv_fre_wnet_x86_0.10.0.130.msi

wget -c http://www.meadowcourt.org/downloads/gplpv_fre_wxp_x86_0.10.0.130.msi

mkisofs -J -R -o xen-windows-gpl-pv.iso gplpv*

mv xen-windows-gpl-pv.iso ../binary/
