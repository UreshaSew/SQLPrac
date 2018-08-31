CREATE TABLE Employee1  
(  
EmployeeID int,  
FirstName varchar(255),  
LastName varchar(255),  
Email varchar(255),  
AddressLine varchar(255),  
City varchar(255)  
);  

insert into  Employee1 values(001,'ravisha','dissanayaka','dis@gmail.com','23/45 temple rd,Pannipitiya',null);
select * from Employee1;
insert into  Employee1 values(002,'anupma','perera','anu@gmail.com','23/45 main street,colombo','');
select * from Employee1;

drop table Employee1;

delete from  Employee1;
 select * from Employee1;


