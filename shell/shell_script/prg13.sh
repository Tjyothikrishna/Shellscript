#!/bin/bash
#Script for file test
#
if [ $# -ne 1 ]
then
    echo "You enter invalid number of inputs"
    echo "Usage is $0 FILE OR DIRECTORY NAME "
elif [ -e $1 ]
then
    echo "Enter the file name is : $1" 
    if [ -d $1 ]
    then 
       echo "Given File $1 is a Directory"
    fi
    if [ -f $1 ]
    then 
       echo "Given File $1 is a Regular File"
    fi
else
  echo " THe given $1 doesnt exists"
fi
#End 