-- Combine all the SELECTs and return the selected columns in one single column
-- Rules
    -- 1. the SELECTs must have the same number of columns
    -- 2. the SELECTs must have the same datatype

-- Find a list of employee and branch names
SELECT first_name AS names -- can't have SELECT first_name, last_name
FROM Employee
UNION
SELECT branch_name
FROM Branch
UNION
SELECT client_name
FROM Client

-- Because both the Client and Branch_supplier table have branch_id column, we are able to get a table with two columns, 'names' and 'branch_id'
SELECT client_name As names, branch_id
FROM Client
UNION
SELECT supplier_name, branch_id
FROM Branch_supplier;

-- Find a list of all money spent or earned by the company
-- Money spent: paying the employees, Mondy earned: total_sales
SELECT total_sales as moneyspentandearned
FROM Works_with
UNION
SELECT salary
FROM Employee;