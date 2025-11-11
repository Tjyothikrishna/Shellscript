#!/bin/bash
read -p "Enter the string...  " name
case $name in
Ashish|ashish|ASHISH)
       echo "You enter the string ashish"  ;;
*)
       echo "You entered another than ashish"
       ;;
esac
#End