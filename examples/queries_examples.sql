-- ============================================
-- Query Examples - SELECT statements
-- Retrieving and filtering data
-- ============================================

USE company_db;

-- ====== BASIC QUERIES ======

-- Show all data from table
SELECT * FROM employee;
SELECT * FROM customer;

-- Select specific columns
SELECT Name, Salary FROM employee;

-- Show distinct values
SELECT DISTINCT Dept_name FROM employee;

-- ====== ORDERING ======

-- Order alphabetically (ascending)
SELECT * FROM employee
ORDER BY Name;

-- Order descending
SELECT * FROM employee
ORDER BY Name DESC;

-- ====== WHERE CLAUSE (Filtering) ======

-- Filter by department
SELECT Name, Dept_name FROM employee
WHERE Dept_name = 'Software';

-- Filter by salary
SELECT Name, Salary FROM employee
WHERE Salary > 60000;

-- Multiple conditions with AND
SELECT Name, Salary FROM employee
WHERE Salary > 60000 AND Dept_name = 'Marketing';

-- Salary range
SELECT Name, Salary FROM employee
WHERE Salary > 60000 AND Salary <= 70000;

-- ====== AGGREGATE FUNCTIONS ======

-- Maximum salary
SELECT MAX(Salary) FROM employee;

-- Maximum with alias
SELECT MAX(Salary) AS 'Highest Salary' FROM employee;

-- Minimum salary
SELECT MIN(Salary) AS 'Lowest Salary' FROM employee;

-- Count employees by department
SELECT COUNT(Name) AS 'Employees from Software Dept' 
FROM employee 
WHERE Dept_name = 'Software';

-- Average salary by department
SELECT AVG(Salary) AS 'Average Marketing Salary' 
FROM employee 
WHERE Dept_name = 'Marketing';

-- Sum of salaries
SELECT SUM(Salary) AS 'Accounting Salary Total' 
FROM employee 
WHERE Dept_name = 'Accounting';

-- ====== CALCULATIONS ======

-- Weekly salary (approximation)
SELECT Name, 7 * Salary/30 AS 'Weekly Salary' 
FROM employee;

-- Annual salary
SELECT Name, 12 * Salary AS 'Yearly Salary' 
FROM employee;

-- Weekly salary (accurate)
SELECT Name, (Salary * 12)/52 AS 'Weekly Salary' 
FROM employee;

-- ====== ADVANCED OPERATORS ======

-- OR operator
SELECT Name, Dept_name FROM employee 
WHERE Dept_name = 'Marketing' OR Dept_name = 'Software';

-- IN operator (multiple values)
SELECT Name, Dept_name FROM employee 
WHERE Dept_name IN ('Marketing', 'Software', 'Human Resources (HR)');

-- NOT IN (exclude values)
SELECT Name, Dept_name FROM employee 
WHERE Dept_name NOT IN ('Marketing', 'Software');

-- ====== LIKE OPERATOR (Pattern matching) ======

-- Names starting with 'A'
SELECT Name FROM employee 
WHERE Name LIKE 'A%';

-- Names ending with 'a'
SELECT Name FROM employee 
WHERE Name LIKE '%a';

-- Names containing 'ar' anywhere
SELECT Name FROM employee 
WHERE Name LIKE '%ar%';

-- Names with exactly 4 letters
SELECT Name FROM employee 
WHERE Name LIKE '____';

-- Second letter is 'a'
SELECT Name FROM employee 
WHERE Name LIKE '_a%';

-- IDs ending with 1
SELECT Name, ID FROM employee
WHERE ID LIKE '%1';

-- IDs starting and ending with 1
SELECT Name, ID FROM employee
WHERE ID LIKE '1%1';

-- IDs with specific pattern (1___1)
SELECT Name, ID FROM employee 
WHERE ID LIKE '1___1';

-- Departments starting with 'M'
SELECT DISTINCT Dept_name FROM employee 
WHERE Dept_name LIKE 'M%';

-- ====== BETWEEN OPERATOR ======

-- Salary range (traditional way)
SELECT Name, Salary FROM employee 
WHERE Salary >= 50000 AND Salary <= 70000;

-- Salary range (using BETWEEN)
SELECT Name, Salary FROM employee
WHERE Salary BETWEEN 50000 AND 70000;
