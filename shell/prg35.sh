#!/bin/bash
#Script to Demonstration of case control structure
#Read OS type
echo "Enter OS Name (Ex: Linux, Solaris, windows, AIX, ios etc..,  )"
read osname
case $osname in          #case begins
Linux)
    echo  "you enter Linux"
    ;;
Solaris)
    echo  "you enter Solaris"
    ;;
windows)
    echo  "you enter windows"
    ;;
AIX)
    echo  "you enter AIX"
    ;;
ios)
    echo  "you enter ios"
    ;;
*)
    echo "you enter in to some thing"
    ;;
esac  #case statement closed
#End    