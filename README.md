# Power BI Performance Optimization using SQL Preprocessing

## Project Overview
This project demonstrates how to optimize a Power BI model by reducing the number of relationships between tables using SQL preprocessing. The dataset used is the Contoso Microsoft Database, and the main goal is to improve report performance by reducing model complexity.

## Data Model Before Optimization
Initially, the Power BI model contained the following tables:

- FactSales
- DimStore
- DimGeography
- DimProduct
- DimCategory
- DimSubcategory
- FactExchangeRate
- DimCurrency

## Optimization Strategy

To reduce the complexity and improve query performance, the following transformations were applied in SQL before loading data into Power BI:
- Join Operations: Merging related tables to reduce relationships in Power BI.
- Column Selection: Selecting only relevant columns from FactSales to decrease dataset size.
- Data Cleaning: Removing unnecessary records and optimizing data types.

## Power BI vs. SQL Optimization

Initially, the same optimization was attempted directly within Power BI using the Merge Queries feature. However, this required multiple merge operations, making the process slow and inefficient. By performing these operations in SQL instead, the dataset became significantly lighter before being loaded into Power BI, leading to much better performance. This project includes both approaches:

- Power BI-Only Approach: Step-by-step explanation of how the merges were performed within Power BI.
- SQL-Based Approach: The preferred method that achieves the same result more efficiently.

## Data Model After Optimization
After applying SQL transformations, the new Power BI model has fewer tables and relationships, leading to improved performance. The modified tables include:
- FactSalesOptimized (Merged with DimStore, DimGeography, and reduced columns)
- DimProductHierarchy (Combining DimProduct, DimCategory, and DimSubcategory)
- FactExchangeRate (Retained for currency conversion)

## SQL Transformations
You can find all SQL scripts used in the SQL-Scripts folder.

## Results & Performance Gains
- Faster Load Times: The reduced dataset size speeds up Power BI report loading.
- Simplified Model: Fewer relationships improve data refresh and maintainability.
- Better Query Performance: Optimized queries result in quicker data retrieva
