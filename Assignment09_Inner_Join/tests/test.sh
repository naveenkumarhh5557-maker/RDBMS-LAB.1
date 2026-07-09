#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;
SELECT StudentName,DepartmentName
FROM Student
INNER JOIN Department
ON Student.DepartmentID=Department.DepartmentID;
" > output.txt

grep -q "Computer Science" output.txt || exit 1
grep -q "Mathematics" output.txt || exit 1

echo "PASS"