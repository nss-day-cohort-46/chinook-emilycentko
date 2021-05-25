SELECT MAX(MostPurchased),
    TrackName
FROM (SELECT Track.Name as TrackName,
    COUNT(InvoiceLine.TrackId) as MostPurchased
FROM InvoiceLine
JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice
    ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE Invoice.InvoiceDate LIKE '%2013%'
GROUP BY Track.TrackId)
