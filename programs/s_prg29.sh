#!/bin/bash
#comparision with compound style of test condition
#Read two arguments from command line
if (($# != 2))
then
  echo "Please enter two argumnets .. Usage is $0 Arg1 Arg2. Please try again"
else
  if (($1>$2))
  then
     echo "$1 is big"
  fi
  if (($1<$2))
  then
     echo "$2 is big"
  fi
  if (($1==$2))
  then
     echo "Both the numbers are equal"
  fi
  if (($1!=$2))
  then
     echo "Both the numbers are not equal"
  fi
fi #Main if ends.
#End.
