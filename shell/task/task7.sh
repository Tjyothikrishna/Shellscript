#!/bin/bash
# 7)Backup Script with Timestamps
# Task: Create a script that:
# Accepts a directory path as an argument. Creates a .tar.gz backup with the current date in the filename. Keep only the latest 5 backups.
# Note: This script deletes files...make sure that you are not deleting any files by mistake by running this script
# Author will not gauratee the accuracy of this script. You need accept the risk if any deletion occurs.
if [ $# -eq 1 ]
then
    if [ -e "$1" -a -d $1 ]
    then
        echo "I am at `pwd`"
        tar -zcf ${PWD}${1}_$(date '+%H%M%S%d%m%C%y').tar.gz $1
        #keep only latest 5 backups. Delete files if you have more than 5 backups.
        c=0
        for i in `ls -t ${PWD}${1}*.tar.gz`
        do
           ((c++))
           echo $i
           if [ $c -gt 5 ]
           then 
              echo "Removing copy number $c --> $i"
              rm -f $i
            fi
         done
    else
        echo "Given input is invalid - check the path and directory name is correct" 
    fi
 else 
   echo "Invalid number of arguments..try again"
fi
#End of the script