#!/bin/bash
x=1
until [ $x -eq 0 ]
do
  read -p "Enter x value (End with 0 ): " x
  echo "$x is your lucky number "
done
#END