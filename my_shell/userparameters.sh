#!/bin/bash
if [ $# -ne 2 ]
then
    echo "Number of Arguments given incorrect.... "
else
    uname=$1 #read user name from the command line (positonal parameter)
    upass=$2
fi
    grep -w ^$uname /etc/passwd >/dev/null
    if [ $? -eq 0 ]
    then
       echo "You already exists in the system. could not create.."
    else
       useradd $uname
       u_res=$?
       echo "$upass"|passwd --stdin $uname >/dev/null 2>&1
       p_res=$?
       if [ $u_res -eq 0 -a $p_res -eq 0 ]
       then
           echo -e "\n$uname user creation is successful. You may login with the user $uname now"
       else
           echo "Unable to create user or password.."
       fi
    fi
#End.
