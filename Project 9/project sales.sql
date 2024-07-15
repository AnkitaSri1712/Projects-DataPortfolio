select * from sales
limit 25;

#Query 1: Total sales and total profit in each year:
select year(str_to_date(Order_Date,'%d-%m-%Y')) as year_analysis,
sum(Sales) as total_sales,
sum(Profit) as total_profit
from sales
group by year_analysis
order by year_analysis asc;

#Query 2 : total sales and total profit per quarter 
select quarter(str_to_date(Order_Date,'%d-%m-%Y')) as quarter,
year(str_to_date(Order_Date,'%d-%m-%Y')) as year_analysis,
sum(Sales) as total_sales,
sum(Profit) as total_profit
from sales
group by year_analysis,quarter 
order by year_analysis,quarter asc;

#Query 3: which region generates highest sales and profits:
select Region,sum(Sales) as total_sales , sum(Profit) as total_profit
from sales
group by region 
Order by total_profit;

#Query 4: profit margin for each region:
select region, round(sum(profit)/sum(sales)*100,2)as profit_margin
from sales
group by region 
Order by profit_margin;

#Query 5: which state brings the highest sales and profits:
select State, sum(Sales) as total_sales, sum(profit) as total_profit,round(sum(profit)/sum(sales)*100,2)as profit_margin
from sales 
group by state 
order by total_profit desc 
limit 10;

#Query 6 : Bottom 10 states in terms of sales and profit
select State, sum(Sales) as total_sales, sum(profit) as total_profit
from sales
group by state 
order by total_profit desc;

#Query 7: The relationship between discount and sales and the total discount per category
select Discount, avg(Sales) as avg_sales
from sales 
group by discount 
order by discount;

#Query 8: Category of products that are most discounted :
select Category, sum(Discount) as total_discount
from sales 
group by category
order by total_discount desc;	

#Query 9:category generates the highest sales and profits in each region and state :
SELECT category, SUM(sales) AS total_sales, SUM(profit) AS total_profit, ROUND(SUM(profit)/SUM(sales)*100, 2) AS profit_margin
FROM sales 
GROUP BY category
ORDER BY total_profit DESC;

#Query 10: highest total sales and total profits per Category in each region:
SELECT region, category, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY region, category
ORDER BY total_profit DESC;

#Query 11: the highest total sales and total profits per Category in each state:
SELECT state, category, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY state, category
ORDER BY total_profit DESC;

#Query 12: the least profitable Category in each state:
SELECT state, category, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY state, category
ORDER BY total_profit ASC;

#Query 13: observe the total sales and total profits of each subcategory with their profit margins:
SELECT subcategory, SUM(sales) AS total_sales, SUM(profit) AS total_profit, ROUND(SUM(profit)/SUM(sales)*100, 2) AS profit_margin
FROM sales
GROUP BY subcategory
ORDER BY total_profit DESC;

#Query 14: the highest total sales and total profits per subcategory in each region:
SELECT region, subcategory, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY region, subcategory
ORDER BY total_profit DESC;

#Query 15: least performing subcategory per region:
SELECT region, subcategory, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY region, subcategory
ORDER BY total_profit ASC;

#Query 16:highest total sales and total profits per subcategory in each state:

SELECT state, subcategory, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY state, subcategory
ORDER BY total_profit DESC;

#Query 17: let's see the lowest sales and profits:
SELECT state, subcategory, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY state, subcategory
ORDER BY total_profit ASC;

#Query 18: What are the names of the products that are the most and least profitable to us?
SELECT  Product_Name , SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY Product_Name
ORDER BY total_profit DESC;

#Query 19:Least profitable products 
SELECT  Product_Name , SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY Product_Name
ORDER BY total_profit ASC;

#Query 20:What segment makes the most of our profits and sales ?
SELECT segment, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY segment
ORDER BY total_profit DESC;

#Query 21:How many customers do we have (unique customer IDs) in total and how much per region and state?
SELECT COUNT(DISTINCT Customer_ID) AS total_customers
FROM sales;

#Query 22: customers per region:
SELECT region, COUNT(DISTINCT customer_id) AS total_customers
FROM sales
GROUP BY region
ORDER BY total_customers DESC;

#Query 23:customer distribution state-wise(descending)
SELECT state, COUNT(DISTINCT customer_id) AS total_customers
FROM sales
GROUP BY state
ORDER BY total_customers DESC;

#Query 24:customers state-wise distribution(ascending)
SELECT state, COUNT(DISTINCT customer_id) AS total_customers
FROM sales
GROUP BY state
ORDER BY total_customers ASC;

#Query 25: total sales and total profit per customer :
SELECT customer_id, 
SUM(sales) AS total_sales,
SUM(profit) AS total_profit
FROM sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 15;

#Query 26:Average shipping time per cclass and in total :
SELECT ROUND(AVG(Ship_Date-Order_Date),1) AS avg_shipping_time
FROM sales;

#Query 27:The shipping time in each shipping mode is:

SELECT ship_mode,ROUND(AVG(ship_date - order_date),1) AS avg_shipping_time
FROM sales
GROUP BY ship_mode
ORDER BY avg_shipping_time;



