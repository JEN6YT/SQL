INSERT INTO Employee VALUES(
    100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL 
    -- note that here, branch_id is NULL even though it is supposed to be 1
    -- but because we haven't inserted info about branch 1 into the Branch table, we cannot declare the branch_id in the Employee table beforehand
);

INSERT INTO Branch VALUES(
    1, 'Corporate', 100, '2006-02-09'
);

-- now that we have declared branch 1, we can update the Employee table row 1
UPDATE Employee
SET branch_id = 1
WHERE emp_id = 100;
-- similarly, we declare all the employee info that have branch_id of 1
INSERT INTO Employee VALUES(
    101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1 
);

INSERT INTO Employee VALUES(
    102, 'Micheal', 'Scott', '1964-03-15', 'M', 75000, 100, NULL 
    -- note that here, branch_id is NULL even though it is supposed to be 2
    -- but because we haven't inserted info about branch 2 into the Branch table, we cannot declare the branch_id in the Employee table beforehand
);

INSERT INTO Branch VALUES(
    2, 'Scranton', 102, '1992-04-06'
);

UPDATE Employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO Employee VALUES(
    103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2 
);
INSERT INTO Employee VALUES(
    104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2 
);
INSERT INTO Employee VALUES(
    105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2 
);

INSERT INTO Employee VALUES(
    106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL 
);

INSERT INTO Branch VALUES(
    3, 'Stamford', 106, '1998-02-13'
);

UPDATE Employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO Employee VALUES(
    107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3
);
INSERT INTO Employee VALUES(
    108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3 
);

-- Client
INSERT INTO client VALUES(400, 'Dunmore Highschool', 2);
INSERT INTO client VALUES(401, 'Lackawana Country', 2);
INSERT INTO client VALUES(402, 'FedEx', 3);
INSERT INTO client VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO client VALUES(405, 'Times Newspaper', 3);
INSERT INTO client VALUES(406, 'FedEx', 2);

-- WORKS_WITH
INSERT INTO works_with VALUES(105, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000);
INSERT INTO works_with VALUES(108, 403, 12000);
INSERT INTO works_with VALUES(105, 404, 33000);
INSERT INTO works_with VALUES(107, 405, 26000);
INSERT INTO works_with VALUES(102, 406, 15000);
INSERT INTO works_with VALUES(105, 406, 130000);

-- Branch Supplier
INSERT INTO ranch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(3, 'Stamford Labels', 'Custom Forms');


SELECT * FROM Employee; -- get all the data from the Employee table