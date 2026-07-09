#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;
SELECT Name FROM Marksheet WHERE Marks>80 ORDER BY Marks DESC;
" > output.txt

grep -q "Karthik" output.txt || exit 1
grep -q "Rahul" output.txt || exit 1
grep -q "Arun" output.txt || exit 1

echo "PASS"