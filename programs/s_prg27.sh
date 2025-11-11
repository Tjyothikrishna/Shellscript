#!/bin/bash
#Find max number among given three numbers
read -p "Enter first number:" num1
read -p "Enter Second number:" num2
read -p "Enter Third number:" num3
if [ $num1 -gt $num2 ]
then 
    if [ $num1 -gt $num3 ] 
    then  
         echo $num1 is big
    else  #this else is for inner if
        echo $num3 is big
    fi  #inner if is closed
elif [ $num2 -gt $num3 ]  #else + if = elif
   then 
       echo "$num2 is big"
   else
       echo "$num3 is big"
fi #Outer if is closed
#End of the script  
        