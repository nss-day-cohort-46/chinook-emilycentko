SELECT MAX(TotalSales2009),
    EmployeeFirstName,
    EmployeeLastName
FROM (SELECT SUM(Invoice.Total) as TotalSales2009,
    Employee.FirstName as EmployeeFirstName,
    Employee.LastName as EmployeeLastName
FROM Employee
JOIN Customer
    ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
    ON Invoice.CustomerId = Customer.CustomerId
WHERE Invoice.InvoiceDate LIKE '%2009%'
GROUP BY Employee.EmployeeId)