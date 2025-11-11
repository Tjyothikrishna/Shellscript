#!/bin/bash
#Demonstrate pre and post increment (unary operators)
echo post increment is demonstrated below
x=5
y=$((x++)) #x value is assigned to y and then x is incremented by 1. Then is called post increment 
echo "y = $y" #y value will be 5
echo "x = $x" #x value will be 6
echo pre-increment is demonstrated below
x=5
y=$((++x)) #first x value is incremented by 1 and then x value is assigned to y.
echo "y = $y" #y value will be 6
echo "x = $x" #x value will be 6
echo post decremnted is demonstrated below
x=5
y=$((x--)) #first x value is assigned to y and then x is decremented by 1.
echo "y = $y" #y value will be 5
echo "x = $x" #x value will be 4
echo pre-decremnted is demonstrated below
x=5
y=$((--x)) #first x is decremented by 1 and lated x value is assigned to y.
echo "y = $y" #y value will be 4
echo "x = $x" #x value will be 4
#End