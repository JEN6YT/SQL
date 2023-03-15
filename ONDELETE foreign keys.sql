-- How to delete entries in a table with foreign keys associated with it

-- if we delete one entry in a table with a foreign key, it is gonna affect other tables with the foreign key as the primary key

-- ON DELETE SET NULL: if we delete that entry, the entry in the other table will be set to NULL
CREATE TABLE Branch(
    branch_id INT,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    PRIMARY KEY (branch_id),
    -- here we can define the foreign key mgr_id because it references the Employee table, which we have created already
    FOREIGN KEY (mgr_id) REFERENCES Employee (emp_id) ON DELETE SET NULL -- define mgr_id as the foreign key for this table
);
DELETE FROM Employee
WHERE emp_id = 102; 
-- now any table with foreign keys as emp_id with ON DELETE SET NULL will be set to NULL for the entries associated with it
-- if we delete that employee in the Employee table

-- ON DELETE CASCADE: if we delete that row, that row will be deleted in the other table entirely
CREATE TABLE Works_with(
    emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY (emp_id, client_id), -- composite primary key
    FOREIGN KEY (emp_id) REFERENCES Employee (emp_id) ON DELETE CASCADE,
    FOREIGN KEY (client_id) REFERENCES Client (client_id) ON DELETE CASCADE
);


-- it is better to have ON DELETE SET NULL if the foreign key of a table is not a primary key for that table and so we can set to NULL for the entries
-- it is better to use ON DELETE CASCADE if the foreign key is also a primary key for the table because primary key cannot be NULL