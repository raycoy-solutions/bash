#!/bin/bash

echo "########################################"
echo "Updating Package Repositories"
echo "########################################"
sudo apt update
echo

echo "########################################"
echo "Installing Package"
echo "########################################"
sudo apt install tree -y
echo

echo "########################################"
echo "Package installed succesfully"
echo "########################################"
echo

echo "########################################"
echo "Checking package path"
echo "########################################"
echo
which tree
