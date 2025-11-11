#!/bin/bash
#Find max number among given three numbers
read -p "Enter first number:" num1
read -p "Enter Second number:" num2
read -p "Enter Third number:" num3
#first compare num1 and num2 to know which is big.
#and then compare that big number with num3 to know final big number
if [ $num1 -gt $num2 ]
then 
    #you are inside if becasuse num1 is big. now compare num1 and num3
    #this is nested if
    if [ $num1 -gt $num3 ]  #inner if begins
    then  
        #You are inside if because num1 is big
        echo $num1 is big
    else  #this else is for inner if
        echo $num3 is big
    fi  #inner if is closed
else #this else is for outer if.
   #you are in else block as num1 is not big and num2 is big. compare num2 and num3 to know which is big
   if [ $num2 -gt $num3 ]  #inner if begins
   then 
       echo "$num2 is big"
   else
       echo "$num3 is big"
   fi #Inner if closed
fi #Outer if is closed
#End of the script  
        