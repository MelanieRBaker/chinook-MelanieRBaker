/*Provide a query that shows all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre.*/

SELECT t.Name, a.Title, mt.Name, g.Name
FROM Track t, Album a, MediaType mt, Genre g
WHERE t.AlbumId = a.AlbumId
and t.MediaTypeId = mt.MediaTypeId
and t.GenreId = g.GenreId
GROUP BY a.Title, t.Name