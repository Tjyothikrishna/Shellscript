#!/bin/bash
#print the text
str="test"
echo $str
while [ ! -z $str ] #If string is empty, loop will break
do
  echo "You entred $str"
  read -p "Enter the text(Hit enter to exit)>" str
done


  
