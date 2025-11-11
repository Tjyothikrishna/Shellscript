#!/bin/bash
c=0
for i in `ls`
do
  ((c++)) #((c ++)) also will work
done
echo "There are $c files in the current directory"
#End