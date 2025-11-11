#!/bin/bash
for ((i=31;i<53;i++))
do
   host=`ssh 192.168.1.$i hostname`
   load=`ssh 192.168.1.$i uptime`
   echo -e "+++++++++++++++  $host  +++++++++++++++++++\n    $load"
done   
