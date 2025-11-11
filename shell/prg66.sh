#!/bin/bash


declare -a a
i=0
echo "Enter array elements"
while true
do
read val
if [ -z $val ]
then
   break
else
   a[$i]=$val
   ((i++))
fi
done
echo ${a[@]}
#End 