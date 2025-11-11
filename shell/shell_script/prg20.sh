#!/bin/bash
# Demonstration of case statement
#find color
read -p "Enter your colour : " color
case $color in          #case begins
red|RED|Red)
    echo  "Its red like apple"
    ;;
BLUE|Blue|blue)
    echo  "Its blue like sky"
    ;;
BLACK|Black|black)
    echo  "Its black like new moon midnight"
    ;;
WHITE|White|white)
    echo  "Its white like moon in the sky "
    ;;
*)
    echo "Its UNKNOW match of color"
    ;;
esac  #case statement closed
#End    