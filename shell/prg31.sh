#!/bin/bash
#Script to create filesystem in a given Volumegroup
echo "Create filesystem :"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
vgs
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
read -p "Choose vgname in which you want to create FS : " vgname
vgs --noheading -o vgname |grep $vgname > /dev/null
if [ $? -ne 0 ]
then 
   echo "Invalid vgname $vgname entered...... Try Again..."
else
   echo "Below are lvs found in the $vgname : "
   lvs --noheading -o lv_name $vgname
   read -p "Enter the name of the lv to create (do not choose from above list ) : " lvname
   lvs --noheading -o lv_name | grep $vgname > /dev/null
   if [ $? -ne 0 ]
   then 
      read -p "Enter LV Size in MB :" lvsize
      read -p "Enter fstype (ext4 or xfs) :" fstype 
      echo "Entered fs type is : $fstype "
      if [ ! $fstype = "ext4" -o $fstype = "xfs" ]       #if [ "$fstype" != "ext4" ] || [ "$fstype" != "xfs"]
      then
         read -p "Enter mount point :" mntpt
      else
        echo "Enter fstype $fstype is incorrect "
        exit
      fi
      df -h |grep -w "$mntpt" >/dev/null
       if [ $? -eq 0 ]
       then
          echo "Requested mount point already exists in the server... could not proceed....Exiting....."
          exit
       else
          echo "please wait while the filesystem is being created....."
          lvcreate -y -n $lvname -L $lvsize $vgname >/dev/null 2>&1
           if [ $? -eq 0 ]
           then
              echo "LV $lvname is created..... "
              if [ $fstype = xfs ]
              then
                mkfs.$fstype  -f /dev/$vgname/$lvname >/dev/null 2>&1
                if [ $? -eq 0 ]
                then 
                   echo "$fstype filesystem created successfully"
                  fi
              fi
              

              if [ $? -eq 0 ]
              then
                 echo "File system is created on the device /dev/$vgname/$lvname"
                 if [ -d $mntpt ] 
                 then
                    echo "Mount point already exist... "
                 else
                     echo " Creating mount point $mntps"
                     mkdir $mntps > /dev/null 2>&1
                     if [ -d $mntpt ]
                     then
                      echo "Mount point created..." 
                      mount /dev/$vgname/$lvname $mntpt
                      echo "File system $mntpt created......... Verify in below output"
                      df -h $mntpt
                      else
                        echo "count not create mount point.... exiting....." 
                      fi #close for mount fs
                    fi #close for mount point
                fi # close file system
           fi #close for lv creation
        fi #close for mount point aldery exits
    else 
       echo "Requested lv $lvname already found in the server .could not proceed..."
    fi #inner if 
fi  #outer if 
#End