SELECT InvoiceLineId,
    Track.Name
FROM Track
JOIN InvoiceLine
    ON Track.TrackId = InvoiceLine.TrackId