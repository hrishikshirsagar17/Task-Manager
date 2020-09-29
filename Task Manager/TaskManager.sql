use taskmanager;
create table user
(
	userid int auto_increment,
	firstName varchar(25) Not null,
    lastName varchar(25) Not null,
    gender char(1) Not null,
    dateOfBirth date Not null,
    emailId varchar(25) Not null,
    userpassword varchar(25) Not null,
    confirmPassword varchar(25) Not null,
    userstatus boolean Not null default true,
    registrationDate date Not null,
    primary key (userid)
);

select * from user;

create table task
(
	srNo int auto_increment primary key,
    taskName varchar(25) default null,
    taskDescription varchar(25) default null,
    task_status varchar(10),
    userid int,
    constraint fk foreign key(userid) references user(userid)

);

select * from task;