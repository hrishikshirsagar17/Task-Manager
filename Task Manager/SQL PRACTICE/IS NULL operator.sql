# To find customers who does not have a sales representative 

select customerName, country, salesrepemployeenumber
from customers
where salesrepemployeenumber is null
order by customerName;

# To find customers who have a sales representative

select customerName, country, salesrepemployeenumber
from customers
where salesRepEmployeeNumber is not null
order by customerNumber;

create table if not exists projects
(
	id int auto_increment,
    title varchar(255),
    begin_date date not null,
    complete_date date not null,
    primary key(id)

);

insert into projects (title, begin_date, complete_date)
values ('New CRM','2020-01-01','0000-00-00'),
	('ERP Future','2020-01-01','0000-00-00'),
			('VR','2020-01-01','2030-01-01');
            
# If a DATE or DATETIME column has a NOT NULL constraint and contains a special date '0000-00-00', you can use the IS NULL operator to find such rows.

select * 
from projects
where complete_date is null;

