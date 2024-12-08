-- Use the database created by the Docker environment
USE is436;

-- Create tables in the correct order
CREATE TABLE IF NOT EXISTS CUSTOMER (
    CustID INT NOT NULL PRIMARY KEY,
    CustFName VARCHAR(50),
    CustLName VARCHAR(50),
    DOB DATE NOT NULL,
    Phone VARCHAR(20),
    CustEmail VARCHAR(50) NOT NULL,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS CHATAGENT (
    AgentID INT NOT NULL PRIMARY KEY,
    AgentFName VARCHAR(50) NOT NULL,
    AgentLName VARCHAR(50) NOT NULL,
    AgentSpec VARCHAR(50),
    AgentEmail VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUCT (
    ProductID INT NOT NULL PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS FAQ (
    FAQID INT NOT NULL PRIMARY KEY,
    Question TEXT NOT NULL,
    Answer TEXT,
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);

CREATE TABLE IF NOT EXISTS LIVECHAT (
    ChatID INT NOT NULL PRIMARY KEY,
    CustID INT NOT NULL,
    AgentID INT NOT NULL,
    StartTime TIMESTAMP NOT NULL,
    EndTime TIMESTAMP,
    Transcript TEXT,
    FOREIGN KEY (CustID) REFERENCES CUSTOMER(CustID),
    FOREIGN KEY (AgentID) REFERENCES CHATAGENT(AgentID)
);

CREATE TABLE IF NOT EXISTS FORUM (
    ForumID INT NOT NULL PRIMARY KEY,
    CustID INT NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Content TEXT NOT NULL,
    PostDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ProductID INT,
    FOREIGN KEY (CustID) REFERENCES CUSTOMER(CustID),
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);

CREATE TABLE IF NOT EXISTS CHATBOT (
    QueryID INT NOT NULL PRIMARY KEY,
    CustID INT NOT NULL,
    QueryText TEXT NOT NULL,
    ResponseText TEXT NOT NULL,
    QueryTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CustID) REFERENCES CUSTOMER(CustID)
);