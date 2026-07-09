#!/bin/bash

mysql -uroot -proot < solution.sql

mysql -uroot -proot -e "
USE CollegeDB;

SELECT *
FROM Course
LEFT JOIN Enrollment
ON Course.CourseID=Enrollment.CourseID;
" > left.txt

grep -q "Database Systems" left.txt || exit 1

mysql -uroot -proot -e "
USE CollegeDB;

SELECT *
FROM Course
RIGHT JOIN Enrollment
ON Course.CourseID=Enrollment.CourseID;
" > right.txt

grep -q "201" right.txt || exit 1

echo "PASS"