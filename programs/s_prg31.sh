#!/bin/bash
#Script to demonstrate case conditional statement
#Read OS type
echo "Enter OS Name (Ex: Linux, Solaris, Windows, AIX, ios etc., )"
read osname
case $osname in
Linux)
	echo "You entered Linux"
	;;
Solaris)
        echo "You entered Solaris"
        ;;
Windows)
        echo "You entered Windows"
        ;;
AIX)
        echo "You entered AIX"
        ;;
ios)
        echo "You entered ios"
        ;;
*)
        echo "You entered something else"
        ;;
esac
#End of the script
