/*Provide a query that includes the purchased track name 
AND artist name with each invoice line item.*/

SELECT   l.InvoiceLineId as InvoiceNumber,  
	t.Name as TrackName, 
	a.Name as ArtistName
From InvoiceLine l, track t, album al, artist a
WHERE t.TrackId = l.TrackId
and t.AlbumId = al.AlbumId
and al.ArtistId = a.ArtistId
ORDER BY  l.InvoiceLineId
