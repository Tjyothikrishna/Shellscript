#!/bin/bash
exec</etc/passwd
while read line
do 
  uid=`echo $line |awk -F: '{print $3}'`
  
  #Delete user in the range 
#   if [ 1012 -lt $uid -a $uid -lt 5000 ]
#   then
#      name=`echo $line | awk -F: '{print $1}'`
#      echo $name : $uid 
#      userdel -r $name
#    fi  
 
   #find uid and comment of user UID is greater then 1000

#   if [ $uid -gt 1000 ]
#   then
#      name=`echo $line | awk -F: '{print $1}'`
#      com=`echo $line | awk -F: '{print $5}'`
#      echo $name : $uid :  $com
#    fi 

# set password  to user UID is greater then 1000
  if [ $uid -gt 1000 ]
  then
     name=`echo $line | awk -F: '{print $1}'`
     echo "$name:$name@123" |chpasswd
   fi 







done
