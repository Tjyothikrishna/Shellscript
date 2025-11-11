#!/bin/bash
#function definition
function printme(){
    echo "You are in the  printme function"
    echo " Hello kudlu !!"
    return 10
}
#Main Script start here
echo "Main Script start now .... Now calling printme..."
printme 
echo $?
echo "calling again"
printme
#End
