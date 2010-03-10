#! /bin/bash

mkdir -p /mnt/xendomains/ubuntu01
dd of=/mnt/xendomains/ubuntu01/ubuntu01-disk1.img bs=1024 seek=5000000 count=0
