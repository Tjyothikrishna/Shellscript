#!/bin/bash
#Script to add given user to given group.
# Read username from keyboard
read -p "Enter the username: " username
# Read group name from keyboard
read -p "Enter the group name: " groupname
# Add the user to the group
usermod -aG "$groupname" "$username"
# Display users in the group
echo "Users in group '$groupname':"
groupmems -l -g group "$groupname" 
#End