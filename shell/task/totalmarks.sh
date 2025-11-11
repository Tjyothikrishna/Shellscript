#!/bin/bash
ecec<stu.txt
while read line
do 
name=`echo $line|cut -d, -f2`
sub1=`echo $line|cut -d, -f3`
sub2=`echo $line|cut -d, -f4`
sub3=`echo $line|cut -d, -f5`
sum=`expr $sub1 + $sub2 + $sub3`
echo "$name "
