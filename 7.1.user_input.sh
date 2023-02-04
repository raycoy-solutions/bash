#!/bin/bash

echo "What's your name:"
read NAME

echo "Welcome $NAME, please type in your username and password to login?"

read -p "Username: " USR
read -sp "Password: " PSWD

echo
echo -e "Login Successful.\nWelcome User $USR"