/*Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.*/

select
		e. FirstName || ' ' || e. LastName as EmployeeName,
		i. InvoiceId,
		i. InvoiceDate,
		i. BillingCountry,
		i. Total
from Invoice i , Customer c, Employee e
where i. CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
order by EmployeeName, i.BillingCountry, i.Total desc