#!/bin/bash

echo "########################################"
echo "Installing Package"
echo "########################################"
sudo apt update
sudo apt install tree
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