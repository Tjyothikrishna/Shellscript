#!/bin/bash
#Demonstarting Arthimatic operations
read -p "Enter first number : " num1
read -p "Enter second number : " num2
add=`expr $num1 + $num2`
# add=$(expr $num1 + $num2)
# add=$((num1+num2))
# add=$[num1+num2]
echo "The sum of $num1 and $num2 is $add "
sub=`expr $num1 - $num2`
echo "The subtraction of $num1 and $num2 is $sub "
mul=`expr $num1 \* $num2`
echo "The multiplication of $num1 and $num2 is $mul "
div=`expr $num1 / $num2`
echo "The division of $num1 and $num2 is $div "
mod=`expr $num1 % $num2`
echo "The modulus of $num1 and $num2 is $mod "
#End