#!/bin/bash
# 5)Menu-driven Utility Tool
# Task: Create a script with a CLI menu for:
# a)Checking system uptime
# b)Showing top 5 memory-consuming processes
# c)Checking internet connectivity
# d)Exiting
echo "
      ----------------------
            MENU  
      ----------------------
      1.Checking system uptime
      2.Showing top 5 memory-consuming processes
      3.Checking internet connectivity
      4.EXIT
      -----------------------"
read -p "Select an optionchoice: " op
case $op in 
1)
  echo "system uptime = $(uptime)" 
  ;;
2)
    echo "Top 5 memory-consuming processes: `ps `"
    ;;
3)
   echo "Checking internet connectivity..."
   if ping -c 1 google.com &> /dev/null
   then
      echo "Internet is connected."
    else
      echo "No internet connection."
    fi
      ;;
4)
  exit  ;;
*)
  echo "Your have selected invalid option. choose between 1 -4." ;;
esac #end of case
#End 