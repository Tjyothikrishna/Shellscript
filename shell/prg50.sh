#!/bin/bash
#print the text
while : # this make while always true 
do 
  read -p " enter the text : " str
  if [ -z $str ]
  then
     echo "you did not enter any string  so you are exiting from program...."
    break
    fi
  echo "You enter string is : $str"
done 
#End 