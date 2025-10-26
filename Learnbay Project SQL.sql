CREATE DATABASE Learnbay_Project;
USE Learnbay_Project;

--IMPORTING THE DATASETS--

SELECT * FROM COURSES;
SELECT * FROM ENROLLMENTS;
SELECT * FROM INSTRUCTORS;
SELECT * FROM STUDENTS;

--SQL QUERY FOR ANALYSIS--
--1- Get the average grade for each student (considering A=4, B=3, C=2, D=1, F=0)-- 

SELECT
    s.Name,
    AVG(CASE
        WHEN e.grade = 'A' THEN 4
        WHEN e.grade = 'B' THEN 3
        WHEN e.grade = 'C' THEN 2
        WHEN e.grade = 'D' THEN 1
        WHEN e.grade = 'F' THEN 0
        ELSE NULL
    END) AS average_grade
FROM
    STUDENTS s
JOIN
    ENROLLMENTS e ON s.StudentID = e.StudentID
GROUP BY
    s.Name
ORDER BY
    average_grade DESC;


--2- List all instructors who are teaching a course with fewer than 3 students enrolled.--

--SELECT first_name,last_name,CONCAT(first_name, ' ', last_name) AS full_name FROM INSTRUCTORS-- This used to join the first and last name.


SELECT DISTINCT
    CONCAT(i.first_name, ' ', i.last_name) AS instructor_full_name
FROM
    ENROLLMENTS e
JOIN
    COURSES c ON e.CourseID = c.CourseID
JOIN
    INSTRUCTORS i ON c.InstructorID = i.faculty_id
GROUP BY
    c.CourseID, i.first_name, i.last_name 
HAVING
    COUNT(e.StudentID) < 3;

	
--3-Find the total number of credits each student has earned, grouped by their major--

SELECT
    s.Major,
    s.Name,
   SUM(CAST(c.Credits AS INT)) AS total_credits_earned
FROM
    STUDENTS s
JOIN
    ENROLLMENTS e ON s.StudentID = e.StudentID
JOIN
    COURSES c ON e.CourseID = c.CourseID
GROUP BY
    s.major, s.Name
ORDER BY
    s.Major, s.Name;


--Find the average salary of instructors in each department--

SELECT
    c.CourseName,
    AVG(CAST(i.salary AS INT)) AS average_salary
FROM
    INSTRUCTORS i
JOIN
    COURSES c ON i.faculty_id = c.InstructorID
GROUP BY
    c.CourseName
ORDER BY
    c.CourseName;


-- List all courses that are taught by more than one instructor--

	SELECT
    c.CourseID,
    c.CourseName,
    COUNT(DISTINCT c.InstructorID) AS instructor_count,
    STRING_AGG(CONCAT(i.first_name, ' ', i.last_name), ', ') AS instructors
FROM COURSES c
JOIN INSTRUCTORS i
  ON c.InstructorID = i.faculty_id
GROUP BY
    c.CourseID, c.CourseName
HAVING
    COUNT(DISTINCT c.InstructorID) > 1
ORDER BY
    instructor_count DESC;

--List the top 3 students with the highest number of credits earned--

	 SELECT * FROM COURSES;
SELECT * FROM ENROLLMENTS;
SELECT * FROM INSTRUCTORS;
SELECT * FROM STUDENTS;

SELECT TOP 3
    s.Name,
    SUM(CAST(c.Credits AS INT)) AS total_credits_earned
FROM
    STUDENTS s
JOIN
    ENROLLMENTS e ON s.StudentID = e.StudentID
JOIN
    COURSES c ON e.CourseID = c.CourseID
GROUP BY
    s.Name
ORDER BY
    total_credits_earned DESC;


