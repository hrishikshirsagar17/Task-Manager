select employeeNumber, customerNumber
from customers right join employees
on salesRepEmployeeNumber=employeeNumber
order by employeeNumber;

select employeeNumber, customerNumber
from customers right join employees
on salesRepEmployeeNumber=employeeNumber
where customerNumber is null
order by employeeNumber;