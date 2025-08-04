# 📚 Library Management Database Project

This project contains the SQL schema and ER diagram for a simple **Library Management System** built using **MySQL**.

## 🏗️ Schema Overview

The system contains 4 main tables:

| Table Name | Description |
|------------|-------------|
| `Authors`  | Stores author information |
| `Books`    | Stores book details and links to authors |
| `Members`  | Stores members (people who borrow books) |
| `Loans`    | Tracks which member borrowed which book and when |

## 🔗 Relationships

- A **Book** is written by one **Author**
- A **Loan** links a **Book** to a **Member**
- All foreign key relationships are defined to maintain data integrity


## ✅ Steps to Use

1. Import the `libraryDatabase.sql` file in MySQL Workbench
2. Open `libraryER.mwb` to view the database structure

## 🔧 Tools Used

- MySQL Workbench
- MySQL 8.0+
- SQL (DDL & DML)
