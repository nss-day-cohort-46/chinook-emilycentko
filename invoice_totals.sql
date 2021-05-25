SELECT Invoice.Total,
    Customer.FirstName,
    Customer.LastName,
    Customer.Country,
    Employee.FirstName,
    Employee.LastName
FROM Customer
JOIN Invoice
    ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
