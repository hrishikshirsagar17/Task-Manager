use payroll;
create table item1
(
	itemid int primary key,
    itemname varchar(20),
    itemcost float,
    supid int,
    constraint frk1 foreign key(supid) references supplier1(supid)
);

create table supplier1
(
	supid int primary key,
    supname varchar(20),
    supmobile varchar (10)
);

desc supplier1;
desc item1;

insert into item1 values(3051,"White Board",2000,null),(3052,"Drawing Book",150,null),
						(3010,"Pencil",10,904),(3112,"Pen",80,904),(3013,"Maps",30,910);
                        
insert into supplier1 values(904,"Mr.A",7709932562),(910,"Mr.B",7709932563),
							(901,"Mr.C",7709932564),(905,"Mr.D",7709932565);
    
select * from supplier1;
select * from item1;

#subquery with =,>,<,<=,>=,<> clause

select supid from supplier1 where supname like "Mr.A";

#1 show total no of items supplied by supplier with name "Mr.A"

select count(*) as "Total No Of Items" ,supid from Item1
where supid =(select supid from supplier1 where supname like "Mr.A");

#2 show itemid and itemname supplied by supplier with name "Mr.A"

select itemid,itemname, supid from Item1
where supid=(select supid from supplier1 where supname like "Mr.A");

#3 show itemid and itemname supplied by supplier whose supid is greater than
#supid of supplier with name "Mr.A"

select itemid,itemname,supid from Item1
where supid >(select supid from supplier1 where supname like "Mr.A");

#subquery with in,<Any,<All,>Any,>All clause
select supid from supplier1 where supname in("Mr.A","Mr.B");

#1 show all item details whose supid is either matching with supid of Mr.A or Mr.B
select * from Item1 where supid in(select supid from supplier1
									where supname in("Mr.A","Mr.B"));
                                    
#2 show item details whose supid is greater than either supid of Mr.A or supid of Mr.B
select * from Item1 where supid >Any(select supid from supplier1
									where supname in("Mr.A","Mr.B"));
                                    
#3 show item details whose supid is less than all supid of Mr.B and Mr.D
select * from Item1 where supid <All(select supid from supplier1
									where supname in("Mr.B","Mr.D"));
                                    
select * from Item1;

create table item2
(
	itemid int primary key,
    itemname varchar(20),
    itemcost float,
    supid int,
    constraint frk2 foreign key(supid) references supplier1(supid)
);
#subquery in insert clause
insert into item2(select * from item1);
select * from item2;

#subquery with update clause
#The item costs to be increased from all items supplied by Mr.A

update item1 set itemcost = itemcost+10
where supid = (select supid from supplier1 where supname like "Mr.A");
select * from item1;

#subquery in delete clause
delete from item1 where supid = (select supid from supplier1 where supname like ("Mr.C"));

#subqury with having clause
select * from department;
select * from employee;

update department set depthead ="Hrishi" where deptname like "Sales";
select deptid from department where deptname like "Production";

#1 show average salary expenses of production department

select avg(empsal), deptid from employee
group by deptid
having deptid = (select deptid from department where deptname like "Production");

#sub query with where exists
select deptid from department where depthead like "Hrishi";

#1 show all department details only if any department head like 'Hrishi' is available
select * from department
where exists(select deptid from department where depthead like "Hrishi");

create table employeetable
(
	empid int,
    empname varchar(20),
    salary float,
    supervisorid int,
    joining_date date
);
desc employeetable;
select  * from employeetable;

insert into employeetable values(101,"Hrishi",100000,null,"2000/04/10"),
								(106,"Aditya",60000,110,"2000/04/10"),
                                (108,"Sameer",50000,110,"2000/04/10"),
                                (109,"Chetan",55000,110,"2000/04/10"),
                                (110,"Rahul",80000,101,"2000/04/10"),
                                (115,"Shubham",80000,101,"2000/04/10");
                                
delete from employeetable where empid=101 and salary =80000;

#1 corelated subquery using where exists. Display all employee's who are supervisors.

select e1.empname as "Supervisor" from employeetable e1
where exists (select e2.supervisorid from employeetable e2
				where e2.supervisorid = e1.empid);
                
#2 Display Boss Name Of Rahul
select * from employeetable;
select e1.empname as "boss" from employeetable e1
where e1.empid in (select e2.supervisorid from employeetable e2
where e2.supervisorid = e1.empid and e2.empname like "Rahul");
                                