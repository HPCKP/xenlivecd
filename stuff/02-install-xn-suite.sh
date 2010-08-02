#! /bin/sh

ARCH=i386

if [ -e /lib64 ]; then
    ARCH=amd64
fi

case "$ARCH" in
    i386)
        cd /tmp
        wget -c http://www.xncore.com/download/xn-suite_0.83-lenny1_i386.deb
#        wget -c http://www.xncore.com/download/xn-client_0.82-lenny1_i386.deb
        dpkg -i xn-suite_0.83-lenny1_i386.deb
        rm -f xn-suite_0.83-lenny1_i386.deb
        chown www-data: -R /usr/share/xn-core/xn-web
        sqlite3 /var/lib/xn-core/xn-web/xn-web.sqlite "UPDATE user SET password = 'live' WHERE username = 'admin'" 
        /etc/init.d/xn-daemon stop
    ;;
    amd64)
        cd /tmp
        wget -c http://www.xncore.com/download/xn-suite_0.83-lenny1_amd64.deb
#        wget -c http://www.xncore.com/download/xn-client_0.82-lenny1_amd64.deb
        dpkg -i xn-suite_0.83-lenny1_amd64.deb
        rm -f xn-suite_0.83-lenny1_amd64.deb
        chown www-data: -R /usr/share/xn-core/xn-web
        sqlite3 /var/lib/xn-core/xn-web/xn-web.sqlite "UPDATE user SET password = 'live' WHERE username = 'admin'"
        /etc/init.d/xn-daemon stop
    ;;
esac
