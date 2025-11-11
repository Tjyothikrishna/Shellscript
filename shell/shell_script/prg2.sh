#!/bin/bash
#This for variable 
x=10
echo value of x is $x
echo "Its ${x}th day"   #For variable we user {} for the subtution
echo 'Its ${x}th day For variable we user {} for the subtution with connectivity '
echo 'Its $(x)th day   Its `x`th day   Its $xth day   This and all not work as per variable subtution with connectivity '
#This  for command subtution
echo "Its $(date '+%d')th day"
echo "Its `date '+%d'`th day"
vglist=$(vgs -o vgname --noheading)
echo $vglist
vglist=`vgs -o vgname --noheading`
echo $vglist