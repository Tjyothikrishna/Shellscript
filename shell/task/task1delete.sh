#!/bin/bash
#Delete users listed in names.txt 
count=0
exec <user.txt
while read line
do
  user=`echo $line |cut -d: -f1`
  userdel -r $user >/dev/null
  ((count ++))
done
echo "Total $count records processed.."
#End