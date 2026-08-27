CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Department (
    DepartmentID NUMBER(5) PRIMARY KEY,
    DepartmentName VARCHAR(20),
    HOD VARCHAR(20)
);
"""

path = Path("/mnt/data/solution.sql")
path.write_text(sql)
print(f"Created: {path}")
