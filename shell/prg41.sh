#!/bin/bash
#Check if the given user is locked ?
if [ $# -eq 0 ]
then 
  echo -n Enter the user name : 
  read name
else 
  name=$1
fi
#Check if the given user exits in /etc/shadow
grep -w ^$name /etc/shadow > /dev/null
if [ $? -eq 0 ]
then 
#extract the second field from /etc/shadow
  str=`grep $name /etc/shadow | cut -d: -f2`
#Check if second field contains !$ symbol
echo $str | grep ^! > /dev/null
if [ $? -eq 0 ]
then 
   echo "User $name is locked"
else
   echo "User $name is not locked"
fi
fi
#End