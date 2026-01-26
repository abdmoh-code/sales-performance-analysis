-- ############################################################
-- Query 1: Overall KPIs
-- Description: Calculate total sales, total profit, overall profit margin,
-- and average profit per order for the entire dataset.
-- ############################################################
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit)*100.0 / SUM(sales), 2) AS overall_profit_margin_percent,
    ROUND(SUM(profit) * 1.0 / COUNT(*), 2) AS avg_profit_per_order
FROM sales_data;

-- ############################################################
-- Query 2: Monthly Performance
-- Description: Summarize total sales, total profit, and weighted profit margin by month.
-- Useful to track growth and identify top-performing months.
-- ############################################################
SELECT
    order_month,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) * 100.0 / SUM(sales), 2) AS profit_margin_percent
FROM sales_data
GROUP BY order_month
ORDER BY order_month;

-- ############################################################
-- Query 3: Product Category Performance
-- Description: Summarize total sales, total profit, and weighted profit margin by product category.
-- Helps identify which products drive most revenue and profit.
-- ############################################################
SELECT
    product_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) * 100.0 / SUM(sales), 2) AS profit_margin_percent
FROM sales_data
GROUP BY product_category
ORDER BY total_sales DESC;

-- ############################################################
-- Query 4: Customer Segment Performance
-- Description: Summarize total sales, total profit, and weighted profit margin by customer segment.
-- Useful to understand which segments contribute most to revenue and profitability.
-- ############################################################
SELECT
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) * 100.0 / SUM(sales), 2) AS profit_margin_percent
FROM sales_data
GROUP BY segment
ORDER BY total_sales DESC;

-- ############################################################
-- Query 5: Month × Segment Performance
-- Description: Shows total sales, total profit, and weighted profit margin by month and segment.
-- Helps track which segments drive growth each month and assess margin stability.
-- ############################################################
SELECT
    order_month,
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) * 100.0 / SUM(sales), 2) AS profit_margin_percent
FROM sales_data
GROUP BY order_month, segment
ORDER BY order_month, total_sales DESC;
