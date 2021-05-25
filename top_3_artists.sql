SELECT Artist.Name,
    COUNT(InvoiceLine.TrackId) as ArtistTracks
FROM InvoiceLine
JOIN Track
    ON InvoiceLine.TrackId = Track.TrackId
JOIN Album
    ON Album.AlbumId = Track.AlbumId
JOIN Artist
    ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist.ArtistId
ORDER BY ArtistTracks DESC
LIMIT 3