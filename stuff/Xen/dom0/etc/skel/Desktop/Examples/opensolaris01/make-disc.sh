#! /bin/bash

mkdir -p /mnt/xendomains/opensolaris01/
dd of=/mnt/xendomains/opensolaris01/opensolaris01-disk1.img bs=1024 seek=5000000 count=0
