#Inner join has 1)equi join 2)non-equi join 3)self join

CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
);

CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committee_id)
);

INSERT INTO members(name)
VALUES('John'),('Jane'),('Mary'),('David'),('Amelia');

INSERT INTO committees(name)
VALUES('John'),('Mary'),('Amelia'),('Joe');

select * from members;
select * from committees;

#Inner Join(Equi Join)
#find members who are also the committee members

select *
from members m
inner join committees c
on c.name=m.name;

#Non-equi join

select distinct count(*)
from members m inner join committees c
on c.committee_id<>m.member_id;


#Outer Join Has 1)Left outer Join 2)Right outer Join 3)Full Outer Join

select *
from members m left join committees c
on m.name=c.name;

#To find members who are not the committee members

select *
from members m left join committees c
using(name)
where c.committee_id is null;

#Right Outer Join

select *
from members m right join committees c
on m.name=c.name;

select *
from members m right join committees c
using(name)
where m.member_id is null;

#Natural Join

select *
from members natural join committees;

#self Join
#Display Employee and his/her boss name
select e1.empname 'Employee', e2.empname 'Boss'
from employeetable e1 join employeetable e2
on e1.supervisorid=e2.empid;