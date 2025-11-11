#!/bin/bash
#fuction definition
function printme() {
echo "You are in printme function" 
echo "Hello $1"
return 0
}

#Main script starts here
echo "Start of the main script..Now calling printme"
printme Mahesh
printme Ashish
echo "calling again"
printme Sowjanya
#End
