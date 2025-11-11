#!/bin/bash
#Demonstrate positional parameters
#Obtain positional parameters from the command line 

echo "The program name is : $0 "
if [ $# -gt 0 ]
then
   if [ $# -ge 5 ]
   then
      echo "The entered firest positional arguments is  : $1"
      echo "The entered second positional arguments is  : $2"
      echo "The entered third positional arguments is  : $3"
      echo "The entered fourth positional arguments is  : $4"
      echo "The entered fiveth positional arguments is  : $5"
   else
      echo "The entered arguments is less than 5 "
      echo "Your have entered $# positional parameters "
      echo "The entered arguments are (by using @) : $@ "
      echo "The entered arguments are (by using *) : $* "
    fi
else
  echo "you did not enter any arguments "
fi
#End