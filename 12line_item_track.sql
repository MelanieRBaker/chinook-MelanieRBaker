/*Provide a query that includes the purchased track name 
with each invoice line item.*/

SELECT   l.InvoiceLineId,  t.Name
From InvoiceLine l, track t
WHERE t.TrackId = l.TrackId
ORDER BY l.invoiceId 
 