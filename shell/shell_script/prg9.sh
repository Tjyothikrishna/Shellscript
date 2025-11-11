#!/bin/bash
if [ $# -ne 2 ]
then 
    echo "You entered invalid number of Arguments 
           USAGE IS : $0 string1 string2 "
    exit
fi
s1=$1
s2=$2
#chick if the both strings are equal
if [ $s1 = $s2 ]
then 
    echo "String are equal"
else
    echo "String are not equal"
fi
#END 