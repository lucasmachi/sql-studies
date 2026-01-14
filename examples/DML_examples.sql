-- ============================================
-- DML Examples - Data Manipulation Language
-- Inserting, updating, and deleting data
-- ============================================

USE company_db;

-- Insert single record
INSERT INTO employee
VALUES('17111', 'Radee', 'Software', 50000);

-- Insert multiple records
INSERT INTO employee 
VALUES
    ('16111', 'Anjum', 'Marketing', 75000),
    ('18111', 'Adib', 'Software', 50000),
    ('16333', 'Ahmed', 'Marketing', 70000),
    ('18333', 'Musabbir', 'Software', 40000),
    ('19113', 'Gordon', 'Accounting', 50000),
    ('17213', 'Matt', 'Accounting', 68000),
    ('20101', 'Miguel', 'Human Resources (HR)', 50000);

-- Insert specific columns
INSERT INTO employee(ID, Name, Salary)
VALUES('19111', 'Fariha', 40000);

-- Update single record
UPDATE employee
SET Dept_name = 'Marketing'
WHERE Name = 'Fariha';

-- Update multiple records
UPDATE employee
SET Salary = 70000
WHERE Dept_name = 'Software';

-- Delete record
DELETE FROM employee
WHERE Name = 'Radee';

-- Insert data into customer table
INSERT INTO customer
VALUES 
    ('Melina', '12345', 'Limgrave', 'bladeofmiquella@grace.com'),
    ('Morgott', '12346', 'Leyndell', 'omenking@grace.com'),
    ('Godfrey', '12347', 'Badlands', '1steldenlord@grace.com'),
    ('Lautrec', '12348', 'Firelink', 'badboy@fire.com'),
    ('Gwyndolin', '12349', 'Anor Londo', 'illusion@soul.com'),
    ('Alonne', '12350', 'Iron Keep', 'friend@knights.com'),
    ('Raime', '12351', 'Iron Keep', 'raven@exile.com');
