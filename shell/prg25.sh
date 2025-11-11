#!/bin/bash
#Searching a user is present or not
read -p "Enter the user name to search : "  name
grep -w ^$name /etc/passwd >/dev/null 2>&1
if [ $? -eq 0 ]
then 
  echo "user $name is present"
else
  echo "user $name is not present"
fi
#End