#!/bin/bash
#Demonstrate while loop
count=1
while :
do 
   echo $count
   if [ $count -eq 10 ]
   then
       break
   fi #if ends here 
   sleep 1
      ((count++))
done #While End
