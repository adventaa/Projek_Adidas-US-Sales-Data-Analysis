-- Faktor apa yang paling berkontribusi terhadap profit tertinggi? --
SELECT 
    Product, Retailer, Region,
    SUM(Operating_Profit) AS Total_Profit,
    YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
GROUP BY Tahun, Product
ORDER BY Tahun, Total_Profit DESC;

SELECT 
    SUM(Operating_Profit) AS Total_Profit,
    YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
GROUP BY Tahun
ORDER BY Tahun, Total_Profit DESC;

SELECT 
    Product,
    SUM(Operating_Profit) AS Total_Profit,
    YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
GROUP BY Tahun, Product
ORDER BY Tahun, Total_Profit DESC;

SELECT 
    Retailer,
    SUM(Operating_Profit) AS Total_Profit,
    YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
GROUP BY Tahun, Retailer
ORDER BY Tahun, Total_Profit DESC;

SELECT 
    Region,
    SUM(Operating_Profit) AS Total_Profit,
    YEAR(InvoiceDate) AS Tahun
FROM adidas_sales
GROUP BY Tahun, Region
ORDER BY Tahun, Total_Profit DESC;
