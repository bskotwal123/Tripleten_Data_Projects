# Storytelling with Data: Project

## Overview
Welcome to the Storytelling with Data: Project! This project evaluates the operations of a retail superstore to identify opportunities to understand what is causing customers to return their orders and how to reduce the volume of returned orders. This project uses the provided dataset (`Superstore.xls`) to answer specific business questions through interactive and insightful visualizations.

## Datasets
- **Superstore.xls**: Contains data on orders, returns, and customer information for analysis.

## Project Parts

### Part 1: root causes for returned orders.
Objective: Identify some root causes for returned orders.

1. A scatterplot showing the correlation between total sales and total returns
2. A bar chart showing the return rate by product category
3. The return rate by customer
4. A map showing the return rate by some geographic measure
5. The return rate by some measure of time
6. Composite charts showing the return rate for a mix of multiple factors (date/geography/product-category/etc.)

---

### Part 2: Building a Dashboard for Monitoring Returns
Objective: Low-fidelity mock-up for dashboards.

1. Made 3 variations of pen-and-paper sketches dashboards.
2. Create a template for the dashboard using empty containers to match my 1st(Grid-based layout) mock-ups.
3. Add created worksheets to the dashboard template.
---

### Part 3: Presenting Analysis and Dashboard
Objective: Construct a story arc for your presentation

1. A summary of my analysis of returns
2. An overview of each component of my Dashboard
3. Add content to your Story Points
---

## Tableau Public Link
[View the Superstore Visualizations on Tableau Public]https://public.tableau.com/views/Sprint5_17339672423080/TotalSalesReturns?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## Instructions for Reviewers
- All visualizations and analyses are interactive and accessible via the Tableau Public dashboard link.
- The project is structured into individual visualizations for each business question, with conclusions based on data insights.

## Notes
- The `Returns` table was LEFT JOINed with the `Orders` table to calculate return rates. Null values in the `Returned` field were replaced with 0, and "Yes" values with 1 for analysis.
- The calculated field was used in visualizations to analyze return trends.


