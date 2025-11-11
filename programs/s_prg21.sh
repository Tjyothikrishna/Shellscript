#!/bin/bash
#Demonstrate if condition
#find big number among given two numbers
read -p "Enter first number" num1
read -p "Entner second number" num2
if [ $num1 -gt $num2 ]
then
   echo "$num1 is big"
fi
if [ $num2 -gt $num1 ]
then  
   echo "$num2 is big"
fi
if [ $num1 -eq $num2 ]
then  
   echo "Given numbers are equal to each other"
fi
if [ $num1 -ne $num2 ]
then  
   echo "Given numbers are not equal to each other"
fi
#End of the script