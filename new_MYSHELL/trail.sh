#!/bin/bash
#Creating a group name and users
c=0
read -p "Creating a group:" gname
 grep -w ^$gname /etc/group
if [ $? -eq 0 ]
then
   echo "group already existed in the system"
else
   groupadd $gname 
   if [ $? -eq 0 ]
then
for uname in mike ravi rahul kumar bala balaji 
do 
  useradd $uname
  groupmems -a $uname -g $gname
  ((c++))
  done
  groupmems -l -g $gname
  echo "The $c members added in $gname"
  fi
fi
#End