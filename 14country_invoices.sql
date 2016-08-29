/*Provide a query that shows the # of invoices per country*/


SELECT i.BillingCountry, count(i.BillingCountry) as Invoice
FROM Invoice as i
GROUP BY i.BillingCountry