#!/bin/bash
#Demonstrate reading given file
if [ $# -ne 1 ]
then 
    read -p "Enter the file name (absolutte path):" fname
else
    fname=$1
fi
count=0
if [ -e $fname -a -f $fname ]
then
  exec <$fname
  while read var
  do  
    echo $var
    ((count++))
  done 
  echo "There are $count line in the file $fname"
else
  echo "Given file $fname does not exists"
fi #if ends here
#End