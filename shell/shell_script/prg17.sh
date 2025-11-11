#!/bin/bash
R1=`cat /sys/class/net/ens192/statistics/rx_bytes`
T1=`cat /sys/class/net/ens192/statistics/tx_bytes`
sleep 1
R2=`cat /sys/class/net/ens192/statistics/rx_bytes`
T2=`cat /sys/class/net/ens192/statistics/tx_bytes`
R=$((R2-R1))
T=$((T2-T1))
# convert to KB
Rx=$((R/1024))
Tx=$((T/1024))
if [ $Rx -gt 10 -o $Tx -gt 10 ]
then 
    echo "Bandwidth is hitting greater then 10 KB/s"
else
    
fi