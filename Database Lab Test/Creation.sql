CREATE TABLE Users (
  User_ID INTEGER PRIMARY KEY,
  Username VARCHAR2(255) NOT NULL,
  Email VARCHAR2(255) NOT NULL,
  Password VARCHAR2(255) NOT NULL,
  Name VARCHAR2(255),  
  DOB DATE,  -- Added missing comma here
  Address CLOB  -- Corrected data type 
);

CREATE TABLE Accounts (
  Account_ID INTEGER PRIMARY KEY,
  User_ID INTEGER,
  Account_Type VARCHAR2(50) NOT NULL,
  Balance DECIMAL(15, 2) DEFAULT 0.00,
  FOREIGN KEY(User_ID) references Users(User_ID)
); 

CREATE TABLE Categories (
    Category_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Type VARCHAR(20) NOT NULL CHECK (Type IN ('Income', 'Expense', 'Transfer'))
);
 

insert into Users(User_ID, Username, Email, Password, Name, DOB, Address) values(111, 'plaban', 'plaban@gmail.com', 4611, 'Plaban Das',TO_DATE('05-01-24', 'YYYY-MM-DD'), 'Khulna,Bangladesh');
insert into Users(User_ID, Username, Email, Password, Name, DOB, Address) values(112, 'sumon', 'sumon@gmail.com', 4611, 'Sumon Das',TO_DATE('02-02-24', 'YYYY-MM-DD'), 'Dhaka,Bangladesh');
insert into Users(User_ID, Username, Email, Password, Name, DOB, Address) values(113, 'niloy', 'niloy@gmail.com', 4611, 'Niloy Das',TO_DATE('03-04-24', 'YYYY-MM-DD'), 'Satkhira,Bangladesh');
insert into Users(User_ID, Username, Email, Password, Name, DOB, Address) values(114, 'pranto', 'pranto@gmail.com', 4611, 'Pranto Das',TO_DATE('06-07-24', 'YYYY-MM-DD'), 'Kapilmuni,Bangladesh');
 
insert into Accounts(Account_ID, User_ID, Account_Type, Balance) values(01, 111, 'Savings', 10500); 
insert into Accounts(Account_ID, User_ID, Account_Type, Balance) values(02, 112, 'Current', 9500); 
insert into Accounts(Account_ID, User_ID, Account_Type, Balance) values(03, 111, 'Debit Card', 10700); 
insert into Accounts(Account_ID, User_ID, Account_Type, Balance) values(04, 113, 'Credit Card', 12200); 
 
INSERT INTO Categories(Category_ID, Name, Type) VALUES(1, 'Salary', 'Income');
INSERT INTO Categories(Category_ID, Name, Type) VALUES(2, 'Rent', 'Expense');
INSERT INTO Categories(Category_ID, Name, Type) VALUES(3, 'Food', 'Expense');
INSERT INTO Categories(Category_ID, Name, Type) VALUES(4, 'Transport', 'Expense'); 
 