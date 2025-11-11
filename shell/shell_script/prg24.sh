#!/bin/bash
#Demonstration of ARRAY variable
declare -a a
a=(10 20 30 40 50)
echo "The first element in the array is ${a[0]}"
echo "The second element in the array is ${a[1]}"
echo "The third element in the array is ${a[2]}"
echo "The fourth element in the array is ${a[3]}"
echo "The fifth element in the array is ${a[4]}"
echo "The number of elements in the array is ${#a[@]}"
echo "The elements in the array is ${a[@]}"
for ((i=0;i<${#a[@]};i++))
do 
  echo ${a[$i]}
done
#END