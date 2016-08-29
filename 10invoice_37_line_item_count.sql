/*Looking at the InvoiceLine table, provide a query that 
COUNTs the number of line items for Invoice ID 37.*/


SELECT 
count (i.InvoiceLineId) 
FROM InvoiceLine as i
WHERE i.InvoiceId = 37

