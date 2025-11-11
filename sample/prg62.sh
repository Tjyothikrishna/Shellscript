#!/bin/bash
count=0
for vg in `vgs -o vgname --noheading`
do
  lvs -a $vg -o lvname --noheading
  ((count ++))
done
echo "There are $count vgs found this system (`hostname`)"

#Find lvs count in the system
l=0 #make lv count = 0
for vg in `vgs -o vgname --noheading`
do
  for lvs in `lvs -o lvname --noheading $vg`
  do
    ((l++))
  done
done
echo "There are $l logical volumes in this system (`hostname`)"
#End

