#!/bin/bash
yum install wget unzip httpd -y
mkdir -p /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2131_wedding_lite.zip
unzip 2131_wedding_lite.zip
cd 2131_wedding_lite
cp -r * /var/www/html/
systemctl start httpd
systemctl enable httpd
