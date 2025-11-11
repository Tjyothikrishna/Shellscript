#!/bin/bash
#fuction definition
function printme() {
echo "You are in printme function" 
echo "Hello Kudlu!!"
return 0
}

#Main script starts here
echo "Start of the main script..Now calling printme"
printme
echo $?
echo "calling again"
printme
#End
