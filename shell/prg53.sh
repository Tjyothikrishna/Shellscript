#!/bin/bash
while :
do
clear
echo "Select an option to perform"
echo "1) Show disk useage "
echo "2) Show memory useage "
echo "3) Show system uptime "
echo "4) Show logged-in users "
echo "5) Exit "
read -p "Enter your option : " op
case $op in 
1)
  df -h 
  read ch
  ;;
2)
  free -h 
  read ch
  ;;
3)
  uptime 
  read ch
  ;;
4)
  who  
  read ch
  ;;
5)
  exit 
  break 
   ;;
*)
  echo "Your have selected invalid option. choose between 1 -5." ;;
esac #end of case
done 
#End 