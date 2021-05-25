SELECT Employee.FirstName,
    Employee.LastName,
SUM(Invoice.Total) as TotalSalesPerRep
FROM Employee
JOIN Customer
    ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
    ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Employee.EmployeeId