#!/bin/bash
# 1.Task: Given a CSV file of employees (name, dept, salary), perform the following:
# a) Display total number of employees
# b) Average salary per department
# c) Highest and lowest paid employee
total_emp=0
highest_salary=0
lowest_salary=9999999
highest_paid=""
lowest_paid=""
read -p "Enter the CSV file name: " file

if [ -f "$file" ]
then
  exec <$file
    while read line
     do
        en=`echo "$line" | cut -d',' -f1`
        dn=`echo "$line" | cut -d',' -f2`
        s=`echo "$line" | cut -d',' -f3`
     # Display total number of employees
        ((total_emp++))
       
        # Update highest and lowest salary details
        if ((s > highest_salary)) 
        then
            highest_salary=$s
            highest_paid="$en"
        fi
        if ((s < lowest_salary))
        then
            lowest_salary=$s
            lowest_paid="$en"
        fi
    done <

    # Display total number of employees
    echo "Total number of employees: $total_emp"

   

    # Display highest and lowest paid employees
    echo -e "\nHighest paid employee: $highest_paid with ₹$highest_salary"
    echo "Lowest paid employee: $lowest_paid with ₹$lowest_salary"
else
    echo "File does not exist."
fi
