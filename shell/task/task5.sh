#!/bin/bash
# 6)User Account Audit
# Task: Generate a report of:
# a)All users with login shells
# b)Their last login time
# c)Whether their password is expired
echo  " USER : SHELL : LAST LOGIN : PASSWORD EXPIRY  "  
 exec </etc/passwd
    while read line
     do
        un=`echo "$line" | cut -d: -f1`
      # shell
        sn=`echo "$line" | cut -d: -f7`
      # login time 
        time=`lslogins | grep -w $un` 
         last_log=`echo $time |cut -d" " -f6`
      #password expiry 
        password_expiry=$(chage -l "$un" | grep "Password expires" | cut -d: -f2 )

        echo " $un : $sn : $last_log : $password_expiry  "  

    done
#End