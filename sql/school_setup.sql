CREATE DATABASE IF NOT EXISTS school;

USE school;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    enrolled_on DATE
);

-- The two sample records have already been inserted.
-- Do not run these INSERT statements again if the records exist.

SELECT * FROM students;