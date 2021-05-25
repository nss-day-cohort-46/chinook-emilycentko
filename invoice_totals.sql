SELECT Invoice.Total,
    Customer.FirstName,
    Customer.LastName,
    Invoice.BillingCountry,
    Employee.FirstName,
    Employee.LastName
FROM Invoice
JOIN Employee
JOIN Customer
    ON Customer.SupportRepId = Employee.EmployeeId
