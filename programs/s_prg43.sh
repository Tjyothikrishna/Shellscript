#!/bin/bash
#Demonstrate pre and post incremet (unary operators)
x=5
y=$((x++)) # x value is assigned to y and then x is incremented by 1. This is called post increment.
echo $y  #y value will be 5
echo $x  #x value will be 6
#pre-increment is demonstrated below
x=5
y=$((++x))#first x is incremented by 1 and then x value is assigned to y.
echo $y #y will be 6
echo $x #x will be 6
#post decremnted is demonstrated below
x=5
y=$((x--)) #first x is assigned y and then x is decremented by 1
echo $y #y will be 5
echo $x #x will be 4
#Pre deccremented is demonstrated below
x=5
y=$((--x)) #first x is decremented by 1 and lated x value is assigned to y
echo $y #y will be 4
echo $x #x will be 4
#end

