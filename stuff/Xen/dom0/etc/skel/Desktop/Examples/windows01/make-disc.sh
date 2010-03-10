#! /bin/bash

mkdir -p /mnt/xendomains/windows01
dd of=/mnt/xendomains/windows01/windows01-disk1.img bs=1024 seek=50000000 count=0
