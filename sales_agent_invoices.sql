SELECT * FROM Invoice
JOIN Customer
JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.FirstName, Employee.LastName 


SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId, Invoice.CustomerId, Invoice.InvoiceDate
FROM Customer
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
On Customer.CustomerId = Invoice.CustomerId
ORDER BY Employee.LastName ASC
