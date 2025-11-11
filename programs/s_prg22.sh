#!/bin/bash
echo "Checking if you are root ?"
if [ `id -u` -eq 0 ]
then
   echo "You are root!!!"
else
   echo "You are not root"
fi

#result=$(id -u) #command substitution - compound style
result=`id -u`  #command substitution with back quote
echo "The user id is : $result"
if [ $result -eq 0 ]
then 
   echo "You are root"
fi
if [ $result -ne 0 ]
then 
   echo "You are regular user"
fi
#End
