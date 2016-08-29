/*What are the respective total sales for each of those years?*/

SELECT
	Sum (i.Total) as SalesTotals,
/*Strftime is the functions for date and time and %Y means year*/
	Strftime("%Y", i.InvoiceDate) as InvoiceYear
from Invoice i
where InvoiceYear = "2011" or InvoiceYear = "2009"

group by InvoiceYear
