#!/bin/bash
#Searching for vg and its lvs
read -p " Enter the vg name : " vgname
vgs --noheading -o vgname | grep -w $vgname >/dev/null 2>&1
if [ $? -eq 0 ]
then 
   echo " $vgname is present "
   echo "Here are lv from $vgname"
   lvs $vgname --noheading -o lv_name
   x=`lvs --noheading $vgname|wc -l`
   echo "There are $x lvs found in $vgname"
else
   echo " $vgname is not present "
fi
#End