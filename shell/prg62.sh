#!/bin/bash
#Script to perform Arithmetic
read -p "Enter value 1  : " v1
read -p "Enter value 2  : " v2
opt=""
select opt in + - \* e 
do
case $opt in
+) echo `echo $v1 + $v2 |bc` ;; 
-) echo `echo $v1 - $v2 |bc` ;; 
\*) echo `echo $v1 \* $v2 |bc` ;; 
e) break ;; 
*) echo " $opt is invalid operator.." ;; 
esac
done