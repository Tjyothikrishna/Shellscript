#!/bin/bash
#Demonstrate reading given file
read -p "Enter the file name (absolute path) : " fname
if [ -e $fname -a -f $fname ]
then
   exec  < $fname
   while read var
   do
     echo $var
   done
else
  echo "Given file $fname does not exists"
fi
#End


