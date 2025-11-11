#!/bin/bash
#Script for arithmetic expression
#Read two values from the keyboard
read -p "Enter x value:" x
read -p "Enter y value:" y
#Addition x and y 
z=$[x+y]
echo "The addition of $x and $y: $z"
#You can also write expression in the below method
z=$[$x+$y]
echo "The addition of $x and $y: $z"
#One more way to write expression in the below method
z=$[ $x + $y ]
echo "The addition of $x and $y: $z"
#End