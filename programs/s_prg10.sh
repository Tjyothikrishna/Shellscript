#!/bin/bash
read -p "Enter the user name to create:" uname
read -sp "Enter the passphase for the user $uname :" upass
useradd $uname
echo "$upass"|passwd --stdin $uname >/dev/null 2>&1
echo "\n$uname user creation is successful. You may login with the user $uname now"
#End.