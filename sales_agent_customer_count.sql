SELECT Employee.FirstName,
    Employee.LastName,
    COUNT(Customer.SupportRepId)
FROM Employee
JOIN Customer
    ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId