create table employee(  /*create employee table and its columns*/
EmployeeId int,
FirstName varchar(40),
LastName varchar(40),
Address varchar(50),
Position varchar(20)
);

create table student(
Name varchar(100),
Address varchar(100),
School varchar(60),
Payment money
);
/*put values to employee table*/
insert  into employee values(1,'Chathurya','Heshani','Temple rd,colombo ','teacher');
insert  into employee values(2,'Amila','Suraweera','Lotus rd,Galle ','Lawyer');
insert  into employee values(3,'Sajini','Hanshika','23,Galle rd,Colombo  ','Nurse');
insert  into employee values(4,'Nuwan','Tharanga','Temple rd,Galle ','farmer');

select * from employee; /*select all data from employee table*/

/*select employees which position holding as a teacher*/
select EmployeeId from employee  where Position='teacher';

/*select employees who live in colombo*/
select FirstName from employee where address like '%colombo%';