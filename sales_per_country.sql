SELECT BillingCountry, SUM(Total)
FROM Invoice
GROUP BY BillingCountry