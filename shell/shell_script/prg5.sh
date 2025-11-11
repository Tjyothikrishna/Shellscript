#!/bin/bash
#if condition
#Find big number among given two numbers

read -p "Enter first number : "  x
read -p "Enter scond number : "  y
 
if (($x>$y))
then 
   echo "$x is big"
fi

if  (($x<$y))
then 
   echo "$y is big"
fi

if (($x==$y))
then 
   echo "Given  numbers are equal"
fi

if (($x!=$y))
then 
   echo "Given  numbers are not equal"
fi
#End 