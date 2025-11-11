#!/bin/bash
#print the text
str="text"
echo $str 
while [ ! -z $str ]
do 
  echo "You enter string is : $str"
  read -p " enter the text " str
done 
#End 