# To find the offices that locate in the USA and France

select officeCode,city,phone,country
from offices
where country in('USA','France');

# To find the offices that do not locate in USA and France

select officeCode,city,phone,country
from offices
where country not in('USA','France');

# To find the orders whose total values are greater than 60,000

select orderNumber,customerNumber,status,shippedDate
from orders
where orderNumber in
(
	select orderNumber
	from orderdetails
	group by orderNumber
	having sum(quantityOrdered*priceEach)>60000
);
