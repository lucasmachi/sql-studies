# sql-stud
Personal SQL learning journey - Database fundamentals, queries, and practical exercises
# 📚 SQL Studies - Learning Journey

Personal repository documenting my SQL learning path, including notes, examples, and practical exercises.

[![SQL](https://img.shields.io/badge/SQL-MySQL-blue)](https://www.mysql.com/)
[![Started](https://img.shields.io/badge/Started-January_2026-green)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## 📖 About

This repository contains my studies on SQL (Structured Query Language), covering database fundamentals, query syntax, and practical applications. All examples are executable in MySQL/phpMyAdmin.

**Course**: Alison - SQL for Beginners

**Started**: January 6, 2026

---

## 🗂️ Repository Structure
```
sql-studies/
├── notes/              # Theoretical notes and concepts
├── examples/           # Practical SQL code examples
│   ├── DDL_examples.sql       # Data Definition Language
│   ├── DML_examples.sql       # Data Manipulation Language
│   └── queries_examples.sql   # SELECT queries
├── exercises/          # Solved exercises
├── database-designs/   # ER diagrams and schemas
└── screenshots/        # phpMyAdmin interface examples
```

---

## 🎯 Topics Covered

### Database Fundamentals
- ✅ What is SQL and its purpose
- ✅ Database architecture (2-tier vs 3-tier)
- ✅ Relational model and keys
- ✅ Schema types (logical vs physical)
- ✅ Physical data independence

### DDL (Data Definition Language)
- ✅ CREATE DATABASE
- ✅ CREATE TABLE
- ✅ ALTER TABLE (ADD, MODIFY, DROP)
- ✅ Data types (CHAR, VARCHAR, INT, NUMERIC, DATE, TIME)

### DML (Data Manipulation Language)
- ✅ INSERT INTO (single and multiple records)
- ✅ UPDATE with WHERE clause
- ✅ DELETE records

### Queries (SELECT)
- ✅ Basic SELECT statements
- ✅ DISTINCT values
- ✅ ORDER BY (ASC/DESC)
- ✅ WHERE clause and conditions
- ✅ Aggregate functions (MAX, MIN, COUNT, AVG, SUM)
- ✅ Mathematical calculations
- ✅ Advanced operators (AND, OR, IN, NOT IN)
- ✅ Pattern matching (LIKE with % and _)
- ✅ Range queries (BETWEEN)

---

## 💻 Setup & Tools

### Required Software
- **XAMPP** - Provides MySQL server and phpMyAdmin interface
  - Download: [apachefriends.org](https://www.apachefriends.org/)
- **MySQL** - Database management system (included in XAMPP)
- **phpMyAdmin** - Web-based database interface (included in XAMPP)

### Installation Steps
1. Download and install XAMPP
2. Start Apache and MySQL services in XAMPP Control Panel
3. Access phpMyAdmin at: `http://localhost/phpmyadmin`
4. Start practicing with SQL queries!

---

## 📝 Key Concepts

### Data Types

| Type | Description | Example |
|------|-------------|---------|
| `CHAR(n)` | Fixed-length text | `CHAR(5)` for '17111' |
| `VARCHAR(n)` | Variable-length text | `VARCHAR(100)` for emails |
| `INT` | Integer numbers | `INT` for age |
| `NUMERIC(p,s)` | Decimal numbers | `NUMERIC(8,2)` for salary |
| `DATE` | Date values | `DATE` for birthdate |
| `TIME` | Time values | `TIME` for timestamps |

### Important SQL Commands
```sql
-- Create database
CREATE DATABASE company_db;

-- Create table
CREATE TABLE employee (
    ID char(5),
    Name varchar(20),
    Salary numeric(8,2)
);

-- Insert data
INSERT INTO employee VALUES('17111', 'John', 50000);

-- Query data
SELECT * FROM employee WHERE Salary > 60000;

-- Update data
UPDATE employee SET Salary = 70000 WHERE Name = 'John';

-- Delete data
DELETE FROM employee WHERE Name = 'John';
```

---

## 🎓 Learning Progress

- [x] SQL Introduction and Basics
- [x] Database Architecture
- [x] DDL Commands
- [x] DML Commands
- [x] Basic Queries
- [x] WHERE Clause and Conditions
- [x] Aggregate Functions
- [x] Advanced Operators
- [ ] JOINs (Coming soon)
- [ ] Subqueries (Coming soon)
- [ ] Indexes and Optimization (Coming soon)

---

## 📚 Resources

- [MySQL Documentation](https://dev.mysql.com/doc/)
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
- [Alison Course](https://alison.com/topic/learn/144951/sql-introduction-and-installation)

---

## 🤝 Contributing

This is a personal learning repository, but feel free to:
- Open issues for suggestions
- Submit pull requests with corrections
- Share additional learning resources

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Lucas Colafati dos Santos Dalla Dea Machi**
- GitHub: [@lucasmachi](https://github.com/lucasmachi)
- Learning SQL since: January 2026

---

## 📊 Database Examples

### Employee Table Structure
```sql
CREATE TABLE employee (
    ID char(5),
    Name varchar(20),
    Dept_name varchar(20),
    Salary numeric(8,2)
);
```

### Customer Table Structure
```sql
CREATE TABLE customer (
    C_name varchar(25),
    C_id char(5),
    C_address varchar(300),
    C_email varchar(255)
);
```

---

**Note**: All SQL examples in this repository are tested and working on MySQL 8.0+ with phpMyAdmin.
