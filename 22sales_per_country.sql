/*Provide a query that shows the total sales per country.*/

SELECT sum(i.Total) as TotalSales, i.BillingCountry as Country
from Invoice i
group by i.BillingCountry
order by TotalSales desc