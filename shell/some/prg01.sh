#!/bin/bash
exec</etc/passwd
while read line
do
  uid=`echo $line |cut -d: -f3`
  if [ $uid -ge 1000 ]
  then
     name=`echo $line | cut -d: -f1`
     comm=`echo $line | cut -d: -f5`
     uid=`echo $line |awk -F: '{print $3}'`
    echo $name : $uid  : $comm
  fi
done
