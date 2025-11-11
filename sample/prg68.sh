#!/bin/bash
#shell script demonstrating Arrays
declare -a a=(20 30 40 50) #variable assignment
#for loop to print each item
for i in 0 1 2 3
do
echo ${a[$i]}
done
echo ${a[@]}
echo ${a[*]}
echo "The length of the array is ${#a[@]}"

