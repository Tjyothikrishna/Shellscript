#!/bin/bash
exec <users.txt
while read user
do
    echo "Attempting SSH to: $user"
    ssh $user hostname
done