SELECT MAX(TotalSales),
    EmployeeFirstName,
    EmployeeLastName
FROM (SELECT SUM(Invoice.Total) as TotalSales,
    Employee.FirstName as EmployeeFirstName,
    Employee.LastName as EmployeeLastName
FROM Employee
JOIN Customer
    ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
    ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Employee.EmployeeId)