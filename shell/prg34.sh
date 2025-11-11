#!/bin/bash
echo "Demonstration of case control structure"
read -p "Enter your colour : " color
case $color in          #case begins
"red")
    echo  "I am in red block"
    ;;
"blue")
    echo  "I am in blue block"
    ;;
"green")
    echo  "I am in green block"
    ;;
"black")
    echo  "I am in black block"
    ;;
"white")
    echo  "I am in white block"
    ;;
*)
    echo "I am in default block"
    ;;
esac  #case statement closed
#End    