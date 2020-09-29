# To get the top 5 customers who have highest credit

select customerNumber, customerName, creditLimit
from customers
order by creditLimit desc
limit 5;

# To get the 5 customers who have the lowest credit

select customerNumber, customerName, creditLimit
from customers
order by creditLimit
limit 5;

select customerNumber, customerName, creditLimit
from customers
order by creditLimit, customerNumber
limit 5;
