# To display unique last names of employees

select distinct lastname
from employees
order by lastname;

select distinct state
from customers;

# distinct with multiple columns

select distinct state,city
from customers
where state is not null
order by state,city;

# distinct with aggregate functions

select count(distinct state)
from customers
where country = 'USA';

#distinct with limit clause

select distinct state
from customers
where state is not null
limit 5;