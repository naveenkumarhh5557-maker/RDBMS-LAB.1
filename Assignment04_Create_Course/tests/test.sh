#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;
SELECT COUNT(*) FROM Course;
" > output.txt

grep -q "3" output.txt || exit 1

echo "PASS"