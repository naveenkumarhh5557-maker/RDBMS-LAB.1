#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;
SHOW TABLES;
" > output.txt

grep -q "Department" output.txt || exit 1

mysql -uroot -proot -e "
USE CollegeDB;
DESCRIBE Department;
" > desc.txt

grep -q "DepartmentID" desc.txt || exit 1
grep -q "DepartmentName" desc.txt || exit 1
grep -q "HOD" desc.txt || exit 1

echo "PASS"