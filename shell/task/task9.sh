#!/bin/bash
# 9)write a script to rsync local server directory to remote server directory
read -p "Enter the file or directory name with full path to send : " fname
if [ -e $fname -a -f $fname -o -d $fname ]
then 
  read -p "Enter the Receiver name  : " uname 
  read -p "Enter the Receiver ip address : " ip
  ping -c 2 $ip >/dev/null 2>&1
  if [ $? -eq 0 ]
  then 
    read -p "Enter the full path where the file want to save in remote server : " des
    # echo " sender  name : `whoami` in `hostname`"
    # echo " sender ipaddress : `hostname -I`"
    # echo "Source file from sender : $fname"
    # echo " Receiver name : $uname"
    # echo " Receiver ipaddress : $ip"
    # echo " Destination File to Receiver : $des"
    rsync -az $fname $uname@$ip:$des  >/dev/null 2>&1
 else 
   echo " Remote Server is unavailable "
 fi
else
   echo "Given file or directory invalid - check the file or directory name "
fi


