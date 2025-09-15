-- Retailer mana yang memiliki total penjualan tertinggi setiap tahun? --
-- Menampilkan 5 retailer dengan penjualan tertinggi di tahun 2020/2021 --
SELECT Retailer,
       SUM(Total_Sales) AS Total_Penjualan,
       YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
WHERE YEAR(InvoiceDate) IN (2020)
GROUP BY Tahun, Retailer
ORDER BY Tahun, Total_Penjualan DESC
LIMIT 5;

-- Menampilkan persebaran retailer di berbagai daerah dan negara --
SELECT DISTINCT Retailer, Region, State
FROM adidas_sales;