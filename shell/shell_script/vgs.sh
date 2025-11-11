#!/bin/bash 
for ((i=31;i<53;i++))
do
  host=`ssh 192.168.1.$i hostname`
  vgs=`ssh 192.168.1.$i vgs --noheading -o vgname`
  echo -e "******* vgs present in $host ***** \n  $vgs "
done
#End