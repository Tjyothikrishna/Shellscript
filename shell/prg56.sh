#!/bin/bash
#Demonstrate Arithmetic OPerations using function
function add(){
    res=`expr $1 + $2`
    read $res
}
function sub(){
    res=`expr $1 - $2`
    echo $res
}
function mul(){
    res=`expr $1 \* $2`
    echo $res
}
function div(){
    res=`echo "scale=2;$1/$2"|bc`
    echo $res
}
#Main Program begins here
while :
do
clear
echo "Arithmetic OPerations"
echo -n " Provide first number : " 
read num1
echo -n " Provide second number : " 
read num2
 echo "
        ----------------------
              MENU  
        ----------------------
        1.ADD
        2.SUB
        3.MUL
        4.DIV
        5.EXIT
        -----------------------"
   read -p "Choose choice [1..5] : " num
    case $num in
    1)
      echo " The addition is : "
      add $num1 $num2
      ;;
    2)
      echo " The subtraction is : "
      sub $num1 $num2
      ;;
    3)
      echo " The multiplication is : "
      mul $num1 $num2
      ;;
    4)
      echo " The division is : "
      div $num1 $num2
      ;;
    5)
       exit  
       break
       ;;
    *)
       echo " Invalid option " ;;
    esac

done
#End