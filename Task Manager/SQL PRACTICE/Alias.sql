# selects the first names and last names of employees. It uses the CONCAT_WS() function to concatenate first name and last name into full name.

select concat_ws(',', lastName, firstname)
from employees;

select concat_ws(',', lastName, firstname) As 'Full Name'
from employees;

select concat_ws(',', firstname, lastName) As 'Full Name'
from employees;


select concat_ws(',', firstname, lastName) As 'Full Name'
from employees
order by 'Full Name';

# selects the orders whose total amount are greater than 60000. It uses column aliases in GROUP BY and HAVING clauses.

select orderNumber as 'Order No.', sum(priceEach*quantityOrdered) as 'total'
from orderdetails
group by 'Order No.'
having total >60000;

select * from employees e;

select e.firstName, e.lastName
from employees e
order by e.firstName;

select 
	customerName, 
	count(o.orderNumber) total
from customers c
inner join orders o On c.customerName = o.customerNumber
group by customerName
order by total desc;

SELECT
	customers.customerName,
	COUNT(orders.orderNumber) total
FROM
	customers
INNER JOIN orders ON customers.customerNumber = orders.customerNumber
GROUP BY
	customerName
ORDER BY
	total DESC;


