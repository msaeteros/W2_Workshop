DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customer (
	Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(45) NOT NULL,
    Last_Name VARCHAR(45) NOT NULL,
    phone_number VARCHAR(45),
    Email VARCHAR(50) 
);

CREATE TABLE Dog(
	Dog_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Dog_Name VARCHAR(20) NOT NULL,
    Breed VARCHAR(45) ,
    Age INT ,
    special_instructions TEXT,
    FOREIGN KEY (Customer_ID) 
		REFERENCES Customer (Customer_ID)
	);
    
CREATE TABLE ScheduledWalks (
Walk_ID INT AUTO_INCREMENT PRIMARY KEY,
Dog_ID INT NOT NULL,
Walk_Date DATE NOT NULL,
Start_Time TIME NOT NULL,
End_Time TIME NOT NULL,
FOREIGN KEY (Dog_ID) 
	REFERENCES Dog (Dog_ID)
);

CREATE TABLE Payment (
Payment_Id INT AUTO_INCREMENT PRIMARY KEY ,
Customer_ID INT NOT NULL,
Walk_ID INT NOT NULL,
Payment_Method VARCHAR(45),
Payment_Date DATE,
Total_Bill DECIMAL(10,2),
Payment_Status VARCHAR(45),
FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Walk_ID)
        REFERENCES ScheduledWalks(Walk_ID),
    UNIQUE (Walk_ID)
);



