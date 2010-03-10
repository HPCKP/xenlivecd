#! /bin/sh

cd /tmp
wget --no-cache http://www.convirture.com/repos/convirture_packaging_pub_key
apt-key add convirture_packaging_pub_key
rm -f convirture_packaging_pub_key
aptitude update
aptitude install convirt -y
aptitude clean
