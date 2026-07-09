#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;
DESCRIBE Student;
" > output.txt

grep -q "Email" output.txt || exit 1
grep -q "PhoneNumber" output.txt || exit 1

echo "PASS"