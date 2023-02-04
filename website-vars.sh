#!/bin/bash

# variables
PACKAGE="wget unzip httpd"
SERVICE="httpd"
URL="https://www.tooplate.com/zip-templates/2131_wedding_lite.zip"
ARTIFACT="2131_wedding_lite"
TEMPDIR="/tmp/webfiles"

echo "########################################"
echo "Installing Packages"
echo "########################################"
sudo yum install $PACKAGE -y > /dev/null # We use /dev/null to discard our outputs
echo

echo "########################################"
echo "Create temp directory"
echo "########################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

echo "########################################"
echo "Start Deployment"
echo "########################################"
wget $URL 
unzip $ARTIFACT.zip > /dev/null
cd $ARTIFACT
sudo cp -r * /var/www/html/
echo

echo "########################################"
echo "Start httpd servicd"
echo "########################################"
sudo systemctl start $SERVICE > /dev/null
sudo systemctl enable $SERVICE
echo

echo "########################################"
echo "Remove temporary files"
echo "########################################"
rm -rf $TEMPDIR