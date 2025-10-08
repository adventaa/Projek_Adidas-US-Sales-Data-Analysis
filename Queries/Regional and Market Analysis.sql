-- Region/State/City mana yang menjadi pasar terbesar Adidas di setiap tahun? --
SELECT State, Region, City,
       SUM(Total_Sales) AS Total_Sales,
       YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
-- WHERE YEAR(InvoiceDate) IN (2020)
GROUP BY Tahun, State, Region, City
ORDER BY Tahun, Total_Sales DESC;

SELECT Region,
       SUM(Total_Sales) AS Total_Sales,
       YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
-- WHERE YEAR(InvoiceDate) IN (2020)
GROUP BY Tahun, Region
ORDER BY Tahun, Total_Sales DESC;

SELECT State,
       SUM(Total_Sales) AS Total_Sales,
       YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
-- WHERE YEAR(InvoiceDate) IN (2020)
GROUP BY Tahun, State
ORDER BY Tahun, Total_Sales DESC;

SELECT City,
       SUM(Total_Sales) AS Total_Sales,
       YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
-- WHERE YEAR(InvoiceDate) IN (2020)
GROUP BY Tahun, City 
ORDER BY Tahun, Total_Sales DESC;
