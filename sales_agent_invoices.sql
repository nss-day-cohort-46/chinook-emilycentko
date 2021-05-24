SELECT * FROM Invoice
JOIN Customer
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.FirstName, Employee.LastName 
