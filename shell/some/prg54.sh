#!/bin/bash
read -p "create group name:" gn
groupadd $gn
if [ $? -eq 0 ]
then
read -p "Enter the user name:" uname
useradd $uname
if [ $? -eq 0 ]
then
groupmems -a $uname -g $gn 
  if [ $? -eq 0 ]
   then
     echo "user is add to group to check:"
     groupmems -l  -g  $gn
     else
        echo "user is not added to group"
    fi
  else
    echo "user is not created existing from program.."
    break
  fi  
  else
    echo  "group is not created: "
  fi
#end