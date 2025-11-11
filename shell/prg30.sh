#!/bin/bash
if [ $# -ne 1 ]
then 
   echo "Number of Arguments given incorrect.... proceed reading the user name from the keyboard....."
   read -p "Enter the username : " uname
else
   uname=$1  #reading user name from the command line (positional parameters)
fi
grep -w ^$uname /etc/passwd >/dev/null
if [ $? -eq 0 ]
then 
    echo "You already exits in the system. could not create....."
else
    read -sp "Enter the passphase for the user $uname : " pass
    useradd $uname
    u_res=$?
    echo "upass"|passwd --stdin $uname >/dev/null 2>&1
    p_res=$?
    if [ $u_res -eq 0 -a $p_res -eq 0 ]
    then
        echo -e "\n $uname user created is successful. you may login with user $uname now "
    else
        echo "Unable to create user or password....... "
    fi
fi
#End