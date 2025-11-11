#!/bin/bash
#Find max number among given three numbers
read -p "Enter first number : " num1
read -p "Enter second number : " num2
read -p "Enter third number : " num3
#First compara num1 and num2 to know which is big.
#And then compare that big number which num3 to know final big number
if [ $num1 -gt $num2 ]
then 
   #You are inside if because num1 is big. Now compare num1 and num3
   #This is nested if
    if [ $num1 -gt $num3 ]
    then 
       #you are inside if because num1 is big
       echo $num1 is big
    else
       #This else is for inner if 
       echo $num3 is big
    fi  #inner if is closed
else 
   #this else is for outer if 
   #You are in else block as num1 is not big. Now compare num2 and num3
    if [ $num2 -gt $num3 ]  #inner if begins
    then 
       echo $num2 is big
    else
       echo $num3 is big 
    fi
fi