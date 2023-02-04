#!/bin/bash

echo "########################################"
echo "Installing Packages"
echo "########################################"
sudo yum install wget unzip httpd -y > /dev/null
echo

echo "########################################"
echo "Create temp directory"
echo "########################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

echo "########################################"
echo "Start Deployment"
echo "########################################"
wget https://www.tooplate.com/zip-templates/2131_wedding_lite.zip > /dev/null
unzip 2131_wedding_lite.zip > /dev/null
cd 2131_wedding_lite
sudo cp -r * /var/www/html/
echo

echo "########################################"
echo "Start httpd service"
echo "########################################"
sudo systemctl start httpd > /dev/null
sudo systemctl enable httpd
echo

echo "########################################"
echo "Remove temporary files"
echo "########################################"
rm -rf /tmp/webfiles