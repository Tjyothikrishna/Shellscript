#!/bin/bash
#case control structure for Arthimatic operations
while :
do
clear 
read -p "Enter first number : " x
read -p "Enter second number : " y
   echo "
        ----------------------
              MENU  
        ----------------------
        1.ADD
        2.SUB
        3.MUL
        4.DIV
        5.EXIT
        -----------------------"
   read -p "Choose choice [1..5] : " num
    case $num in
    1)
      echo "`echo $x+$y | bc`"  
      read ch
      ;;
    2)
      echo "`echo $x-$y | bc`"  
      read ch
      ;;
    3)
      echo "`echo $x*$y | bc`"  
      read ch 
      ;;
    4)
      echo "`echo $x/$y | bc`" 
      read ch

      ;;
    5)
       exit  
       break
       ;;
    *)
       echo " Invalid option " ;;
    esac
done
#End