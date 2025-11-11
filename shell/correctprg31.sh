#!/bin/bash
#Script to create filesytem in a given Volumegroup
echo "Create filesystem:"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
vgs 
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
read -p "Choose vgname in which you want to create FS:" vgname
vgs --noheading -o vgname | grep $vgname > /dev/null 
if [ $? -ne 0 ]
then
   echo "Invalid vgname $vgname entered... Try Again.."
else
   echo "Below are lvs found in the $vgname:"
   lvs --noheading -o lv_name $vgname
   read -p "Enter the name of the lv to create(do not choose from above list):" lvname
   lvs --noheading -o lv_name | grep $lvname > /dev/null
   if [ $? -ne 0 ]
   then 
      read -p "Enter Lv Size in MB" lvsize
      read -p "Enter fstype(ext4 or xfs):" fstype
      if [ "$fstype" = "ext4" -o "$fstype" = "xfs" ] 
      then
        read -p "Enter mount point:" mntpt
      else
        echo "Entered fstype $fstype is incorrect"
        exit
      fi
      df -h| grep -w "$mntpt" >/dev/null
      if [ $? -eq 0 ]
      then
         echo "Requested mount point already exists in the server... Could not proceed.. Exiting.."
         exit
      else
         echo "Pleae wait while the filesystem is being created....."
         lvcreate -y -n $lvname -L $lvsize $vgname >/dev/null 2>&1
         if [ $? -eq 0 ]
         then  
            echo "Lv $lvname is created..."
            if [ $fstype = xfs ]
            then
                mkfs.$fstype -f /dev/$vgname/$lvname >/dev/null 2>&1
                if [ $? -eq 0 ]
                then
                    echo "$fstype filesystem created successfully"
                fi
            fi
            if [ $fstype = ext4 ]
            then
                mkfs.$fstype -F /dev/$vgname/$lvname >/dev/null 2>&1
                if [ $? -eq 0 ]
                then
                    echo "$fstype filesystem created successfully"
                fi
            fi
               echo "File system is created on the device /dev/$vgname/$lvname"
               if [ -d $mntpt ]
               then 
                  echo "Mount point already exist.."
               else
                  echo "Creating mount point $mntpt"
                  mkdir $mntpt  >/dev/null 2>&1
                  if [ -d $mntpt ]
                  then 
                    echo "Mount point created.."
                    mount /dev/$vgname/$lvname  $mntpt
                    echo "File system $mntpt created and mounted..Verify in below output"
                    df -h $mntpt 
                  else 
                    echo "Count not create mount point .. exiting..."
                  fi #if closed Mount the FS
               fi #if closed   #Check Mount point
         fi #LV cration check
      fi #Check if mount point already exists
    else 
      echo "Requested lv $lvname already found in the server. Could not proceed.."
   fi # Inner if ends here
fi #Outer if ends here
#End
