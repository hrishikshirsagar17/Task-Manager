# To find customers who locate in california(CA), USA

select customername,country,state
from customers
where country='USA' and state='CA';

# To find customers who locate in california(CA), USA and have the credit limit greater than 100k

select customername,country,state,creditLimit
from customers
where country='USA' and state='CA' and creditLimit>10000;

