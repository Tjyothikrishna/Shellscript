#!/bin/bash
# 4)Validate Password Strength
# Task: Accept a password as input and validate if it meets:
# a)At least 8 characters
# b)One uppercase, one lowercase
# c)One number, one special character

# Function to check password length
function length() {
  pass=$1
  size=$(echo -n "$pass" | wc -c)
  if [ $size -ge 8 ] 
  then
     uppercase $1
  else
    echo "Password must have at least 8 characters."
    exit 
  fi
}

# Function to check for at least one uppercase letter
function uppercase() {
  pass=$1
  echo $pass | grep [A-Z] >/dev/null 2>&1
  if [ $? -eq 0 ]
  then
    lowercase $1
  else
    echo "Password must contain at least one uppercase letter."
    exit 
  fi
}

# Function to check for at least one lowercase letter
function lowercase() {
  pass=$1
 echo $pass | grep [a-z] >/dev/null 2>&1
  if [ $? -eq 0 ] 
  then
    number $1
  else
    echo "Password must contain at least one lowercase letter."
    exit 
  fi
}

# Function to check for at least one number
function number() {
  pass=$1
  echo $pass | grep [0-9] >/dev/null 2>&1
  if [ $? -eq 0 ]
   then
    special_char $1
  else
    echo "Password must contain at least one number."
    exit 
  fi
}

# Function to check for at least one special character
function special_char() {
  pass=$1
  echo "$pass" | grep [^[:alnum:]] >/dev/null 2>&1
  if [ $? -eq 0 ]
  then
    echo "Password meets all the parameters."
  else
    echo "Password must contain at least one special character."
    exit 
  fi
}
read -sp "Enter the password : " pass
length $pass 
#End