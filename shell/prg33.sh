#!/bin/bash
#Compare three numbers

read -p "Enter first number : " num1
read -p "Enter second number : " num2
read -p "Enter third number : " num3
if (($num1>$num2))&&(($num1>$num3))
then
   echo "$num1 is Big"
else
  if (($num2>$num3))
  then
     echo "$num2 is Big"
    fi
    if (($num3>$num2))
  then
     echo "$num3 is Big"
    fi
fi
#End