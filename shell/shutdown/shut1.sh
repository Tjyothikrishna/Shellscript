for i in 31 32 33 34 35 36 37 38 39 40 41 42 43 45 46 47 48 49 50 51 52 53 44
do
   echo "Attempting SSH to: 192.168.1.$i"
   ssh 192.168.1.$i shutdown -h 0
done
