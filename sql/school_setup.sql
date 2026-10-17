CREATE DATABASE IF NOT EXISTS school;

USE school;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    enrolled_on DATE
);

-- Insert the two sample students.
-- INSERT IGNORE avoids duplicate-email errors if these records exist.
INSERT IGNORE INTO students (name, email, enrolled_on)
VALUES
    ('John Doe', 'john.doe@example.com', '2026-10-01'),
    ('Mary Smith', 'mary.smith@example.com', '2026-10-02');

-- Retrieve all student records.
SELECT * FROM students;

-- Create a dedicated application account separately if needed.
-- Replace the placeholder with your own strong password.
-- CREATE USER 'school_app'@'localhost'
-- IDENTIFIED BY 'ReplaceWithYourOwnStrongUniquePassword!';
-- GRANT SELECT, INSERT, UPDATE, DELETE
-- ON school.* TO 'school_app'@'localhost';
