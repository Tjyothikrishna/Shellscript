#!/bin/bash
#Demonstrate if condition
#Find big number among given two numbers

read -p "Enter first number : "  x
read -p "Enter scond number : "  y
#Writing 
if [ $x -gt $y ]
then 
   echo "$x is big"
fi
#
if [ $y -gt $x ]
then 
   echo "$y is big"
fi

if [ $x -eq $y ]
then 
   echo "Given  numbers are equal"
fi

if [ $x -ne $y ]
then 
   echo "Given  numbers are not equal"
fi
#End 