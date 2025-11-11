#!/bin/bash
#Defining Array variables in bash shell - Demonstration
declare -a a  #a is array variable name
a[0]="sowjanya"
a[1]="Raghav"
a[2]="Prasanth"
a[3]="karthik"
a[4]="swamy"
echo "The First element is : ${a[0]}" 

echo "The total number of  element is : ${#a[@]}" 

echo "The Array element are : ${a[@]}" 
echo "The Array element are : ${a[*]}"  
for((i=0;i<=4;i++))
do
echo "a[$i]=${a[$i]}"
done
#End