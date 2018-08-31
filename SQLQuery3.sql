create table Employee2
(
eid int,
ename varchar(20),
age int,
salary real,
primary key (eid)
);

create table Dept
(
did varchar(20)primary key,
budget real, 
managerid integer,
);

create table Works
(
eid integer,
did varchar(20),
pctTime integer,
primary key (eid,did),
foreign key (eid) references Employee2 (eid),
foreign key (did) references Dept (did)
);


insert into Employee2 (eid,ename,age,salary)
values (1,'Saman',20,20000.00);
insert into Employee2 (eid,ename,age,salary)
values (2,'Amara',23,10000.00);
insert into Employee2 (eid,ename,age,salary)
values (3,'Gayan',35,30000.00);
insert into Employee2 (eid,ename,age,salary)
values (4,'Ruwan',18,70000.00);
insert into Employee2 (eid,ename,age,salary)
values (5,'Nalin',25,8000.00);
insert into Employee2 (eid,ename,age,salary)
values (6,'Kalum',27,7000.00);



insert into Dept (did,budget,managerid)
values ('Hardware',50000.00,3);
insert into Dept (did,budget,managerid)
values ('Software',5000.00,3);
insert into Dept (did,budget,managerid)
values ('Electronics',11000.00,4);
insert into Dept (did,budget,managerid)
values ('IT',1500000.00,5);
insert into Dept (did,budget,managerid)
values ('CSE',600000.00,5);
insert into Dept (did,budget,managerid)
values ('CM',2000000.00,6);


insert into Works (eid,did,pctTime)
values (1,'Hardware',8);
insert into Works (eid,did,pctTime)
values (2,'Hardware',5);
insert into Works (eid,did,pctTime)
values (3,'Software',8);
insert into Works (eid,did,pctTime)
values (3,'Hardware',8);
insert into Works (eid,did,pctTime)
values (4,'Electronics',8);
insert into Works (eid,did,pctTime)
values (4,'Hardware',8);
insert into Works (eid,did,pctTime)
values (5,'IT',3);
insert into Works (eid,did,pctTime)
values (5,'CSE',3);
insert into Works (eid,did,pctTime)
values (6,'CM',10);


select * from Employee2;
select * from Dept;
select * from Works;
/*distinct use to remove duplicates*/
select distinct did from DEpt;
/*count has used to get count of something*/
select count(distinct did) from Dept;
select count(salary) from Employee2 where salary>20000;
select * from Employee2 where salary>20000;

select top 3  * from Employee2;/*select top data from the table*/
select top 3 age from Employee2;

select ename  from Employee2 order by rand();
select ename  from Employee2 ;

create table employee3(  /*create employee table and its columns*/
EmployeeId int,
FirstName varchar(40),
LastName varchar(40),
Address varchar(50),
Position varchar(20)
);

insert  into employee3 values(1,'Chathurya','Heshani','Temple rd,colombo ','teacher');
insert  into employee3 values(2,'Amila','Suraweera','Lotus rd,Galle ','Lawyer');
insert  into employee3 values(3,'Sajini','Hanshika','23,Galle rd,Colombo  ','Nurse');
insert  into employee3 values(4,'Nuwan','Tharanga','Temple rd,Galle ','farmer');
/*AS is used to assign temporarily a new name to a table column*/
select * from employee3;
select EmployeeId as "number", FirstName ,LastName ,Address as "addressLine", Position as "job" from employee3;
/*Minimize the work of the oroperations can use in */
select * from employee3 where FirstName in('sajini','chathurya');