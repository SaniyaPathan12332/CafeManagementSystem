use Cafedb;
-- Basic Query
-- 1)SHOW ALL CUSTOMER
select * from customer;

-- 2)LIST ALL MENU ITEMS SORTED BY PRICE
select ItemName , Category,Price
from menu 
order by Price desc;

-- 3)FIND ALL ORDERS FROM A SPECIFIC DATE 
select * from orders
where OrderDate='2025-08-09';
-- OR
select * from orders
where month(OrderDate)=8;
 
-- 4)TOTAL NUMBER OF CUSTOMER 
select count(*) from customer;


-- Intermediate Quer

-- 5)FULL ORDER DETAILS
select * from cafefulldata;

-- 6)DAILY SALES REPORT
select OrderDate, sum(OD.Quentity * M.price) as DailySales
from Orders O
join orderdetails OD on O.Order_id = OD.Order_id
join Menu M on M.ItemID = OD.ItemID
group by O.OrderDate
order by O.OrderDate;

-- 7)TOP SELLING ITEM
select ItemName, sum(OD.Quentity) as TopItem
from Menu M 
join orderdetails OD on M.ItemID=OD.ItemID
group by ItemName
order by TopItem desc
limit 1;

-- 8)REPEAT CUSTOMER
select C.Name , sum(Order_id) as ReaptCust
from Customer C
join Orders O on C.Customer_id=O.Customer_id
group by C.Customer_id
having ReaptCust > 1;

-- Advance Query

-- 9)HIGHEST SPENDING CUSTOMER
select C.Name,sum(OD.Quentity * M.price) as HiSpendingCust
from Customer C
join orders O on O.Customer_id=C.Customer_id
join orderdetails OD on O.Order_id=OD.Order_id
join menu M on OD.ItemID=M.ItemID
group by C.Customer_id
order by HiSpendingCust desc
limit 1;

-- 10)CATEGORY WISE SALES BREADOWN
select M.Category,sum(OD.Quentity * M.price) as CategoryWise_Sales
from Menu M
join orderdetails OD on OD.ItemID=M.ItemID
group by M.Category
order by CategoryWise_Sales desc
limit 1;

-- 11)BEST DAY FOR BUSINESS 
select OrderDate, sum(OD.Quentity * M.price) as DailySales
from Orders O
join orderdetails OD on O.Order_id=OD.Order_id
join Menu M on M.ItemID=OD.ItemID
group by O.OrderDate
order by O.OrderDate
limit 1;

-- 12)CUSTOMER ORDER HISTORY 
select O.Order_id,O.OrderDate,M.ItemName,OD.Quentity,(OD.Quentity * M.price) as Total
from Menu M
join orderdetails OD on M.ItemID=OD.ItemID
join orders O on OD.Order_id=O.Order_id
join customer C on O.Customer_id=C.Customer_id
where C.Customer_id=1;

UPDATE Customer
SET Name="Aasif"
WHERE Customer_id=2;
 
 