#!/bin/bash
#display the all vgs in the differen servers with ther servername
#another way
for i in `seq 31 50`
 do
  ip=192.168.1.$i
  hostname=`ssh 192.168.1.$i hostname` 
  # Check if the SSH command succeeded
  if [ $? -eq 0 ]
    then
        echo -e "\n ********************$ip -- $hostname*************************">>vgs.txt
        echo "Checking Volume Groups on Servers" >>vgs.txt
        ssh $ip vgs --noheading -o vg_name >>vgs.txt
  else
        echo -e "\n ***************************$ip (NOT REACHABLE) **************************" >>vgs.txt
  fi
done