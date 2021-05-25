SELECT MAX(TotalSales), 
    Country
FROM (SELECT SUM(Invoice.Total) as TotalSales,
    Invoice.BillingCountry as Country
FROM Invoice
GROUP BY BillingCountry
ORDER BY Invoice.Total DESC)