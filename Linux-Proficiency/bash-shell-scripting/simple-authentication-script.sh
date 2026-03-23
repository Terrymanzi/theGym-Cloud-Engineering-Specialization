#!/bin/bash
# simple login auth script
echo "#########################################################################"
echo "WELCOME TO TERRY'S PORTAL"
echo "#########################################################################"
read -p "enter your email: " email
read -s -p "enter your password: " password
echo

attempts=3

echo "#########################################################################"
if [[ $email == "m.terry@alustudent.com" && $password == "123" ]]; then
        echo "Login successful"
else
        echo "Wrong credentials, $attempts left try again!"
fi
echo "#########################################################################"