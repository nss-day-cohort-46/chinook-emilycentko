SELECT *, COUNT(InvoiceLine.InvoiceId) as NumberOfInvoiceLines
FROM Invoice
INNER JOIN InvoiceLine
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId