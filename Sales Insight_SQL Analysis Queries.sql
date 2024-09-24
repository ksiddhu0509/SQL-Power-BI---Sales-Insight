SELECT * FROM sales.customers
SELECT * FROM sales.date
SELECT * FROM sales.markets
SELECT * FROM sales.products
SELECT * FROM sales.transactions

SELECT count(*) FROM sales.customers;
SELECT * FROM sales.transactions where market_code='Mark001'

SELECT count(product_code) FROM sales.transactions where market_code='Mark001'

SELECT * from sales.transactions where currency="USD";

SELECT sales.transactions.*, sales.date.* FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
 where sales.date.year=2020;
 
 ##Show total revenue in year 2020,
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
 INNER JOIN sales.date 
 ON sales.transactions.order_date=sales.date.date 
 where sales.date.year=2020 and sales.transactions.currency="INR\r"
 or sales.transactions.currency="USD\r";
 
 
 ##Show total revenue in year 2020 in month of January with currency either dollar or Indian Rupee
 SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
 INNER JOIN sales.date 
 ON sales.transactions.order_date=sales.date.date 
 where sales.date.year=2020 and sales.date.month_name="January"
 and (sales.transactions.currency="INR\r"
 or sales.transactions.currency="USD\r");
 
 ##Show total revenue in year 2020 in Chennai
SELECT SUM(sales.transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date
ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020
and sales.transactions.market_code="Mark001";

SELECT * from sales.transactions where sales_amount=-1;

SELECT * from sales.transactions where sales_amount <=0;

select distinct (sales.transactions.currency) 
From sales.transactions;

 select count(*) from transactions 
 where transactions.currency='INR\r';
 
 select count(*) from transactions 
 where transactions.currency='INR';
 
 select count(*) from transactions 
 where transactions.currency='USD\r' or transactions.currency='USD';
 
 select * from transactions 
 where transactions.currency='USD\r' or transactions.currency='USD';