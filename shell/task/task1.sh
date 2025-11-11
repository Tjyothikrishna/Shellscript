#!/bin/bash
# 2.Bulk User Creation -
# Task: Create users from a file with format username:password:comment. Set password, comment, and expire accounts in 30 days
c=0
read -p "enter the file name : " file
if [ -f $file ]
then
  exec <$file
  while read line
  do
    un=`echo $line | cut -d: -f1`
    pass=`echo $line | cut -d: -f2`
    com=`echo $line | cut -d: -f3`
    useradd -c "$com" $un >/dev/null 2>&1
    echo "$un:$pass"|chpasswd>/dev/null 2>&1
    chage -E 07/06/2025 $un 
    ((c++))
  done
   echo "$c useres are created "
else
  echo "file did not exists"
fi

#End