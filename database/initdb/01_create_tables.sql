-- Use the database created by the Docker environment
USE is436;

-- Create tables in the correct order
CREATE TABLE IF NOT EXISTS CUSTOMER (
	CustID INT NOT NULL PRIMARY KEY,
	CustFName varchar(50),
	CustLName varchar(50),
	DOB date,
	Phone varchar(20),
	CustEmail varchar(50) NOT NULL,
	Username varchar(50) NOT NULL,
	Password varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS CHATAGENT (
	AgentID int NOT NULL PRIMARY KEY,
	AgentFName varchar(50) NOT NULL,
	AgentLName varchar(50) NOT NULL,
	AgentSpec varchar(50),
	AgentEmail varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUCT (
	ProductID int NOT NULL PRIMARY KEY,
	ProductName varchar(50) NOT NULL,
	category varchar(50) NOT NULL,
	price decimal(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS FAQ (
	FaqID int NOT NULL PRIMARY KEY,
	question varchar(500) NOT NULL,
	answer varchar(1000) NOT NULL
);

CREATE TABLE IF NOT EXISTS LIVECHAT (
	ChatID int NOT NULL PRIMARY KEY,
	CustID int NOT NULL,
	AgentID int NOT NULL,
	starttime timestamp NOT NULL,
	endtime timestamp NOT NULL,
	transcript varchar(3000),
	foreign key (CustID) references CUSTOMER (CustID),
	foreign key (AgentID) references CHATAGENT (AgentID)
);

CREATE TABLE IF NOT EXISTS FORUM (
	PostID int NOT NULL PRIMARY KEY,
	CustID int NOT NULL,
	title varchar(100) NOT NULL,
	content varchar(500),
	DatePosted date NOT NULL,
	ProductID int,
	foreign key (CustID) references CUSTOMER (CustID),
	foreign key (ProductID) references PRODUCT (ProductID)
);

CREATE TABLE IF NOT EXISTS CHATBOT (
	SessionID int NOT NULL PRIMARY KEY,
	CustID int NOT NULL,
	chatquery varchar(500),
	response varchar(500),
	ChatTimeStamp timestamp NOT NULL,
	foreign key (CustID) references CUSTOMER(CustID)
);
