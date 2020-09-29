#Self Join using inner join 

select concat(m.lastName, ',', m.firstName) As Manager,
	   concat(e.lastName, ',', e.firstName) As 'Direct Report'
from employees e inner join employees m
on m.employeeNumber=e.reportsTo
order by Manager;


#self join using left join

select ifnull(concat(m.lastName,',',m.firstName),'Top Manager') As 'Manager',
		      concat(e.lastName,',',e.firstName) As 'Direct Report'
from employees e left join employees m
on m.employeeNumber=e.reportsTo
order by manager desc;

#List Of Customers Who Locate In the Same City

select c1.city,c1.customerName,c2.customerName
from customers c1 inner join customers c2
on c1.city=c2.city and c1.customerName>c2.customerName
order by c1.city;
