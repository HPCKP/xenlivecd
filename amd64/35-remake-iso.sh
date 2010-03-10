#! /bin/sh

rm binary/md5sum.txt
lh_binary_md5sum --force
lh_binary_iso --force
