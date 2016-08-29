/*Provide a query only showing the Customers from Brazil.*/

select c.*
from Customer c
where Country = 'Brazil'