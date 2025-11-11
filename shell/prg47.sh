#!/bin/bash
#Check if the given user is locked or not
function check(){
    str=`grep $1 /etc/shadow | cut -d: -f2`
    echo $str | grep ^! > /dev/null
    if [ $? -eq 0 ]
    then 
      echo "User $1 is locked"
    else
      echo "User $1 is not locked"
    fi
}
#End of the function
#Starting of Main Script 
if [ $# -eq 0 ]
then
   echo -n Enter the username : 
   read name
   check $name
else
   check $1
fi
#End of Main Script  