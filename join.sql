-- Used for combining rows from two or more tables based on a related column between them

INSERT INTO Branch VALUES (4, 'Buffalo', NULL, NULL);

-- Find all branches and the names of their managers
-- In this case 'mgr_id' in the Branch table is associated with the 'emp_id' in the Employee table
-- What the following table does is to join the two tables/rows as long as the emp_id from Employee table == mgr_id from Branch table
-- It will return the four columns which will be the manager of each branch
SELECT Employee.emp_id, Employee.first_name, Employee.last_name, Branch.branch_name 
FROM Employee
JOIN Branch -- general JOIN
ON Employee.emp_id = Branch.mgr_id; 


SELECT Employee.emp_id, Employee.first_name, Employee.last_name, Branch.branch_name 
FROM Employee
LEFT JOIN Branch -- LEFT JOIN: it will include everything in the Employee table
ON Employee.emp_id = Branch.mgr_id; 


SELECT Employee.emp_id, Employee.first_name, Employee.last_name, Branch.branch_name 
FROM Employee
RIGHT JOIN Branch -- RIGHT JOIN: it will include everything in the Branch table
ON Employee.emp_id = Branch.mgr_id; 


SELECT Employee.emp_id, Employee.first_name, Employee.last_name, Branch.branch_name 
FROM Employee
FULL OUTER JOIN Branch -- FULL OUTER JOIN: it will include everything in both the Employee and the Branch table
ON Employee.emp_id = Branch.mgr_id;

-- Everything else will be NULL