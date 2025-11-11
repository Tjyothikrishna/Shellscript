#!/bin/bash
c=0
for vg in `vgs -o vgname --noheading`
do
 ((c++))
done
echo "There  are $c volume groups in this system (`hostname`)"
l=0 #make lv count
for vg in `vgs -o vgname --noheading`
do
  for lvs in `lvs  -o lvname --noheading`
  do
  ((l++))
  done
done
echo "There  are $l logical volumens in this system (`hostname`)"
#End