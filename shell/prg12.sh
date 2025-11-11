#!/bin/bash
#demonstarting Arthimatic operations
read -p "Enter first number : " num1
read -p "Enter second number : " num2
res=$(expr $num1 + $num2)
echo "The sum of $num1 and $num2 is $res "
res=$(expr $num1 - $num2)
echo "The subtraction of $num1 and $num2 is $res "
res=$(expr $num1 \* $num2)
echo "The multiplication of $num1 and $num2 is $res "
res=$(expr $num1 / $num2)
echo "The division of $num1 and $num2 is $res "
res=$(expr $num1 % $num2)
echo "The modulus is reminder of $num1 and $num2 is $res "
#End