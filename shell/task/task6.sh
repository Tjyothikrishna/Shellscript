#!/bin/bash
# 3)Sort Files by Size or Modification Date
# Task: Given a directory path, list the 10 largest files or 10 most recently modified files, sorted
read -p "enter the directory name : " dir
if [ -d $dir ]
then
   du -h $dir |sort -rh |head >sortfile.txt
   echo "The 10 largest files in $dir"
   cat sortfile.txt 
   ls -lt $dir |head >modifiedfiles.txt
   echo -e "\n The 10 most recently modified files in $dir"
   cat modifiedfiles.txt
else
   echo "The given $dir is did not exists"
fi