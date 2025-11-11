#!/bin/bash
# Create user 'john'
useradd john
#Set password for 'john'
echo "john:Password123!" | chpasswd
#Create group 'developers'
groupadd developers
#Add user 'john' to group 'developers'
usermod -aG developers john
#Set minimum password age to 5 days
chage -m 5 john
#Set maximum password age to 30 days
chage -M 30 john
#Set password warning period to 7 days
chage -W 7 john
#Force password change on next login
chage -d 0 john
#Lock the user account
passwd -l john
#Unlock the user account
passwd -u john
