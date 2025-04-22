use dlm;
select * from customers;
-- USAGE OF WHERE CLAUSE
select * from customers where Subcategory='Phones' or 'office supplies' or 'Art';
-- USAGE OF WHERE NOT 
select * from customers where not Region='central';
-- ORDER BY
select * from customers where Category = 'Technology' order by Quantity ASC;
select * from customers where Category = 'Technology' order by Quantity DESC;
SELECT * FROM customers where Category is null;
SELECT * FROM customers where Category is not null;
select * from CUSTOMERS where Category = 'Technology' order by sales DESC LIMIT 5;
select * from customers where SubCategory in( 'Paper','phones','Art');
select * from customers where Quantity between 2 and 5;
select * from customers where region like 'w%';
select * from customers where region = 'West';
select * from customers where Category like '%y';
select * from customers where Category like '%no%';
select * from customers where region like 'w%t';
select count(*) from customers;
select count(*) from customers where Category='Technology';
-- find count of unique categories
select distinct Category from customers;
select count( distinct Category )from customers;
select avg(Sales) from customers;
select sum(sales) from customers;
select sum(sales) from customers where state='Texas';
select min(sales) from customers;
select min(sales) from customers where state='Texas';
select min(sales) from customers where Category = 'Technology';
select max(sales) from customers where Category = 'Technology';
