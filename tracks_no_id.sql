SELECT Track.Name AS Track, Album.Title AS Album, MediaType.Name AS MediaType, Genre.Name AS Genre
FROM Track
INNER JOIN Album
    ON Track.AlbumId = Album.AlbumId
INNER JOIN MediaType
    ON MediaType.MediaTypeId = Track.MediaTypeId
INNER JOIN Genre 
    ON Genre.GenreId = Track.GenreId