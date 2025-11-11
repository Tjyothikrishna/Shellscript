#!/bin/bash
#Create user 'john'
useradd john
#set password for john
echo "john:password123"|chpasswd
#create group 'developers'
 groupadd developers
#add john in to group developers
 usermod -aG developers john
#set minimum password age to 5 days
 chage -m 5 john
#set maximum password age to 30 days
 chage -M 30 john
#set  password warning age to 5 days
 chage -W 5 john
#set password change on next login
 chage -d 0 john
#Lock the user account
 passwd -l john
#Unlock the user account
 passwd -u john
#To see password status 
 chage -l john
 
grep john /etc/passwd

grep john /etc/group 

#End 