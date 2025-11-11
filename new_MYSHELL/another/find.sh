#!/bin/bash
# FINDING THE USER IS PRESENT IN GROUPOR NOT
while : # this make while always true 
do 
  read -p " enter the group name : " gn
  if [ -z $gn ]
  then
     echo "you did not enter any group is does not exits  so you are exiting from program...."
    break
    fi
  echo "You enter group name is : $gn"
  grep -w ^$gn /etc/group >/dev/null
  if [ $? -eq 0 ]
  then 
    read -p " Enter the user name : " un 
    grep -w ^$gn /etc/group |cut -d: -f4 |grep -w $un  >/dev/null 2>&1
    if [ $? -eq 0 ]
    then
      echo "user $un is present in that group"
    else
      echo "user $un is not in that group"
    fi
  fi
done 
#End 