/*Provide a query that shows the top 3 best selling artists*/

SELECT a.ArtistId, a.Name, count(il.TrackId) as TracksSold
FROM InvoiceLine il, Track t, Artist a, Album am
WHERE il.TrackId = t.TrackId
and t.AlbumId = am.AlbumId
and am.ArtistId = a.ArtistId
GROUP BY a.ArtistId
ORDER BY TracksSold DESC limit 3