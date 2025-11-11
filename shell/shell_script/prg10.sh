#!/bin/bash
if [ $# -eq 2 ] #outer if begins here
then 
    s1=$1
    s2=$2
    #chick if the both strings are equal
    if [ $s1 = $s2 ]  #inner if begins here
    then 
        echo "String are equal"
    else
        echo "String are not equal"
    fi  #inner if close
else
    echo "You entered invalid number of Arguments 
           USAGE IS : $0 string1 string2 "
fi #outer if close
#END 