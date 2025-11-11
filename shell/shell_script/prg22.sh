#!/bin/bash
i=0
# while [ $i -lt 10 ]
# do
#   echo $i
#   ((i++))
# done

while :
do 
  echo "HI"
  sleep 1
  ((i++))
  if [ $i -eq 10 ]
  then
      break
  fi
done