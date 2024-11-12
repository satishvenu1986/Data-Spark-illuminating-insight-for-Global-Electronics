SELECT Gender,count(Gender) as Count FROM dataspark.customer group by gender

SELECT count(*) as CUSTOMER FROM dataspark.customer

SELECT count(*) as Count,Country FROM dataspark.customer group by Country

select count(*),Birthday from dataspark.customer group by  Birthday 

SELECT Continent,Country,State,City,COUNT(CustomerKey) AS customer_count
FROM  dataspark.customer
GROUP BY continent,country,state,city
ORDER BY customer_count DESC

select sum(sales.Quantity) from dataspark.sales
use dataspark
alter table product change Unit Cost USD  unit_cost_usd varchar(50);

select product.Brand,sum(sales.Quantity) from dataspark.sales
join dataspark.product on sales.Productkey=product.Productkey 
group by product.Brand
order by product.Brand DESC

select product.Brand ,sum(sales.Quantity * sales.Unit Price USD) as Total_sales from dataspark.sales
join dataspark.product on sales.Productkey=product.Productkey 
group by product.Brand
order by Total_sales DESC

SELECT SUM(product.Unit_price_usd * sales.Quantity) AS total_sales_amount ,product.Product_name
FROM dataspark.product
JOIN dataspark.sales ON product.ProductKey = sales.ProductKey
group by product.Product_name
order by Total_sales_amount DESC limit 10

SELECT SUM(product.Unit_price_usd * sales.Quantity) AS total_sales_amount ,product.Product_name
FROM dataspark.product
JOIN dataspark.sales ON product.ProductKey = sales.ProductKey
group by product.Product_name
order by Total_sales_amount ASC limit 10

select Product_name,Unit_price_usd from dataspark.product 
order by Unit_price_usd DESC LIMIT 10 

select Product_name,Unit_price_usd from dataspark.product 
order by Unit_price_usd ASC LIMIT 10 

select * from dataspark.exchange

select Category from dataspark.product 
group by Category

select product.Category,sum(sales.Quantity) from dataspark.product
join dataspark.sales on product.Productkey=sales.Productkey 
group by product.Category

select store.state,sum(sales.Quantity) as sales_quantity from dataspark.sales
join dataspark.store on sales.Storekey=store.Storekey
group by store.state
order by sales_quantity desc limit 20






