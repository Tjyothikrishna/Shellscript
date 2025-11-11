#!/bin/bash
echo "Select an option to perform"
echo "1) Show disk useage "
echo "2) Show memory useage "
echo "3) Show system uptime "
echo "4) Show logged-in users "
echo "5) Exit "
read -p "Enter your option : " op
case $op in 
1)
  df -h ;;
2)
  free -h ;;
3)
  uptime ;;
4)
  who  ;;
5)
  exit  ;;
*)
  echo "Your have selected invalid option. choose between 1 -5." ;;
esac #end of case
#End 