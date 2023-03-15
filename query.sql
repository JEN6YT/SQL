
SELECT * FROM student; -- this is the most basic query which will give us everything of the  'student' table

SELECT student_name -- select a specific column, in this case, the student_name column
FROM student;

SELECT student_name, student_major -- select multiple columns, in this case student_name and student_major
FROM student
ORDER BY student_major; -- order the selected columns by a column in ascending order

SELECT student_name, student_major -- select multiple columns, in this case student_name and student_major
FROM student
ORDER BY student_major DESC; -- order the selected columns by a column in descending order

SELECT *
FROM student
ORDER BY student_major DESC, student_id ASC; -- for the selected columns, first order them by major in descending order, and then order the people who have the same major with student_id in ascending order

SELECT *
FROM student 
ORDER BY gpa
--LIMIT 5 -- get the first five rows 

SELECT student_id, student_name
FROM student
WHERE gpa > 3.50; -- similar to UPDATE

SELECT student_id, student_name
FROM student
WHERE student_name IN ('Jen', 'Tom', "Claire"); -- return the columns where the student name is in the list in the brackets

SELECT student_id, student_name
FROM student
WHERE student_name IN ('Jen', 'Tom', "Claire") and gpa > 3.50;