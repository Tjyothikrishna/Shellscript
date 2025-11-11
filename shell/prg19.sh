#!/bin/bash
echo
echo "=============== FILE TESTS ================"
read -p "Enter a file path to test : " file
echo
test -e "$file" && echo "File is exists (-e)" || echo "File does not exists (-e)"
test -f "$file" && echo "Regular File (-f)" || echo "Not a Regural File  (-f)"
test -d "$file" && echo "Directory (-d)" || echo " Not a Directory (-d)"
test -r "$file" && echo "Readable (-r)" || echo "Not readable (-r)"
test -w "$file" && echo "Writable (-w)" || echo "Not Writable (-w)"
test -x "$file" && echo "Executable (-x)" || echo "Not Executable (-x)"
test -s "$file" && echo "File is not empty (-s)" || echo "File is empty or doesn't exist (-s)"
test -b "$file" && echo "Block File (-b)" || echo "Not Block Filee (-b)"
test -c "$file" && echo "Charactor File (-c)" || echo "Not Charactor File (-c)"
#-k : file is enabled with sticky bit
#End