#!/bin/bash
#The above line tells to us /bib/bash while executing below lines
echo "This is my first script"
echo "Today date is $(date)"
echo "My name is `whoami`"
#echo "My name is $(whoami)"
echo -n "Enter x value : "
read x
echo "The x value is : $x "
read -p "Provide user name : " uname
echo "You entered name is : $uname"
read -p "Provide password to user : " pass
echo "You entered password is : $pass"

#This is comment. This line is ignored by the interpreter
#End of the script