# Power BI Performance Optimization using SQL Preprocessing

## Project Overview
This project demonstrates how to optimize a Power BI model by reducing the number of relationships between tables using SQL preprocessing. The dataset used is the Contoso Microsoft Database, and the main goal is to improve report performance by reducing model complexity.
![github_PowerBIOptimization](https://github.com/user-attachments/assets/94c3db33-1129-49dc-9b54-55b7b68149e9)

## Data Model Before Optimization
Initially, the Power BI model contained the following tables:

- FactSales
- FactExchangeRate
- DimPromotion
- DimStore
- DimGeography
- DimProduct
- DimProductCategory
- DimProductSubcategory
- DimCurrency

## Optimization Strategy

To reduce the complexity and improve query performance, the following transformations were applied in SQL before loading data into Power BI:
- Join Operations: Merging related tables to reduce relationships in Power BI.
- Column Selection: Selecting only relevant columns from FactSales to decrease dataset size.

## Power BI vs. SQL Optimization

Initially, the same optimization was attempted directly within Power BI using the Merge Queries feature. However, this required multiple merge operations, making the process slow and inefficient. By performing these operations in SQL instead, the dataset became significantly lighter before being loaded into Power BI, leading to much better performance. This project includes both approaches:

- Power BI-Only Approach: Explanation of how the merges were performed within Power BI.
- SQL-Based Approach: The preferred method that achieves the same result more efficiently.

## Data Model After Optimization
After applying SQL transformations, the new Power BI model has fewer tables and relationships, leading to improved performance. The modified tables include:
- FactSales (Reduction of columns and adjustment of date data)
- DimProduct (Combining DimProduct, DimProductCategory, and DimProductSubcategory)
- FactExchangeRate (Combining DimCurrency and adjustment of date data)
- DimStore (Combining DimGeography)
- DimPromotion (Deleted because it has the same information in the FacSales table in the DiscountAmount column)

## SQL Transformations
You can find all SQL scripts used in the SQL_Scripts folder.

## Results & Performance Gains
- Faster Load Times: The reduced dataset size speeds up Power BI report loading.
- Simplified Model: Fewer relationships improve data refresh and maintainability.
- Better Query Performance: Optimized queries result in quicker data retrieva
