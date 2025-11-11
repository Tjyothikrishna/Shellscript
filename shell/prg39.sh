#!/bin/bash
if [ $# -ne 1 ]
then
  echo "you entered invalid number of arguments.. Usage $0 username "
else
  echo "
        ----------------------
              MENU  
        ----------------------
        1.ADD USER
        2.DELETE USER
        3.LIST USER ATTRIBUTES
        4.EXIT
        ----------------------- "
    echo -n "Enter your choice 1-4 : "
    read num 
    case $num in 
    1)
    grep -w ^$1 /etc/passwd > /dev/null 2>&1
    if [ $? -ne 0 ]
    then 
       useradd $1
       echo -n "provide the password : "
       read -s pass
       echo "$pass" | passwd --stdin $1 >/dev/null 2>&1
       echo -e "\n $1 user created is successful. you may login with user $1 now "
    else
       echo "cant create user...It exists...Existing.."
    fi
    ;;
    2)
    grep -w ^$1 /etc/passwd > /dev/null 2>&1
    if [ $? -eq 0 ]
    then 
       userdel -r $1
       echo " $1 user delete is successful. "
    else
       echo "cant delete user...It  doesnot exists... existing"
    fi
    ;;
    3)
     grep -w ^$1 /etc/passwd > /dev/null 2>&1
    if [ $? -eq 0 ]
    then 
       grep -w ^$1 /etc/passwd
       chage -l $1
    else
       echo "cant list user details ...It doesnot exists... existing"
    fi
    ;;
    4)
    echo " You have choosen exit option.. exiting.."
    ;;
    *)
     echo " You have choosen invalid option."
     ;;
     esac
fi
#End