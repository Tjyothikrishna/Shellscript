#!/bin/bash
#if condition
#Find big number among given two numbers

read -p "Enter first number : "  x
read -p "Enter scond number : "  y

if test $x -gt $y 
then 
   echo "$x is big"
fi

if test $y -gt $x 
then 
   echo "$y is big"
fi

if test $x -eq $y 
then 
   echo "Given  numbers are equal"
fi

if test $x -ne $y 
then 
   echo "Given  numbers are not equal"
fi
#End 