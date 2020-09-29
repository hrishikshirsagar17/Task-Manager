# to get the customers who live int USA or France

Select customername, country
from customers
where country='USA' or country='France';

# to get the customers who locate in USA or France and have a credit limit greater than 10000

select customername,country,creditlimit
from customers 
where(country='USA' or country='France') AND creditLimit>100000;

