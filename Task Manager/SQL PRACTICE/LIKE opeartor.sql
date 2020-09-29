# LIKE with (%)
# employees whose first name starts with 'a'

select employeeNumber, lastName, firstName
from employees
where firstName like 'a%';

#employees whose last name ends with 'on'

select employeeNumber, lastName, firstName
from employees
where lastName like '%on';

#employees whose last names contains 'on'

select employeeNumber, lastName, firstName
from employees
where lastName like'%on%';

#Like with (_)
# epmloyees whose first names start with 'T' and end with 'm' and contains any single character between

select employeeNumber, lastName, firstName
from employees
where firstName like 'T_m';

#Like with NOT operator
# employees whose last names don't start with the character B

select employeeNumber, lastName, firstName
from employees
where lastName not like 'B%';

#Like with ESCAPE clause
# Find products whose product codes contain the string '_20'

select productCode, productName
from products
where productCode like '%\_20%';