#!/bin/bash
#Defining Array variables in bash shell - Demonstration
declare -a a # a is array variable name
a[0]="Sowjanya"  #Array indexing starts from zero.
a[1]="Raghav"
a[2]="Prasanth"
a[3]="Karthik"
a[4]="Swamy"
echo "The first element is: ${a[0]}"
echo "The total number of elements are: ${#a[@]}"
echo "Array Elements are : ${a[@]}" #you can also use ${a[*]}
for ((i=0;i<=4;i++))
do
  echo "a[$i]=${a[$i]}"
done
#End.
