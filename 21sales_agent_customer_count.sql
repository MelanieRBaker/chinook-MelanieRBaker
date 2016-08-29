/*Provide a query that shows the count of customers assigned to each sales agent.*/

SELECT e.EmployeeId as EmployeeID,  e.FirstName,e.LastName, count(c.CustomerId) as CustomerCount
FROM Employee e, Customer c
WHERE e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId
