#!/bin/bash

read -p "Enter a number:" NUM
if [[  $NUM -gt 10 ]]
then
    echo "Your number is greater than 10"
    echo
elif [[  $NUM -lt 10 ]]
then
    echo "Your number is less than 10"
    echo
else
    echo "Hmmn not sure"
fi