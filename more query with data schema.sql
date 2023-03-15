-- Find all employees
SELECT * FROM Employee;

-- Find all employees ordered by salary in descending order
SELECT *
FROM Employee
ORDER BY salary DESC;

-- Find all employees ordered by sex then by name
SELECT *
FROM Employee
ORDER BY sex, last_name;

-- Find the first five employees in the table
SELECT * FROM Employee;
--LIMIT 5;

-- Find the first and last names of all the employees
SELECT first_name, last_name
FROM Employee;

-- Return the first and last names of all the employees, but name them as 'forename' and 'surname' instead of 
SELECT first_name AS forename, last_name AS surname
FROM Employee;

-- Find out all the different genders the employees are stored at inside the table
SELECT DISTINCT sex
FROM Employee;
-- Find out how many distrinct branch_id's there are that are stored in the table
SELECT DISTINCT branch_id
FROM Branch


-- Functions

-- Find the total number of employees
SELECT COUNT(emp_id)
FROM Employee;

-- Find the number of employees that have supervisors
SELECT COUNT(emp_id)
FROM Employee
WHERE super_id <> NULL;

SELECT COUNT(super_id)
FROM Employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM Employee
WHERE sex = 'F' AND birth_date >= '1971-01-01';

-- Find the average of all employee salaries
SELECT AVG(salary)
FROM Employee;

-- Find the sum of all male employee salaries
SELECT SUM(salary)
FROM Employee
WHERE sex = 'M';

-- Aggregation
-- Find out how many males and how many females there are in the Employee table
SELECT COUNT(sex), sex
FROM Employee
GROUP BY sex;

-- Find the total sales for each salesman 
SELECT SUM(total_sales), emp_id -- two columns, sum and employee_id
FROM Works_with
GROUP BY emp_id;

-- Find how much momey each client spent with the corresponding branch
SELECT SUM(total_sales), client_id
FROM Works_with
GROUP BY client_id;