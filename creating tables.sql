-- different types of data examples
-- INT (whole numbers)
-- DECIMAL (decimal numbers, exact values)
    -- DECIMAL(m,n) # m is the total number of digits that you want to store for this number,
    --              # n is the total number of decimal digits 
-- VARCHAR (string)
    -- VARCHAR(l) # l is the maximum number of characters that the string can store
-- BLOB (binary large object, stores large data)
-- DATE (stores dates)
    -- format : 'YYYY-MM-DD'
-- TIMESTAMP (stores time)
    -- format: 'YYYY-MM-DD HH:MM:SS' 


-- create a table
CREATE TABLE student(
    -- define all the columns and their corresponding datatypes
    student_id INT,
    student_name VARCHAR(20),
    student_major VARCHAR(20),
    PRIMARY KEY (student_id)
); -- name of the table is 'student'

-- DESCRIBE student; -- describe the table with datatypes showing 

DROP TABLE student; -- delete the 'student' table

ALTER TABLE student ADD gpa DECIMAL(3,2); -- add another column gpa, with datatype of decimal 
ALTER TABLE student DROP COLUMN gpa; -- drop the gpa column in the table 

