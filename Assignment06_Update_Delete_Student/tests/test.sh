#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;
SELECT DepartmentID FROM Student WHERE StudentName='Karthik';
" > output.txt

grep -q "103" output.txt || exit 1

mysql -uroot -proot -e "
USE CollegeDB;
SELECT * FROM Student WHERE StudentID=1002;
" > delete.txt

if grep -q "1002" delete.txt; then
    exit 1
fi

echo "PASS"