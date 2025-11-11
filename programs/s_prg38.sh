#!/bin/bash
#find if the file size is zero
#
read -p "Enter the file name" fname
if [ -e $fname -a -f $fname ]
then
   echo "File exists "
   if [  -s $fname ]
   then
     echo "Its not zero size"
   else
     echo "Is of zero size"
   fi
else
 echo "The given $fname doesnt exists or might not a regular file"
fi
