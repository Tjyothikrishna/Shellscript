#!/bin/bash
#Demonstrate case statement in bash shell
echo "
	MENU
===================
1. Kernel Name
2. Shell Name
3. List of users logged in
4. CPU Load
5. File System Info
==================="
read -p "Enter your Choice:" op
case $op in
1)
 echo "The Kernel Name is $(uname)"
 ;;
2) 
 echo "The shell name is $SHELL"
 ;;
3)
 who 
 ;;
4)
 uptime
 ;;
5)
 df -h
 ;;
*)
 echo "Invalid options .... Try Again"
 ;;
esac
#End of the program
