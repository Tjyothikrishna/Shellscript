#!/bin/bash
echo
echo "=============== INTEGER TESTS ================"
read -p "Enter first number : " num1
read -p "Enter second number : " num2
echo
test "$num1" -eq "$num2" && echo "Number are equal (-eq)" || echo "Numbers are not equal"

test "$num1" -ne "$num2" && echo "Number are not equal (-ne)" || echo "Numbers are equal"

test "$num1" -gt "$num2" && echo " $num1 is greater than $num2 (-gt)" || echo "$num1 is not greater than $num2"

test "$num1" -lt "$num2" && echo "$num1 is less than $num2 (-lt)" || echo "$num1 is not less than $num2"

test "$num1" -ge "$num2" && echo " $num1 is greater than or equal $num2 (-gt)" || echo "$num1 is less than $num2"

test "$num1" -le "$num2" && echo "$num1 is less than or equal $num2 (-lt)" || echo "$num1 is greater than $num2"
#End 