#!/bin/bash
echo "========== FILE TESTS =========="
read -p "Enter a file path to test: " file

test -e "$file" && echo "File exists (-e)" || echo "File does not exist (-e)"
test -f "$file" && echo "Regular file (-f)" || echo "Not a regular file (-f)"
test -d "$file" && echo "Directory (-d)" || echo "Not a directory (-d)"
test -r "$file" && echo "Readable (-r)" || echo "Not readable (-r)"
test -w "$file" && echo "Writable (-w)" || echo "Not writable (-w)"
test -x "$file" && echo "Executable (-x)" || echo "Not executable (-x)"
test -s "$file" && echo "File is not empty (-s)" || echo "File is empty or doesn't exist (-s)"
# -b : block special file
# -c : Character special file
# -k : is file is enabled with sticky bit
#End
