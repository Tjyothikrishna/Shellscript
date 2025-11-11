#!/bin/bash
#Finding number of users in the system

cat /etc/passwd |cut -d: -f 1,3 
