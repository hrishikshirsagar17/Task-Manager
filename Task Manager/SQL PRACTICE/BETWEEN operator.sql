# TO find product whose price is in between 90$ to 100$

select *
from products
where buyPrice between 90 and 100;

# TO find product whose price is not in between 20$ to 100$

select * 
from products
where buyPrice not between 20 and 100;

# Orders which are having the dates between 01/01/2003 to 01/31/2003

select orderNumber, requiredDate, status
from orders
where requiredDate between
cast('2003-01-01' as date) and
cast('2003-01-31' as date);


