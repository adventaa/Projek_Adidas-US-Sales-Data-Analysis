-- Produk mana yang paling banyak terjual (Units Sold) dan menghasilkan revenue (Total Sales) tertinggi di setiap tahun nya? --
SELECT Product,
       SUM(Units_Sold) AS Total_Unit,
       SUM(Total_Sales) AS Total_Sales,
       YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
-- WHERE YEAR(InvoiceDate) IN (2020)
GROUP BY Tahun, Product
ORDER BY Tahun, Total_Unit, Total_Sales DESC;