#!/bin/bash
#read an Array from the keyboard
#enter an empty line to stop
declare -a a
i=0
echo "Enter array elements one after another.. Enter with enter key.."
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
