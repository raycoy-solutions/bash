#!/usr/bin/env bash

userId=`id -u`

if [[ $userId -eq 0 ]] 
then
    echo "You are root"  
else
    echo "You are not root"