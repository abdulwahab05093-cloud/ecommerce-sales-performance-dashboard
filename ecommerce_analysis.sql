create database project4;
use project4;
create table Orders(Order_ID varchar(43),Date date,Customer varchar(43),
Product varchar(43),Category varchar(43),Quantity int,Price float,
Region varchar(43),Payment varchar(43));
insert into Orders values('O-1001', '2026-04-02', 'R. Malik', 'Wireless Mouse', 'Electronics', 3, 19.99, 'North', 'Card'),
('O-1002', '2026-04-05', 'S. Ahmed', 'Notebook', 'Stationery', 15, 3.50, 'South', 'Cash'),
('O-1003', '2026-04-09', 'R. Malik', 'Desk Lamp', 'Home', 2, 22.00, 'North', 'Card'),
('O-1004', '2026-04-14', 'F. Zafar', 'Mechanical Keyboard', 'Electronics', 1, 59.99, 'East', 'Card'),
('O-1005', '2026-04-20', 'S. Ahmed', 'Coffee Mug', 'Home', 8, 9.99, 'South', 'Cash'),
('O-1006', '2026-04-25', 'N. Iqbal', 'Pen Set', 'Stationery', 20, 6.75, 'West', 'Card'),
('O-1007', '2026-05-02', 'R. Malik', 'Wireless Mouse', 'Electronics', 6, 19.99, 'North', 'Card'),
('O-1008', '2026-05-06', 'F. Zafar', 'Notebook', 'Stationery', 12, 3.50, 'East', 'Cash'),
('O-1009', '2026-05-11', 'S. Ahmed', 'Desk Lamp', 'Home', 1, 22.00, 'South', 'Card'),
('O-1010', '2026-05-15', 'N. Iqbal', 'Mechanical Keyboard', 'Electronics', 2, 59.99, 'West', 'Card'),
('O-1011', '2026-05-19', 'R. Malik', 'Coffee Mug', 'Home', 10, 9.99, 'North', 'Cash'),
('O-1012', '2026-05-24', 'F. Zafar', 'Pen Set', 'Stationery', 5, 6.75, 'East', 'Card'),
('O-1013', '2026-06-01', 'S. Ahmed', 'Wireless Mouse', 'Electronics', 9, 19.99, 'South', 'Card'),
('O-1014', '2026-06-06', 'N. Iqbal', 'Notebook', 'Stationery', 18, 3.50, 'West', 'Cash'),
('O-1015', '2026-06-10', 'R. Malik', 'Mechanical Keyboard', 'Electronics', 3, 59.99, 'North', 'Card'),
('O-1016', '2026-06-15', 'F. Zafar', 'Coffee Mug', 'Home', 6, 9.99, 'East', 'Card'),
('O-1017', '2026-06-20', 'S. Ahmed', 'Desk Lamp', 'Home', 4, 22.00, 'South', 'Cash'),
('O-1018', '2026-06-25', 'N. Iqbal', 'Wireless Mouse', 'Electronics', 7, 19.99, 'West', 'Card');

select Category,Payment,round(sum(Price * Quantity),6) as Total_Revenue from Orders group by Category,Payment;

select monthname(Date) as Month,round(sum(Price * Quantity),6) as Total_Revenue  from Orders group by monthname(date);

select Customer,round(sum(Price*Quantity),6) as Total_Spend from Orders group by Customer order by round(sum(Price*Quantity),5) desc;

select Region,round(avg(Price*Quantity),6) as Average_Order_Value from Orders group by Region;

