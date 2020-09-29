#The productCode and productName from the products table.The textDescription of product lines from the productlines table.

select productCode, productName, textDescription
from products t1 inner join productlines t2
on t1.productLine=t2.productLine;

# order number, order status and total sales from the orders and orderdetails

select t1.orderNumber, status, sum(quantityOrdered*priceEach) as 'total'
from orders as t1 inner join orderdetails as t2
on t1.orderNumber=t2.orderNumber
group by orderNumber;

#INNER JOIN clauses to join three tables: 

select orderNumber,
    orderDate,
    orderLineNumber,
    productName,
    quantityOrdered,
    priceEach
from orders inner join orderdetails using(orderNumber)
inner join products using(productCode)
order by orderNumber,orderLineNumber;

#INNER JOIN – join four tables example

SELECT 
    orderNumber,
    orderDate,
    customerName,
    orderLineNumber,
    productName,
    quantityOrdered,
    priceEach
    
from orders inner join orderdetails using (orderNumber)
			inner join products using(productCode)
            inner join customers using(customerNumber)
            
order by orderNumber, orderLineNumber;

#To find sales price of the product whose code is S10_1678 that is less than the manufacturer’s suggested retail price (MSRP) for that product.

select orderNumber, productName, msrp, priceEach
from products p inner join orderdetails o
on p.productCode=o.productCode
and p.msrp>o.priceEach
where p.productCode='S10_1678';

