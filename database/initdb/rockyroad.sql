CREATE DATABASE ROCKYROAD;

CREATE TABLE CUSTOMER (
	CustID INT NOT NULL PRIMARY KEY,
	CustFName varchar(50),
	CustLName varchar(50),
	DOB date NOT NULL,
	Phone varchar(20),
	CustEmail varchar(50) NOT NULL,
	Username varchar(50) NOT NULL,
	Password varchar(50) NOT NULL
);

CREATE TABLE CHATAGENT (
	AgentID int NOT NULL PRIMARY KEY,
	AgentFName varchar(50) NOT NULL,
	AgentLName varchar(50) NOT NULL,
	AgentSpec varchar(50),
	AgentEmail varchar(50) NOT NULL
);

CREATE TABLE PRODUCT (
	ProductID int NOT NULL PRIMARY KEY,
	ProductName varchar(50) NOT NULL,
	category varchar(50) NOT NULL,
	price decimal(10,2) NOT NULL
);

CREATE TABLE FAQ (
	FaqID int NOT NULL PRIMARY KEY,
	question varchar(500) NOT NULL,
	answer varchar(500) NOT NULL,
	ProductID int,
	foreign key (ProductID) references Product (ProductID)
);

CREATE TABLE LIVECHAT(
	ChatID int NOT NULL PRIMARY KEY,
	CustID int NOT NULL,
	AgentID int NOT NULL,
	starttime timestamp NOT NULL,
	endtime timestamp NOT NULL,
	transcript varchar2(3000),
	foreign key (CustID) references Customer (CustID),
	foreign key (AgentID) references ChatAgent (AgentID)
);

CREATE TABLE FORUM (
	PostID int NOT NULL PRIMARY KEY,
	CustID int NOT NULL,
	title varchar(100) NOT NULL,
	content varchar(500),
	DatePosted date NOT NULL,
	ProductID int,
	foreign key (CustID) references Customer (CustID),
	foreign key (ProductID) references Product (ProductID)
);

CREATE TABLE CHATBOT (
	SessionID int NOT NULL PRIMARY KEY,
	CustID int NOT NULL,
	chatquery varchar(500),
	response varchar(500),
	ChatTimeStamp timestamp NOT NULL,
	foreign key (CustID) references Customer(CustID)
);

INSERT INTO CUSTOMER VALUES (1, 'John', 'Doe', date '2000-1-1', null, 'crandom1@gmail.com', 'username1', 'password1');
INSERT INTO CUSTOMER VALUES (2, 'Jane', 'Doe', date '2000-1-2', '1234567890', 'crandom2@gmail.com', 'username2', 'password2');
INSERT INTO CUSTOMER VALUES (3, 'Jack', 'Smith', date '2000-2-1', '9876543210', 'crandom3@gmail.com', 'username3', 'password3');

INSERT INTO CHATAGENT VALUES (1, 'Will', 'Smith', null, 'arandom1@gmail.com');
INSERT INTO CHATAGENT VALUES (2, 'Lebron', 'James', 'Marketing', 'arandom2@gmail.com');
INSERT INTO CHATAGENT VALUES (3, 'Bill', 'Gates', 'IT', 'arandom3@gmail.com');

INSERT INTO PRODUCT VALUES (1, 'Tractor', 'Equipment', 1030.99);
INSERT INTO PRODUCT VALUES (2, 'Plow', 'Equipment', 500);
INSERT INTO PRODUCT VALUES (3, 'Wheels', 'Accessories', 202);

INSERT INTO FAQ VALUES (1, 'Test Question 1', 'Test Answer 1', null);
INSERT INTO FAQ VALUES (2, 'Test Question 2', 'Test Answer 2', 1);
INSERT INTO FAQ VALUES (3, 'Test Question 3', 'Test Answer 3', 1);

INSERT INTO LIVECHAT VALUES (1, 1, 1, timestamp '2024-8-1 10:00:00.00', timestamp '2024-8-1 11:00:00.00', 'test transcript');
INSERT INTO LIVECHAT VALUES (2, 1, 2, timestamp '2024-8-2 11:00:00.00', timestamp '2024-8-2 11:30:00.00', 'test transcript 2');
INSERT INTO LIVECHAT VALUES (3, 2, 3, timestamp '2024-8-3 9:00:00.00', timestamp '2024-8-3 10:36:00.00', 'test transcript 3');

INSERT INTO FORUM VALUES (1, 3, 'Test Title 1', 'Test Content 1 - no product linked', sysdate, null);
INSERT INTO FORUM VALUES (2, 2, 'Test Title 2', 'Test Content 2 - product linked', sysdate, 2);
INSERT INTO FORUM VALUES (3, 2, 'Test Title 3', 'Test Content 3', sysdate, null);

INSERT INTO CHATBOT VALUES (1, 1, 'Test Query 1', 'Test Response 1', systimestamp);
INSERT INTO CHATBOT VALUES (2, 1, 'Test Query 2', 'Test Response 2', systimestamp);
INSERT INTO CHATBOT VALUES (3, 2, 'Test Query 3', 'Test Response 3', systimestamp);
