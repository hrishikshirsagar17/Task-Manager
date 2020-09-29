select customers.customerNumber, customerName, orderNumber, status
from customers left join orders
on customers.customerNumber=orders.customerNumber;

#ALternatively

select c.customerNumber, customerName, orderNumber, status
from customers c left join orders o
on c.customerNumber=o.customerNumber;

#To find customers who have no order:

select c.customerNumber, c.customerName, o.orderNumber, o.status
from customers c left join orders o
on c.customerNumber=o.customerNumber
where orderNumber is null;

#LEFT JOIN to join three tables

SELECT lastName, firstName, customerName, checkNumber, amount
    
from employees left join customers on employeeNumber=salesRepEmployeeNumber
			   left join payments on payments.customerNumber=customers.customerNumber
		
order by customerName, checkNumber;

#Condition in WHERE clause vs. ON clause


select o.orderNumber, customerNumber, productCode
from orders o left join orderdetails using(orderNumber)
where orderNumber=10123;

select o.orderNumber, customerNumber, productCode
from orders o left join orderdetails od
on o.orderNumber = od.orderNumber
and o.orderNumber=10123;