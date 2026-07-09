#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;
SELECT * FROM Student;
" > output.txt

grep -q "Arun" output.txt || exit 1
grep -q "Divya" output.txt || exit 1
grep -q "Karthik" output.txt || exit 1

echo "PASS"