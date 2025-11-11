#!/bin/bash
if [ $# -ne 4 ]
then 
   echo "usage is $0 user1 user2 user3 user4 "
else
   for i in $1 $2 $3 $4
   do
   un=$i
   echo "$un:$un@123" |chpasswd
   done
fi
#End  