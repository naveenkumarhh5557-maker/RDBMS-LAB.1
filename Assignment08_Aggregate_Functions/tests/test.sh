#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;
SELECT COUNT(*) FROM Employee;
" > count.txt

grep -q "5" count.txt || exit 1

mysql -uroot -proot -e "
USE CollegeDB;
SELECT MAX(Salary) FROM Employee;
" > max.txt

grep -q "45000" max.txt || exit 1

echo "PASS"