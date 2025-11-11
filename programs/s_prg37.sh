#!/bin/bash
read -p "Enter the string.." name
case $name in 
Ashish|ashish|ASHISH)
       echo "You entered the string ashish"
       ;;
*)     
       echo "You entered another than ashish"
       ;;
esac