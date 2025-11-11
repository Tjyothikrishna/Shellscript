#!/bin/bash
select os in unix linux aix solaris ubuntu none
do
 echo $os
 if [ $os = none ]
 then 
    break
 fi
done