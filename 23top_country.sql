/*Which country's customers spent the most?*/

SELECT MAX(Total.TotalSpent) as TopSales, Country
FROM (SELECT i.BillingCountry as Country, SUM(i.Total) AS TotalSpent
FROM Invoice i GROUP BY Country ORDER BY TotalSpent DESC) AS Total;