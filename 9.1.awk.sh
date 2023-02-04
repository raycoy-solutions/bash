#!/bin/bash

current_date=$(date | awk '{print $1,$2,$3}')
laptop_uptime=`uptime | awk '{print $1}'`
avai_memory=`free -m | grep Mem | awk '{print $4}'`
avai_disk=`df -h | grep /dev/ | awk '{print $4}'`

echo "Welcome user $USER"
echo "Today is $current_date"
echo

echo "==========================================="
echo "AVAILABLE MEMORY"
echo "==========================================="
echo "You have $avai_memory"mb available
echo

echo "==========================================="
echo "AVAILABLE DISK"
echo "==========================================="
echo "You have $avai_disk" available
echo

# ASSIGNMENT
# TODO: Add current_time to the mix
# TODO: Use laptop_uptime to the mix