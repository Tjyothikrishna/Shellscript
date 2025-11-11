#!/bin/bash
#Demonstrate reading given file
if [ $# -ne 1 ]
then
   echo -n "Enter the file name (absolute path) : "
   read fname
else
   fname=$1
fi
count=0
if [ -e $fname -a -f $fname ]
then
   exec  < $fname
   while read var
   do
     echo $var
     ((count++))
   done
   echo "There are  $count lines in that File "
else
  echo "Given file $fname does not exists"
fi
#End


