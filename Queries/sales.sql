create database sales;

use sales;

-- Membuat tabel sesuai dengan nama kolom dalam data --
CREATE TABLE adidas_sales (
    Retailer VARCHAR(255),
    RetailerID INT,
    InvoiceDate DATE,
    Region VARCHAR(255),
    State VARCHAR(255),
    City VARCHAR(255),
    Product VARCHAR(255),
    Price_per_Unit DOUBLE,
    Units_Sold INT,
    Total_Sales DOUBLE,
    Operating_Profit DOUBLE,
    Sales_Method VARCHAR(255)
);

-- Memasukkan data csv ke dalam database --
load data infile 'Adidas Sales (2020-2021).csv' 
INTO TABLE adidas_sales
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(Retailer, RetailerID, InvoiceDate, Region, State, City, Product, Price_per_Unit, Units_Sold, Total_Sales, Operating_Profit, Sales_Method);

-- Melihat semua isi dari tabel --
select * from adidas_sales;
 









