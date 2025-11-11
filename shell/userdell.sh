#!/bin/bash
#Delete users listed in names.txt 
count=0
exec <names.txt
while read user
do
  userdel -r $user >/dev/null
  ((count ++))
done
echo "$count users are deleted "
#End