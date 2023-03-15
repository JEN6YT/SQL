-- when running the code on a program, you only need to type in the command once and it will modify the table 

-- create a table
CREATE TABLE student(
    -- define all the columns and their corresponding datatypes
    student_id INT,
    student_name VARCHAR(20) NOT NULL, -- the entries of this column cannot be null
    student_major VARCHAR(20) UNIQUE, -- each entry of this column has to be unique
    GPA DECIMAL(3,2) DEFAULT 0.00, -- DEFAULT means that if we didn't imput a value, then the entry will be the default value
    PRIMARY KEY (student_id) -- a primary key is a column that is both NOT NULL and UNIQUE
); -- name of the table is 'student'

-- insert information, INSERT only takes in one row
INSERT INTO student VALUES (
    1, 'Jack', 'Biology' -- data first row: student_id, student_name, student_major 
);

-- if the information is not complete, say we don't know what the student_name is for the student
INSERT INTO student (student_id, student_major) VALUES (
    2, 'English'
);

SELECT * FROM student; -- grab all the information from the 'student' table 