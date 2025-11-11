#!/bin/bash
#Demonstration of repeatetive statement
#while loop
#Syntax
#while <TestConditionTrue>
#do 
#   statement1
#   statement2
#   statement3
#   :
#   :
#   :
#done 
x=1
while [ $x -le 10 ]
do
  echo $x
  ((x++))
done