#!/bin/bash
echo
echo "=============== STRING TEST ================"
read -p "Enter first String : " str1
read -p "Enter second String : " str2
echo
[ "$str1" = "$str2" ] && echo "Strings are equal " || echo "Strings are not equal"

[ "$str1" != "$str2" ] && echo "Strings are not equal " || echo "Strings are equal"

[ -z "$str1" ] && echo "First string is empty (-z)" || echo " First string is not empty (-z)"

[ -n "$str1" ] && echo "First string is not empty (-n)" || echo " First string is empty (-n)"

#End 