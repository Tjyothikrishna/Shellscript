#!/bin/bash
#read an Array from the keyboard
#enter an empty line to stop reading.
declare -a a
i=0
echo "Enter array elements one after another. End with enter key.."
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