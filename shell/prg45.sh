#!/bin/bash
#function definition
function printme(){
    echo  -e "\nYou are in the  printme function"
    echo " Hello $1"
}
#Main Script start here
echo "Main Script start now .... Now calling printme..."
printme krishna
printme Ashish
echo "calling again"
printme karthik
echo "Main Script End "

#End