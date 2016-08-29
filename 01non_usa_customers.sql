/*Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.*/

select c.*
from Customer c
where c.Country != 'USA'
ORDER BY c.Country DESC;