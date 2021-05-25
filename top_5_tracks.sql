SELECT Track.Name,
    COUNT(*) as TimesPurchased
FROM Track
JOIN InvoiceLine
    ON InvoiceLine.TrackId = Track.TrackId
GROUP BY InvoiceLine.TrackId
ORDER BY TimesPurchased DESC
LIMIT 5