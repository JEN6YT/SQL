CREATE TABLE Employee(
    emp_id INT,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_date DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT, 
    PRIMARY KEY (emp_id)
    -- note that here even though we know that we will set the super_id and branch_id as two foreign keys in the table
    -- but because we haven't finished creating the Employee and Branch tables yet
    -- we can't define the two foreign keys
    -- we have to update that later when we finish creating the two tables
);

CREATE TABLE Branch(
    branch_id INT,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    PRIMARY KEY (branch_id),
    -- here we can define the foreign key mgr_id because it references the Employee table, which we have created already
    FOREIGN KEY (mgr_id) REFERENCES Employee (emp_id) ON DELETE SET NULL -- define mgr_id as the foreign key for this table
);

-- now that we have created the Branch and Employee tables, we can then modify the Employee tables to define the foreign keys
ALTER TABLE Employee
ADD FOREIGN KEY (branch_id) REFERENCES Branch (branch_id) ON DELETE SET NULL;

ALTER TABLE Employee
ADD FOREIGN KEY (super_id) REFERENCES Employee (emp_id) ON DELETE SET NULL;

CREATE TABLE Client(
    client_id INT,
    client_name VARCHAR(40),
    branch_id INT,
    PRIMARY KEY (client_id),
    FOREIGN KEY (branch_id) REFERENCES Branch (branch_id) ON DELETE SET NULL
);

CREATE TABLE Works_with(
    emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY (emp_id, client_id), -- composite primary key
    FOREIGN KEY (emp_id) REFERENCES Employee (emp_id) ON DELETE CASCADE,
    FOREIGN KEY (client_id) REFERENCES Client (client_id) ON DELETE CASCADE
);

CREATE TABLE Branch_supplier(
    branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY (branch_id, supplier_name),
    FOREIGN KEY (branch_id) REFERENCES Branch (branch_id) ON DELETE SET NULL
);