#!/bin/bash

for file in ~/file/*.txt
do
    echo "The contents of $file is: $(cat $file)"
    sleep 1
done