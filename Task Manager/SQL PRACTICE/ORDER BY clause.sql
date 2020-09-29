use classicmodels;

#To sort values in one column by ascending order

SELECT contactLastname, contactFirstname
FROM customers
ORDER BY contactLastName;

#To sort values in one column by descending order

SELECT contactLastname, contactFirstname
FROM customers
ORDER BY contactLastName DESC;

#To sort values in multiple columns

SELECT contactLastname, contactFirstname
FROM customers
ORDER BY contactLastName DESC, contactFirstName ASC;

#TO sort result set based on subtotal

SELECT orderNumber, orderlinenumber, quantityOrdered*priceEach AS subtotal
FROM orderdetails
ORDER BY subtotal DESC;

#To sort the data using custom list

SELECT orderNumber, status
FROM orders
ORDER BY
FIELD(
	status,
    'In Process',
    'On Hold',
    'Cancelled',
    'Resolved',
    'Disputed',
    'Shipped'
);

