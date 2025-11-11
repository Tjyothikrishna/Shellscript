#!/bin/bash
#CHECK YOUR NETWORK INTERFACE IS UP ARE DOWN
if [ $# -eq 1 ]
then
    iface=$1
else
    read -p "Enter interface to check to its state : " iface
fi
res=`nmcli dev show $iface | grep -i "general.state" | awk '{print $2}'`
if [ $res -eq 100 ]
then 
   echo " Interface '$iface' is UP "
else 
  echo " Interface '$iface' is DOWN "
fi
