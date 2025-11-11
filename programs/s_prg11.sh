#!/bin/bash
#Demonstrate Arithmetic Operators
read -p "Enter first number" num1
read -p "Enter second number" num2
res=`expr $num1 + $num2`
echo "The sum of $num1 and $num2 is $res"
res=`expr $num1 - $num2`
echo "The subtraction of $num2 from $num1 is $res"
res=`expr $num1 \* $num2`
echo "The multiplication of $num1 and $num2 is $res"
res=`expr $num1 / $num2`
echo "The integer division of $num1 by $num2 is $res"
res=`expr $num1 % $num2`
echo "The Modulus ie reminder obtained after integer division is $res"
#End 