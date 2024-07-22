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

#Query 7:

