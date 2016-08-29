/*Which sales agent made the most in sales over all?*/

SELECT
	max(Sales.TotalSales) as TopSalesOverAll, Sales.EmployeeName
FROM
	(SELECT
		round(sum(i.Total)) TotalSales,
		e.FirstName || "  " || e.LastName as EmployeeName,
		strftime("%Y", i.InvoiceDate) AS InvoiceYear
	FROM Invoice i, Employee e, Customer c
	WHERE i.CustomerId = c.CustomerId
	AND c.SupportRepId = e.EmployeeId
	GROUP BY EmployeeName
	ORDER BY TotalSales DESC) AS Sales;