-- ============================================
-- DDL Examples - Data Definition Language
-- Creating and modifying database structure
-- ============================================

-- Create database
CREATE DATABASE company_db;

-- Use the database
USE company_db;

-- Create employee table
CREATE TABLE employee (
    ID char(5),
    Name varchar(20),
    Dept_name varchar(20),
    Salary numeric(8,2)
);

-- Add new column
ALTER TABLE employee
ADD Email varchar(100);

-- Modify column type
ALTER TABLE employee
MODIFY Email varchar(255);

-- Drop column
ALTER TABLE employee
DROP COLUMN Email;

-- Create customer table
CREATE TABLE customer (
    C_name varchar(25),
    C_id char(5),
    C_address varchar(300),
    C_email varchar(255)
);
