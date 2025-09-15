-- Bagaimana penjualan produk dari tahun 2020 ke 2021? --
-- Menampilkan total penjualan per tahun --
SELECT YEAR(InvoiceDate) AS Tahun,
       SUM(Total_Sales) AS Total_Penjualan
FROM adidas_sales
GROUP BY YEAR(InvoiceDate)
ORDER BY Tahun;