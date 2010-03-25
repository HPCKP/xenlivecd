#! /bin/sh

VERSION=`cat ../VERSION`
TODAY=`date +%Y%m%d`

cd ~/devel/xenlivecd/
git archive --format=tar --prefix=xenlivecd-$VERSION/ master | gzip > ~/xenlivecd-$VERSION-$TODAY.tar.gz

cp ~/packit/xenlivecd-$VERSION.tar.gz binary/
