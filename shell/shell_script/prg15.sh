#!/bin/bash 
#Read user name from command line. Check if the user exists, if yes, print its attributesn [example chage]
#If the user doesnot exists, then print appropriate message on the screen
if [ $# -ne 1 ]
then
    echo "You enter invalid number of inputs"
    echo "Usage is $0  USERNAME "
elif [ $# -eq 1 ]
then
    grep ^$1 /etc/passwd >/dev/null 2>&1
    if [ $? -eq 0 ]
    then
        echo "user $1 INFORMATION"
        finger $1
        echo "user $1 PASSWORD INFORMATION"
        chage -l $1
    else
        echo "Enter user $1 is doesnot exists"
    fi
fi
#END