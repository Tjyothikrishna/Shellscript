#!/bin/bash
for i in redhat ubuntu fedora suse debian
do
   echo $i
   if [ "$i" = "fedora" ]
   then
       break
    fi
done
echo "I am out of the loop"
# Another way of using for loop. 'c' style way
for ((i=0;i<=5;i++))
do
   echo $i
done