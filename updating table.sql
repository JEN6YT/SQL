-- update entries of the table
UPDATE student
SET student_major = 'Bio'
WHERE student_major = 'Biology'; -- equal condition
-- condition can also be: <> not equal, <, >, <=, >= 

UPDATE student
SET student_major = 'Bio'
WHERE student_id >= 7; -- if i get rid of this WHERE condition statement, the SET will be applied to every single entry of that column

UPDATE student
SET student_major = 'Biochem'
WHERE student_major = 'Bio' OR student_major = 'Chem';

UPDATE student
SET student_major = 'Biochem', student_name = 'Tom'
WHERE student_id >= 2 AND student_id <= 5;


SELECT * FROM student
ORDER BY student_id -- order the table by a given column


-- delete rows
DELETE FROM student
WHERE student_id >= 5; -- conditions similar to UPDATE 