select * from supplier1;
select * from Item1;
# Simple Inner Join

# It Can be done without using join keywoard as well.
#Display Item details along with their supplier details.
select itemid,itemname,itemcost,supname,supmobile from Item1,supplier1
where Item1.supid = supplier1.supid;

#Using table alias
select i.itemid, i.itemname, i.itemcost, i.supid, s.supid, s.supname, s.supmobile
from item1 i,supplier1 s
where i.supid = s.supid;

#Using Inner Join Keywoard.
# 1 display Item Details along with their supplier Details.
select i.itemid, i.itemname, i.itemcost, i.supid, s.supid, s.supname, s.supmobile
from item1 i inner join supplier1 s
on i.supid = s.supid;

#2 fetch supplier name, mobile no and item details which has been supplied by supplier Mr.A.
select i.itemid, i.itemname, i.itemcost, s.supname, s.supmobile
from item1 i inner join supplier1 s
on i.supid = s.supid and supname like "Mr.A";

#Non Equi Join
#1 Using Non Equi Join, display Item Details along with their supplier details
select i.itemid, i.itemname, i.itemcost, i.supid, s.supid, s.supname, s.supmobile
from item1 i inner join supplier1 s
on i.supid <= s.supid;


select * from item1;
select * from supplier1;

#left Outer Join

select i.itemid, i.itemname, i.itemcost, s.supname, s.supmobile
from item1 i left outer join supplier1 s
on i.supid=s.supid;


use payroll;

Select empname from employee natural join department
where employee.deptid = department.deptID;

select empname from employee,department
where employee.deptid = department.deptID;

#right outer join

select i.itemid, i.itemname, i.itemcost, i.supid, s.supid, s.supname, s.supmobile
from item1 i right outer join supplier1 s
on i.supid=s.supid;

#Full Outer Join 

select i.itemid, i.itemname, s.supname, s.supmobile
from item1 i left outer join supplier1 s
on i.supid = s.supid
union
select i.itemid, i.itemname, s.supname, s.supmobile
from item1 i right outer join supplier1 s
on i.supid = s.supid;

#Natural Join

select * from item1 natural join supplier1;

#Equi Join
select * from item1 i inner join supplier1 s
on i.supid = s.supid;

#Self Join
#Display Employee and his/her boss name
select e1.empname as "Employee" , e2.empname as "Boss"
from employeetable e1 join employeetable e2
on e1.supervisorid = e2.empid
and e1.empname like "Rahul";

#cross join
select * from item1 cross join supplier1;

create table product
(
	pid int primary key,
    pname varchar(20),
    expectedprod int
);
insert into product values(1234,"Car",2000),(1235,"JCB",100),(1236,"Cycle",50);
select * from product;

create table RawMaterial
(
	id int,
    mname varchar(20),
    qtyinstock int
);

insert into RawMaterial values (1,"screws",100000),(2,"chasee",500),(3,"Battery",1500);
select * from rawmaterial;

select * from product cross join rawmaterial;