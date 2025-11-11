#!/bin/bash
#find if the file size is Zero
#
read -p "Enter the file name : " fname
if [ -e $fname -a -f $fname ]
then 
   echo " File exists "
   if [ -s $fname ]
   then
      echo " Its not zero size " 
    else 
       echo " It is zero size " 
    fi
else
  echo " THe given $fname doesnt exists or might not a regular file "
fi
#End 