SELECT Track.Name as Track,
    Artist.Name as Artist
FROM InvoiceLine
JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId
JOIN Artist
    ON Artist.ArtistId = Album.ArtistId
JOIN Album
    ON Track.AlbumId = Album.AlbumId