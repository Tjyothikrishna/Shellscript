#!/bin/bash
#Script to add given user to group 
#Read username from keyboard

read -p "Enter the username : " username
#Read group name from keyboard
read -p "Enter the groupname : " groupname
#Add the user to the group
sudo usermod -aG "$groupname" "$username"
#Display user in the group
echo "User in group $groupname : "
sudo groupmems -l -g "$groupname"
#End