#!/bin/bash
#Creating group 
echo Creating group 
read -p "Enter a group name to create : " gn   #taking group name from user
groupadd $gn  #execution is groupadd (name given by user)
echo
#Create group by specifing GID
echo Create group by specifing GID
read -p "Enter a group name to create : " gn       #taking group name from user 
read -p "Enter GID to be taken to group : " gid    #taking group id from user
groupadd -g $gid $gn  #execution is groupadd -g (id given by user) (name given by user)
echo
#Search how many members in the group with count 
echo Search how many members in the group with names and count
read -p "Enter group name : " gn     #taking group name 
groupmems -l -g $gn                  #this line display the members in group
x=`groupmems -l -g $gn|wc -w`        #this line assign the x vale as member count in group
echo "$x members in the group"       #this line display the membercount
echo
#ADD user in the group 
echo Add user in the group 
read -p "Enter group name : " gn                             #taking group name    
groupmems -l -g $gn                                          #this line display the members in group
read -p "Enter user name to Add in group : " au       #taking user name  
groupmems -a $au -g $gn      #execution is groupmems -a (given by user name) -g (given group name by user)          
groupmems -l -g $gn
echo
#Delete user from the group 
echo Delete user from the group                    
read -p "Enter group name : " gn                    #taking group name
groupmems -l -g $gn                                 #this line display the members in group
read -p "Enter user name to delete  from  group : " du       #taking user name
groupmems -d $du -g $gn     #execution is grou
groupmems -l -g $gn
echo

#End