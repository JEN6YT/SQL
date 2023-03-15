-- Find names of all employees who have sold over 30,000 to a single client
-- Since the emp_id appears in both Works_with and Employee table
-- we can first grab the emp_id from the Works_with table that have total_sales over 30,000
-- and then get the employee names from the Employee table

SELECT first_name, last_name
FROM Employee
WHERE Employee.emp_id IN (
    SELECT emp_id
    FROM Works_with
    WHERE total_sales > 30000
);


-- Find all the clients who are handled by the branch that Michael Scotte manages, assume you know Michael's ID
SELECT client_name
FROM Client
WHERE branch_id = (
    SELECT branch_id
    FROM Branch
    WHERE mgr_id = 102
);
