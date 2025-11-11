#!/bin/bash
#disk usage in all server more then 20% 
for i in `seq 31 50`
do
  ip=192.168.1.$i
  host=`ssh $ip hostname` 
  if [ $? -eq 0 ]
    then
        echo -e "\n ************************* $ip -- $host **************************" >>diskusage.txt

        # Use awk to get the device, usage percentage, and mount point
        ssh "$ip" df -h | grep ^/dev | awk '{print $1, $5, $6}' | while read -r device usage mount_point
        do
        # Remove the '%' sign from the usage
        percent=`echo $usage | sed 's/%//'`
        # Check if the usage is greater than 20
        if [ $percent -gt 20 ]
        then   
           echo "  Device : $device 
                   Mount Point : $mount_point
                   Usage : $usage" >>diskusage.txt
        fi
        done
  else
        echo -e "\n ************************** $ip (NOT REACHABLE) **************************" >>diskusage.txt
  fi  
done
#END