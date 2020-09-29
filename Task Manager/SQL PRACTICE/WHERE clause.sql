# To find all the employees whose job title is 'Sales Representative'

select *
from employees
where jobtitle = 'Sales Rep';  

# To find all the employees whose job title is 'Sales Representative' and office codes are 1
# WHERE clause with AND operator
select * 
from employees
where jobTitle = 'Sales Rep' and officeCode = 1;

# To find all the employees whose job title is 'Sales Representative' or office codes are 1
# WHERE clause with OR operator

select *
from employees
where jobTitle = 'Sales Rep' or officeCode = 1;

# TO find employees who locate in offices whose office code is from 1 to 3
#WHERE clause with BETWEEN operator

select *
from employees
where officeCode between 1 and 3;

# To find all the employees whose last name end with the string 'son'
#WHERE with LIKE operator

select *
from employees
where lastName like '%son'
order by firstName;

# To find employees who locate in the office with office code 1
# WHERE with IN operator

select *
from employees
where officeCode in (1,2,3)
order by officeCode; 


# To find all records whose report value is null
# WHERE with IS NULL

select * 
from employees
where reportsTo is null;

#WHERE clause with comparison operators
# To find all the employees who are not 'sales rep'

select *
from employees
where jobTitle <> 'Sales Rep';

# employees whose office code is greater than 5

select *
from employees
where officeCode > 5;

#employees with office code less than or equal to 4

select * 
from employees
where officeCode <=4;