#!/bin/bash
#Checking the id is root or not
x=$(id -u)
echo " The user UID is : $x "
if [ $x -gt 0 ]  #if [ $x > 0 ]
then 
   echo " user is not a root "
fi
if [ $x -eq 0 ]  #if [ $x == 0 ]
then 
   echo " user is a root "
fi

echo " one more way to do "

echo "Checking if your are root "
if [ `id -u` > 0 ]
then 
   echo "you a not root user "
else
   echo "you are a root user " 
fi
#End 