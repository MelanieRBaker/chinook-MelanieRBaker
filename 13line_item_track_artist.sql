/*Provide a query that includes the purchased track name 
AND artist name with each invoice line item.*/

SELECT   l.InvoiceLineId,  t.Name, a.Name
From InvoiceLine l, track t, artist a
WHERE t.TrackId = l.TrackId
ORDER BY  a.Name
