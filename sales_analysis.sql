USE sales;

SELECT  *  FROM sales.transactions WHERE market_code= 'Mark001';

# Fiund teh Record contained USD
SELECT * FROM sales.transactions WHERE currency = 'USD';

# Inenr Join The Date Table With Sales Table
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON 	sales.transactions.order_date = sales.date.date;

# Find The Sales In 2020
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON 	sales.transactions.order_date = sales.date.date WHERE sales.date.year=2020;

# Sum Of Sales_amounts In 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON 	sales.transactions.order_date = sales.date.date WHERE sales.date.year=2020;

# Saales In Chanai(Mark001) In The Year Of 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON 	sales.transactions.order_date = sales.date.date 
WHERE sales.date.year=2020 AND sales.transactions.market_code = 'Mark001';

#Find the Duplicate Transictionm
SELECT DISTINCT transactions.currency FROM transactions;
'INR'
'INR\r'

# Totle Duplicate Transiction (INR)
SELECT count(*) FROM transactions WHERE  transactions.currency = 'INR\r'
SELECT count(*) FROM transactions WHERE  transactions.currency = 'INR'

# Totle Duplicate Transiction (USD)
SELECT count(*) FROM transactions WHERE  transactions.currency = 'USD\r'
 
