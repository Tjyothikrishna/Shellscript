#!/bin/bash
#Script for arithmetic expression
#Read two values from keyboard
read -p "Enter the value of x :" x
read -p "Enter the value of y :" y
#Addition x and y
z=$[x+y]
echo "The sum of x = $x and y = $y is : $z"
#your can also write expression in the below method 
z=$[$x+$y] 
echo "The sum of x = $x and y = $y is : $z"
#one more way to write expression in the below method 
z=$[ $x + $y ]
echo "The sum of x = $x and y = $y is : $z"
#End 