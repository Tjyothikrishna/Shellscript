#!/bin/bash
#Demonstrate positional parameters
#Obtain positional parameters from the command line 
#
echo "Your have entered $# positional parameters "
echo "The program name is : $0 "
echo "The entered arguments are (by using @) : $@ "
echo "The entered arguments are (by using *) : $* "
echo "The entered second positional arguments is  : $2"
echo "The entered third positional arguments is  : $3"
#End