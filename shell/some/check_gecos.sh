#!/bin/bash
i=0
declare -a a
exec </etc/passwd
while read line
do
uid=`echo $line|cut -f3 -d:`
if [ $uid -ge 1000 ]
then
  uname=`echo $line|cut -f1 -d:`
  gecos=`echo $line|cut -f5 -d:`
  if [ -z "$gecos" ]
  then
     a[$i]=$uname
     ((i++))
  fi
fi
done
echo "users without gecos: ${a[@]}"
