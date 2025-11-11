#!/bin/bash
#program to create user
echo "Creating a user"
echo -n  "Enter the user name : "
read username
echo -n "Enter password for user : "
read -s pass
useradd $username
echo $pass|passwd --stdin $username >/dev/null 2>&1
#End
