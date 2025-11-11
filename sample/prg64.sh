#!/bin/bash
for i in `seq 1 20`
do
  lvcreate -L 64M -n imagelv$i images >/dev/null 2>&1
  if [ $? -ne 0 ]
  then 
     echo "Count not create Logical volume $imagelv$i"
  fi
  mkdir -p /imagefs$i > /dev/null 2>&1
  if [ $? -ne 0 ]
  then 
      echo "Could not create directory /imagefs$i"
  fi
  mkfs.ext4 /dev/images/imagelv$i >/dev/null 2>&1
  if [ $? -ne 0 ]
  then 
      echo "Could not create filesystem on /imagefs$i"
  fi
  echo "/dev/images/imagelv$i	/imagefs$i	ext4	defaults 	0 0">>/etc/fstab 
  if [ $? -ne 0 ]
  then 
      echo "Could not add entry in /etc/fstab for /imagefs$i"
  fi
  mount /imagefs$i
  if [ $? -ne 0 ]
  then 
      echo "Could not mount /imagefs$i"
  fi
done
echo "Created $i filesystems .. Below is currently mounted filesystem."
df -h
#End
