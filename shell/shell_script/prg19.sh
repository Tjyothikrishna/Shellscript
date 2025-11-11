#!/bin/bash
while :
do
 echo "
        ----------------------
              MENU  
        ----------------------
        1.System info
        2.Filesystem info
        3.System IP info
        4.Hostname
        5.Block devices
        6.Logical volumes
        7.EXIT
        -----------------------"
read -p "Enter Your choice [1..7] : " op
case $op in
1)
  hostnamectl status ;;
2)
  df -h  ;;
3)
  ip address show  ;;
4)
  hostname  ;;
5)
   lsblk  ;;
6)
   lvs -a ;;
7)
   exit  ;;
*)
   echo " Invalid option " ;;
esac
done
#END.