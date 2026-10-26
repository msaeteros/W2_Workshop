DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Phone_Number VARCHAR(20) NOT NULL,
    Email VARCHAR(254)
);

CREATE TABLE Dog (
    Dog_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Dog_Name VARCHAR(50) NOT NULL,
    Breed VARCHAR(100),
    Age INT,
    Instructions VARCHAR(500),

    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),

    CHECK (Age >= 0)
);

CREATE TABLE Walks (
    Walk_ID INT AUTO_INCREMENT PRIMARY KEY,
    Dog_ID INT NOT NULL,
    Walk_Date DATE NOT NULL,
    Time_Start TIME NOT NULL,
    Time_End TIME NOT NULL,

    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID),
    CHECK (Time_End > Time_Start)
);

CREATE TABLE Payment (
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Walk_ID INT NOT NULL UNIQUE,
    Payment_Method VARCHAR(30),
    Payment_Date DATE,
    Total_Bill DECIMAL(10,2) NOT NULL,
    Payment_Status VARCHAR(20) NOT NULL DEFAULT 'Pending',

    FOREIGN KEY (Walk_ID) REFERENCES Walks(Walk_ID),
    CHECK (Total_Bill >= 0)
);

