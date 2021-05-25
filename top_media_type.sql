SELECT MAX(MostPurchasedMedia),
    MediaTypeName
FROM (SELECT MediaType.Name as MediaTypeName,
    COUNT(InvoiceLine.TrackId) as MostPurchasedMedia
FROM InvoiceLine
JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId
JOIN MediaType
    ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.MediaTypeId)