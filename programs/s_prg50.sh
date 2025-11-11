#!/bin/bash
#print the text
while : # this make while always true
do
  read -p "Enter the text(Hit enter to exit)>" str
  if [ -z $str ]
  then
     echo "Exiting the program.."
     break  #loop will break.
   fi
  echo "You entred $str"
done
