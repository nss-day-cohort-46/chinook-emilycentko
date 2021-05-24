SELECT Track.Name, Artist.Name
FROM Track
INNER JOIN Artist
INNER JOIN InvoiceLine
ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Album
ON Artist.ArtistId = Album.ArtistId