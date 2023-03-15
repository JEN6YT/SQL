-- Trigger will define a certain action that should happen when a certain operation is performed on the database 

CREATE TABLE trigger_test(
    MESSAGE VARCHAR(100)
);

-- a delimiter tells the program where to end, normally it would be ;
-- but here we don't want the program to end at ; , so we are first gonna change the delimiter to $$

-- note that here the program doesn't recognize the keyword DELIMITER,
-- must be written in the terminal

-- the following code is triggered when inserting into the Employee table
-- the triggered message will be updated in the trigger_test table
DELIMITER $$
CREATE 
    TRIGGER my_trigger BEFORE INSERT
    ON Employee
    FOR EACH ROW BEGIN 
        INSERT INTO trigger_test VALUES ('added new employee');
    END$$
DELIMITER ;

INSERT INTO Employee VALUES(109, 'Oscar', 'Marti', '1968-02-10', 'M', 1-6, 3);

SELECT * FROM trigger_test;


-- the following code is triggered when inserting into the Employee table
-- the triggered first name of the employee just inserted will be updated in the trigger_test table
-- we can also change the trigger to NEW.branch_id which will insert the branch_id of the employee just inserted into the Employee table
DELIMITER $$
CREATE 
    TRIGGER my_trigger BEFORE INSERT
    ON Employee
    FOR EACH ROW BEGIN 
        INSERT INTO trigger_test VALUES (NEW.first_name);
    END$$
DELIMITER ;

INSERT INTO Employee VALUES(109, 'Oscar', 'Marti', '1968-02-10', 'M', 1-6, 3);

SELECT * FROM trigger_test;

-- if we have a trigger set up already, the new trigger will not overwrite the previous trigger


-- add conditions to the trigger
DELIMITER $$
CREATE 
    TRIGGER my_trigger BEFORE INSERT
    ON Employee
    FOR EACH ROW BEGIN 
        IF NEW.SEX = 'M', THEN
            INSERT INTO trigger_test VALUES ('added a male employee');
        ELSE IF NEW.sex = 'F', THEN
            INSERT INTO trigger_test VALUES ('added a female employee');
        END IF;
    END$$
DELIMITER ;