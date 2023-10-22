# Pizza Sales Analysis Dashboard
This repository showcases an insightful dashboard developed using Power BI. The data source for this dashboard is derived from a dataset that contains detailed information on pizza orders, which includes:

- Basic Information: Order ID, Pizza ID, and associated Pizza Name.
- Order Details: Date and time of order.
- Pizza Details: Size, category, ingredients, unit price, and total price.
- Metrics: Quantity of pizzas ordered.

## Key Data Visualizations & Analysis
- Trends: Monthly and daily trends of pizza sales.
- Category Analysis: Analysis of sales by different pizza categories.
- Rankings:
  - Top and bottom pizzas based on revenue, quantity sold, and total orders.
  - Breakdown of sales percentages by pizza category and size.

## SQL Queries for Data Analysis
A series of SQL queries have been utilized to extract key performance indicators (KPIs) and other metrics from the dataset:

- Revenue Metrics: Total revenue, average order value.
- Order Metrics: Total pizzas sold, total orders, average pizzas per order.
- Category Analysis: Percentage of sales by pizza category and size.
- Ranking Analysis: Top and bottom 5 pizzas based on various metrics.

## Dataset Preview
The dataset, pizza_sales.xlsx, contains the following columns:

- pizza_id: Unique identifier for each pizza in an order.
- order_id: Unique identifier for each order.
- pizza_name_id: Internal name identifier for the pizza.
- quantity: Number of pizzas of a specific type in an order.
- order_date and order_time: Date and time when the order was placed.
- unit_price: Price of a single pizza.
- total_price: Total price for the quantity of a specific pizza in an order.
- pizza_size: Size of the pizza (e.g., Medium, Large).
- pizza_category: Category or type of the pizza (e.g., Classic, Veggie).
- pizza_ingredients: List of ingredients for the pizza.
- pizza_name: Human-readable name of the pizza.

## Getting Started
Clone this repository.
Open the Power BI file to view the dashboard.
The dataset pizza_sales.xlsx is also available for additional analysis or to reproduce the visualizations in other tools.
