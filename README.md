📌 Banking System Database (SBA) – SQL Case Study

This project is a Banking System Database built using SQL, designed to simulate real-world banking operations.

📖 Overview

This project is a Banking System Database built using SQL, designed to simulate real-world banking operations. It includes customer management, account handling, transactions, branches, and loan records.

The goal of this case study is to demonstrate strong SQL fundamentals including:

Database design

Data manipulation

Joins & relationships

Aggregations & subqueries

Real-world business queries

🎯 Problem Statement

Banks manage large volumes of data related to customers, accounts, transactions, and loans. The challenge is to:

Organize and store structured data efficiently

Retrieve meaningful insights

Perform complex queries for decision-making

💡 Solution

A relational database system was designed with multiple interconnected tables to:

Track customer details

Manage multiple accounts per customer

Record financial transactions

Associate accounts with branches

Handle loan data

SQL queries were written to extract insights such as:

High-value transactions

Active vs inactive accounts

Customer account analysis

Branch-level performance

🗂️ Database Schema

The database SBA consists of the following tables:

Customers → Stores customer personal details

Accounts → Holds account information and balances

Transactions → Records deposits and withdrawals

Branches → Bank branch details

AccountBranches → Maps accounts to branches

Loans → Customer loan records

🔗 Relationships

One customer → Multiple accounts

One account → Multiple transactions

Many accounts → One branch

One customer → Multiple loans

⚙️ Key Features & SQL Concepts Used

✅ DDL Commands (CREATE, ALTER)

✅ DML Commands (INSERT, UPDATE)

✅ Constraints (Primary Key, Foreign Key)

✅ Joins (INNER JOIN, LEFT JOIN)

✅ Subqueries

✅ Aggregate Functions (SUM, AVG, COUNT)

✅ GROUP BY & HAVING

✅ CASE Statements

📊 Sample Insights Generated

Transactions greater than $500

Customers with above-average account balances

Total balance by account type

Customers with multiple accounts

Top customers based on loan amount

Branches managing high-value accounts (> $100,000)

🧠 Learning Outcomes

Through this project, I developed:

Strong understanding of relational database design

Ability to write optimized SQL queries

Skills in data analysis using SQL

Experience in solving real-world business problems

🚀 How to Use

Create the database:

CREATE DATABASE SBA;
USE SBA;

Run all table creation scripts

Insert the provided data

Execute queries to analyze the dataset

📌 Conclusion

This project demonstrates how SQL can be used to manage and analyze banking data effectively. It showcases practical skills that are highly relevant for roles in:

Data Analysis

Backend Development

Database Management
