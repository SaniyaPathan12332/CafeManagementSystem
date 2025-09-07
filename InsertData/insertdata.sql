
INSERT INTO Customer (Name,Phone,Email)
VALUES
("Aslam Pathan"	,2346789667	,"aslam@example.com"),
("Asif Pathan",4462389765,"asif@example.com"),
("Saniya Khan",7765489123,"saniya@example.com"),
("Arman Malik",908769123,"arman@example.com"),
("Priya varma",7869024510,"priya@example.com"),
("Suhana Shaikh",2346712390,"suhana@example.com");

SELECT * FROM Customer;


INSERT INTO Menu (ItemName,Category,Price)
VALUES
("Espressco","Beverage",80.00),
("Cappuccino","Beverage",120.00),
("Latte","Beverage",140.00),
("Cold Coffee","Beverage",150.00),
("Cheese Sandwich","Snack",150.00),
("Veg Club Sandwich","Snack",180.00),
("French Fries","Snack",120.00),
("Chocolate Cake","Dessert",200.00),
("Blueberry Muffin","Dessert",160.00),
("Ice Creame Sundae","Dessert",180.00);

SELECT * FROM Menu;



INSERT INTO Orders(Customer_id,OrderDate)
VALUES
(1,	'2025-08-09'),
(2,	'2025-07-07'),
(3,	'2025-08-20'),
(4,	'2025-07-11'),
(6,	'2025-08-30'),
(1,	'2025-08-31'),
(2,	'2025-06-02'),
(3,	'2025-07-20'),
(2,	'2025-06-21'),
(4,	'2025-05-18');

SELECT * FROM Orders;


INSERT INTO OrderDetails(Order_id,ItemID,Quentity)
VALUES
(1,	1,	2),
(2,	3,	1),
(3,	4,	3),
(10,2,	2),
(5,	7,	8),
(6,	2,	1),
(7,	5,	1),
(8,	8,	5),
(9,	6,	2),
(10,10,	7),
(6,	9,	2),
(2,	4,	9);


SELECT * FROM OrderDEtails;
