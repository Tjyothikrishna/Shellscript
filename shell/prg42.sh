#!/bin/bash
#print Natural numbers
echo -n "Enter the upper limit : "
read limit

#print now 
seq -s " " 1 $limit
#print odd numbers
seq -s " " 1  2 $limit

#print naturals numbers 
read -p "Enter the starting point of number : " x
read -p "Enter the ending point of number : " y
read -p "Enter the separator ( , : ; etc..) : " z

#print the numbers
 seq -s "$z" $x $y
#End