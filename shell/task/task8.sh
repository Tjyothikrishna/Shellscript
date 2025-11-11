#!/bin/bash
# 8)Parse and Summarize Log Files
# Task: Write a script that parses /var/log/auth.log or /var/log/secure and counts:
# a)Failed SSH login attempts
# b)Successful logins
# c)Unique IP addresses involved

logfile=/var/log/secure
# Count Failed login attempts 
Failed=`grep "Failed password" $logfile | wc -l `
#Count Successful logins  
Successful=`grep "Accepted password" $logfile | wc -l`
#Count Unique IP addresses involved
Unique=`grep -E "Failed password|Accepted password" $logfile | grep -E '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+'| wc -l`

echo $Failed
echo $Successful
echo $Unique

