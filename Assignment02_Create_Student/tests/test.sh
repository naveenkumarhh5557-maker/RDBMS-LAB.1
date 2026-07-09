#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;
DESCRIBE Student;
" > output.txt

grep -q "StudentID" output.txt || exit 1
grep -q "StudentName" output.txt || exit 1
grep -q "DOB" output.txt || exit 1
grep -q "Gender" output.txt || exit 1
grep -q "DepartmentID" output.txt || exit 1

echo "PASS"