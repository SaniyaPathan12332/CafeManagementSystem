-- CREATE DATABASE 
create database CafeDB;
USE CafeDB;

-- CREATE CUSTOMER TABLE

CREATE TABLE Customer(Customer_id int auto_increment primary key,
Name VARCHAR(50),
Phone VARCHAR(15),
Email VARCHAR(50)
);


-- CREATE MENU TABLE

CREATE TABLE Menu(
ItemID int auto_increment primary key,
ItemName VARCHAR(50),
Category VARCHAR(50),
Price decimal(6,2)
);


-- CREATE ORDER TABLE

CREATE TABLE Orders(
Order_id int auto_increment primary key	,
Customer_id int,
OrderDate date,
constraint fk_Customer foreign key (Customer_id) references Customer(Customer_id)
on update cascade
ON delete cascade);

-- CREATE ORDERDETAILS TABLE

CREATE TABLE OrderDetails(
OrderDetails_id INT AUTO_INCREMENT PRIMARY KEY,
Order_id INT,
ItemID INT,
Quentity INT ,
CONSTRAINT fk_Menu FOREIGN KEY (ItemID) REFERENCES Menu (ItemID),
CONSTRAINT fk_orders FOREIGN KEY (Order_id) REFERENCES Orders (Order_id)
ON UPDATE CASCADE
ON DELETE CASCADE);


-- View Create

CREATE VIEW CafeFullData AS
SELECT O.Order_id, O.OrderDate,
       C.Name , M.ItemName,
       OD.Quentity
FROM OrderS O
JOIN  Customer C ON O.Customer_id=C.Customer_id
JOIN OrderDetails OD ON O.Order_id=OD.Order_id
JOIN Menu M ON OD.ItemID=M.ItemID;
    
     



show tables; 
DESC Customer;
DESC Menu;
DESC Orders;
DESC OrderDetails;
