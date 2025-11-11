#!/bin/bash
read -p "Enter a string 1 :" s1
read -p "Enter a string 2:" s2
echo "You  enter string 1 is $s1"
echo "You  enter string 2 is $s2"
#chick if the both strings are equal
if [ $s1 = $s2 ]
then 
    echo "String are equal"
fi
if [ $s1 != $s2 ]
then 
    echo "String are not equal"
fi
#END