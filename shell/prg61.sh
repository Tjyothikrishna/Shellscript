#!/bin/bash
select os in Unix Linux Solaris windows AIX ios none
do
  echo $os
  if [ $os = none ]
  then 
    break
  fi
done