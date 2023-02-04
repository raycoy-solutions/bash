#!/bin/bash

number=1

while [[ $number -le 10 ]]
do
    echo $number
    number=$(( $number + 1 ))
    sleep 1
done

echo "Loop has stopped"