select * from pizza_sales

-- 1. KPI REQUIREMENT 

-- Total Revenue
SELECT CAST(SUM(total_price) AS DECIMAL(10,2)) AS TOTAL_REVENUE FROM pizza_sales;

-- Average order value
SELECT CAST(SUM(total_price)/COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS AVRG_ORDER_VALUE FROM pizza_sales;

-- Total pizza sold 
SELECT CAST(SUM(quantity) AS DECIMAL(10,2)) AS TOTAL_PIZZA_SOLD FROM pizza_sales;

-- Total orders 
SELECT COUNT(DISTINCT order_id) AS TOTAL_ORDERS FROM pizza_sales;

-- Average pizzas per order
SELECT CAST(SUM(quantity)/COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS AVRG_PIZZAS_PER_ORDER FROM pizza_sales;

-- 5. Percentage of sales by pizza category
SELECT 
    pizza_category, 
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS TOTAL_REVENUE,
    CAST(SUM(total_price)*100/ (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM 
    pizza_sales
GROUP BY 
    pizza_category;

-- 6. Percentage of Sales by Pizza Size
SELECT
    pizza_size,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS TOTAL_REVENUE,
    CAST(SUM(total_price)*100/ (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PSZ
FROM 
    pizza_sales
GROUP BY 
    pizza_size;

-- 7. Total Pizzas Sold by Pizza Category 
SELECT
    pizza_category,
    CAST(SUM(quantity) AS DECIMAL(10,2)) AS TOTAL_QUANTITY_SOLD
FROM 
    pizza_sales 
GROUP BY 
    pizza_category
ORDER BY 
    pizza_category DESC;
	
-- 8. Top 5 Pizzas by Revenue 
SELECT TOP 5
    pizza_name, 
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS TOTAL_REVENUE
FROM 
    pizza_sales
GROUP BY 
    pizza_name
ORDER BY 
    TOTAL_REVENUE DESC;


-- 9. Bottom 5 Pizzas by Revenue 
SELECT TOP 5
    pizza_name, 
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS TOTAL_REVENUE
FROM 
    pizza_sales
GROUP BY 
    pizza_name
ORDER BY 
    TOTAL_REVENUE ASC;


-- 10. Top 5 Pizzas by Quantity 
SELECT TOP 5
    pizza_name, 
    CAST(SUM(quantity) AS DECIMAL(10,2)) AS TOTAL_QUANTITY
FROM 
    pizza_sales
GROUP BY 
    pizza_name
ORDER BY 
    TOTAL_QUANTITY DESC;


-- 11. Bottom 5 Pizzas by Quantity 
SELECT TOP 5
    pizza_name, 
    CAST(SUM(quantity) AS DECIMAL(10,2)) AS TOTAL_QUANTITY
FROM 
    pizza_sales
GROUP BY 
    pizza_name
ORDER BY 
    TOTAL_QUANTITY ASC;


-- 12. Top 5 Pizzas by Total Orders 
SELECT TOP 5
    pizza_name, 
    COUNT(DISTINCT order_id) AS TOTAL_ORDERS
FROM 
    pizza_sales
GROUP BY 
    pizza_name
ORDER BY 
    TOTAL_ORDERS DESC;

-- 13. Bottom 5 Pizzas by Total Orders 
SELECT TOP 5
    pizza_name, 
    COUNT(DISTINCT order_id) AS TOTAL_ORDERS
FROM 
    pizza_sales
GROUP BY 
    pizza_name
ORDER BY 
    TOTAL_ORDERS ASC;
