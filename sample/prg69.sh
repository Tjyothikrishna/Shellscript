#!/bin/bash
#Reading an array
declare -a a
echo "enter 5 elements"
for ((i=0;i<5;i++))
do
  read a[$i]
done
#Print the array
echo ${a[@]}
