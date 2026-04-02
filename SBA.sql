create database SBA;
use sba;

create table customers(
customerid int primary key,
Fistname varchar(50),
Lastname varchar(50),
Email varchar(50),
phone varchar(20),
accountcreationdate date
);
alter table Customers change Fistname Firstname varchar(50);

create table Accounts(
Accountid int primary key,
customerid int,
accounttype varchar(30),
balance decimal(12.2),
foreign key (customerid) references customers (customerid) 

);

create table Transactions(
Transactionid int primary key,
Accountid int,
TransactionDate date,
Amount decimal(12,2),
TransactionType varchar(20),
foreign key (Accountid) references Accounts (Accountid)
);

create table Branches(
Branchid int primary key,
BranchName varchar(30),
BranchAddress varchar(50),
BranchPhone varchar(20)
);

create table AccountBranches(
Accountid int,
Branchid int,
AssignmentDate date,
foreign key (Accountid) references Accounts(Accountid),
foreign key (Branchid) references Branches(Branchid)
);

create table Loans(
Loanid int primary key,
Customerid int,
LoanAmount decimal(12,2),
InterestRate decimal(5,2),
StartDate date,
EndDate date,
foreign key (Customerid) references Customers(Customerid)
);

INSERT INTO Customers VALUES (1, 'Amit', 'Sharma', 'amit.sharma@gmail.com', '9876543210', '2023-01-12'),
(2, 'Sneha', 'Patil', 'sneha.patil@gmail.com', '9123456780', '2023-03-05'),
(3, 'Rahul', 'Jain', 'rahul.jain@gmail.com', '9812345678', '2022-11-22'),
(4, 'Pooja', 'Joshi', 'pooja.joshi@gmail.com', '9090909090', '2024-02-10'),
(5, 'Karan', 'Mehta', 'karan.mehta@gmail.com', '9988776655', '2023-06-18'),
(6, 'Divya', 'Jadhav', 'divya.jadhav@gmail.com', '9012345678', '2022-08-30'),
(7, 'Vikas', 'Jain', 'vikas.jain@gmail.com', '9876501234', '2023-10-01'),
(8, 'Riya', 'Kapoor', 'riya.kapoor@gmail.com', '9833445566', '2024-01-15'),
(9, 'Sanjay', 'Joshi', 'sanjay.joshi@gmail.com', '9753108642', '2023-04-25'),
(10, 'Meera', 'John', 'meera.john@gmail.com', '9822001100', '2022-12-05');

insert into Accounts values
(101,1,'Checking',3200.00),
(102,1,'Savings',15000.00),
(103,2,'Checking',450.00),
(104,3,'Savings',12000.00),
(105,4,'Checking',2500.00),
(106,5,'Savings',8000.00),
(107,6,'Checking',950.00),
(108,7,'Savings',60000.00),
(109,8,'Checking',400.00),
(110,9,'Savings',3000.00),
(111,10,'Checking',1800.00),
(112,3,'Checking',2200.00),
(113,5,'Savings',500.00),
(114,2,'Savings',3500.00),
(115,7,'Checking',120000.00); #-- large balance for branch/aggregate examples

insert into Transactions values (201, 101, '2024-02-01', 600, 'Deposit'),
(202, 102, '2024-02-11', 1200, 'Withdrawal'),
(203, 103, '2024-01-15', 450, 'Deposit'),
(204, 104, '2024-03-05', 3000, 'Withdrawal'),
(205, 105, '2024-03-09', 700, 'Deposit'),
(206, 106, '2024-01-22', 950, 'Deposit'),
(207, 107, '2024-02-19', 5000, 'Deposit'),
(208, 108, '2024-02-21', 1600, 'Withdrawal'),
(209, 109, '2024-01-12', 800, 'Deposit'),
(210, 110, '2024-03-15', 2400, 'Withdrawal');

insert into Branches values (1, 'Mumbai Central Branch', 'Mumbai, Maharashtra', '02223456789'),
(2, 'Delhi Connaught Place Branch', 'New Delhi', '01122334455'),
(3, 'Bangalore MG Road Branch', 'Bengaluru, Karnataka', '08033445566'),
(4, 'Pune Camp Branch', 'Pune, Maharashtra', '02022335544'),
(5, 'Chennai T Nagar Branch', 'Chennai, Tamil Nadu', '04455667788');

insert into AccountBranches values (101, 1, '2023-02-01'),
(102, 2, '2023-03-15'),
(103, 3, '2023-04-20'),
(104, 1, '2023-05-10'),
(105, 4, '2023-06-18'),
(106, 5, '2023-07-22'),
(107, 2, '2023-08-30'),
(108, 3, '2023-09-19'),
(109, 4, '2023-10-05'),
(110, 5, '2023-11-11');
INSERT INTO AccountBranches VALUES
(111,1,'2023-12-20'),
(112,2,'2024-01-05'),  
(113,3,'2024-01-10'),
(114,4,'2024-01-15'), 
(115,5,'2024-01-18');

insert into Loans values (301, 1, 10000, 7.5, '2023-01-10', '2026-01-10'),
(302, 2, 25000, 8.2, '2022-06-15', '2027-06-15'),
(303, 3, 5000, 6.8, '2024-02-20', '2028-02-20'),
(304, 4, 18000, 7.1, '2023-03-05', '2026-03-05'),
(305, 5, 32000, 8.5, '2022-09-25', '2029-09-25'),
(306, 6, 9000, 6.5, '2023-12-01', '2026-12-01'),
(307, 7, 15000, 7.8, '2024-01-12', '2027-01-12'),
(308, 8, 42000, 8.9, '2023-04-14', '2030-04-14'),
(309, 9, 6000, 6.9, '2024-03-10', '2027-03-10'),
(310, 10, 27000, 7.7, '2022-11-05', '2028-11-05');


select * from Customers;
select * from Accounts;
select * from Transactions;
select * from Branches;
select * from AccountBranches;
select * from Loans;

# Write a query to select all transactions from the Transactions table where the Amount is greater than $500.
select * from Transactions where amount>500;

# Write a query to select all Accounts where the Balance is between $1000 and $5000 and the AccountType is 'Checking'
select * from Accounts where balance between 1000 and 5000 and accounttype="Checking";

# Write a query to select all Customers whose LastName starts with 'J'.
select * from customers where lastname like "J%";

# Write a query to select AccountID and a new column AccountStatus from the Accounts table. 
#If Balance is greater than $1000, set AccountStatus to 'Active', otherwise 'Inactive'.
select Accountid,
Case 
when balance > 1000 then "Active"
else "Inactive"
end "AccountStatus"
from Accounts;

alter table Accounts add column AccountStatus varchar(30);
update accounts set AccountStatus = case
when balance > 1000 then "Active"
else "Inactive"
end;

set sql_safe_updates=0;
# Write a query to find all Customers who have a balance in their accounts greater than the average balance of all accounts. Use a subquery to find these CustomerIDs
select * from customers where customerid in (select customerid from accounts where balance > (select avg(balance) from accounts));

# Write a query to get the total Balance for each AccountType. Group the results by AccountType
select accounttype,sum(balance)"Total Balance" from accounts group by Accounttype ;

select * from accounts;
select* from customers;

# Write a query to get the total number of accounts for each Customer, but only include customers who have more than 2 accounts. 
#Use the HAVING clause.
select customerid,count(*)"Total Account" from accounts group by customerid having count(*)>1;

# Write a query to select the top 5 customers with the highest LoanAmount
select * from Loans;
select customerid,loanamount from loans order by loanamount desc limit 5;

select * from accounts;
select * from transactions;

#	Write a query to join Transactions with Accounts to get a list of all transactions with AccountID, TransactionDate, and Amount.
select transactionid, accountid,transactiondate , amount from transactions join accounts using(accountid);

# Write a query to get a list of all Accounts and any associated Transactions. Include accounts that might not have any transactions.
select accountid,transactionid,amount from accounts left outer join transactions using (accountid);

#	Write a query to get the total number of accounts for each branch. 
#Use an INNER JOIN between AccountBranches and Branches, and group by BranchID.
select * from branches;
select * from accountbranches;
select branchid,count(*)"Total Account" from branches join accountbranches using(branchid) group by branchid;

select * from accounts;
# Write a query to find all Branches that manage accounts with a total balance of more than $100,000. 
#Use a subquery in the WHERE clause to find these BranchIDs.
select * from branches where branchid = (select ab.branchid from accountbranches ab join accounts a on ab.accountid=a.accountid group by ab.branchid having sum(a.balance)>100000);

# Write a query to list FirstName, LastName, AccountID, and TransactionDate for all transactions. Use INNER JOIN and LEFT JOIN as necessary to get all required details
select firstname,lastname,accountid,transactiondate from customers join accounts a using (customerid) left outer join transactions using (accountid) order by transactiondate;


select * from customers ;
select * from transactions;
select * from accounts;




