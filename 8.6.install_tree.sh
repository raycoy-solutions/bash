#!/bin/bash
# set -x

which tree > /dev/null
if [[ $? -ne 0 ]]
then
    if [[ $OSTYPE == "darwin"* ]] # For MacOS
    then
        echo "Installing tree on macOS"
        brew install tree > /dev/null
        echo "Installed tree successfully"
        tree ~
    elif [[ $OSTYPE == "linux-gnu"  ]] 
    then
        echo "Installing tree on ubuntu"
        sudo apt update -y > /dev/null
        sudo apt install tree -y > /dev/null # this will work on only ubuntu distros
        echo "Installed tree successfully"
        tree ~
    else
        echo "Sorry! I don't know your OS"
    fi
else
    echo "tree is installed"
fi

# TODO: Add current Amazon Linux 2 to the mix