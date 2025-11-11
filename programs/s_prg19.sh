#!/bin/bash
echo "========== STRING TESTS =========="
read -p "Enter first string: " str1
read -p "Enter second string: " str2

test "$str1" = "$str2" && echo "Strings are equal (-eq)" || echo "Strings are not equal"
test "$str1" != "$str2" && echo "Strings are not equal (!=)" || echo "Strings are equal"
test -z "$str1" && echo "First string is empty (-z)" || echo "First string is not empty (-z)"
test -n "$str1" && echo "First string is not empty (-n)" || echo "First string is empty (-n)"
