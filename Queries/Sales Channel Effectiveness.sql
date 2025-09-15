-- Mana yang lebih efektif: Outlet, In-store, atau Online? --
SELECT 
    Sales_Method,
    SUM(Total_Sales) AS Total_Penjualan,
    SUM(Operating_Profit) AS Total_Profit,
    YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
GROUP BY Tahun, Sales_Method
ORDER BY Tahun, Total_Penjualan DESC;