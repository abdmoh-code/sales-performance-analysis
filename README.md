# Sales Performance Analysis

## Project Overview
This project analyzes retail sales data to evaluate revenue, profit, and overall business growth. 
The objective is to identify key revenue drivers, assess profit margins across products and customer segments, and evaluate whether the business is scaling efficiently.

The analysis is performed first in Excel for exploration and validation, then recreated in SQL for reproducibility and rigorous analysis.

## Tools Used
- Microsoft Excel (Pivot Tables, Charts)
- SQL (SQLite)
- DB Browser for SQLite 
- GitHub (version control and documentation)

## Dataset
- `sales_data.csv` 

The dataset contains transactional sales data including:
- Order date 
- Sales amount 
- Profit 
- Product category 
- Customer segment 

## Key Metrics Analyzed
- Total Sales 
- Total Profit 
- Profit Margin (weighted) 
- Average Profit per Order 

## Key Insights
- **March** shows the highest sales ($2,750) with strong profitability, indicating month-over-month growth. 
- **Technology** products drive the majority of revenue and profit, making them the primary growth engine. 
- The **Corporate** customer segment leads in sales and maintains the highest profit margin, indicating high-quality, scalable revenue. 

> *Note:* Minor differences may exist between Excel pivot table results and SQL outputs due to calculation methodology. SQL uses a weighted profit margin (`SUM(profit) / SUM(sales)`), which more accurately reflects overall business performance than averaging row-level margins.

## Repository Structure
- `sql/` 
  - `sales_analysis.sql`: SQL queries for KPI calculation, monthly performance, product category analysis, customer segment analysis, and month × segment breakdowns 

- `data/` 
  - `sales_data.csv`: Source dataset used for both Excel and SQL analysis 

## Next Steps
- Build an interactive Power BI dashboard using the same dataset 
- Validate metrics across Excel, SQL, and Power BI 
