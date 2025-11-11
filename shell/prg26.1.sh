#!/bin/bash
#Searching for vg and its lvs
read -p " Enter the vg name : " vgname
vgs | grep $vgname >/dev/null 
if [ $? -eq 0 ]
then 
   echo " $vgname is present "
   echo "Here the lvs in it : "
   lvs $vgname -o lv_name --noheadings 
   x=`lvs --noheading $vgname|wc -l`
   echo "There are $x lvs found in $vgname"
else
   echo " $vgname is not present "
fi
#End