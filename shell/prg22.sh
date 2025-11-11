#!/bin/bash
echo
echo "=============== FILE TEST ================"
read -p "Enter a file path to file : " file
echo
[ -e "$file" ] && echo "File is exists (-e)" || echo "File does not exists (-e)"
[ -f "$file" ] && echo "Regular File (-f)" || echo "Not a Regural File  (-f)"
[ -d "$file" ] && echo "Directory (-d)" || echo " Not a Directory (-d)"
[ -r "$file" ] && echo "Readable (-r)" || echo "Not readable (-r)"
[ -w "$file" ] && echo "Writable (-w)" || echo "Not Writable (-w)"
[ -x "$file" ] && echo "Executable (-x)" || echo "Not Executable (-x)"
[ -s "$file" ] && echo "File is not empty (-s)" || echo "File is empty or doesn't exist (-s)"
[ -b "$file" ] && echo "Block File (-b)" || echo "Not Block Filee (-b)"
[ -c "$file" ] && echo "Charactor File (-c)" || echo "Not Charactor File (-c)" 
#End
