#!/bin/bash
#display the all vgs in the differen servers with ther servername
for i in `seq 31 50`
do
  ssh 192.168.1.$i hostname >>vgsinserver.txt
  ssh 192.168.1.$i vgs --noheading -o vg_name >>vgsinserver.txt
done
#End 