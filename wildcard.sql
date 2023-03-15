-- Grab a set of data from the table that matches a specific pattern

-- % stands for any number of characters
-- _ stands for only one character
-- we can us % or _ to defind a specific pattern

-- Find any client what are an LLC(limited liability company)
SELECT *
FROM Client
WHERE client_name LIKE '%LLC'; -- if the client name follows the 'XXX..XXLLC' pattern, then that client is selected

SELECT *
FROM Client
WHERE client_name LIKE '%LLC%'; -- if the client name follows the 'XXX..XXLLCXXXX..XX' pattern (contains LLC anywhere), then that client is selected

-- Find any branch suppliers who are in the label business 
SELECT *
FROM Branch_supplier
WHERE supplier_name LIKE '%Label%';

-- Find any employee born in Cctober
SELECT *
FROM Employee
WHERE birth_date LIKE '%10%'; -- LIKE '____-10%' (4 hyphens)

-- Find any clients who are schools
SELECT *
FROM Client
WHERE client_name LIKE '%School%'