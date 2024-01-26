show databases;
drop database trail;
create database trail;
use trail;

create table employee (
id int not null  auto_increment primary key,
ename varchar(10) null,
age varchar(20) null,
city varchar(20) null,
salary int not null);

insert into employee values(null,'priya',23,'Salem',15000),(null,'prem',26,'Salem',17000),(null,'indhu',29,'dharmaburi',11000),(null,'vel',21,'covai',12300),
(null,'chand',24,'krishnagiri',14500),(null,'pavani',22,'krishnagiri',13300);

select*from employee;

#Addition
select id,ename,salary,salary+1000 as empnew_salary from employee;
#subtraction
select id,ename,salary,salary-1000 as empneww_salary from employee;
#multiplication
select id,ename,salary,salary*100 as empneww_salary from employee;
#division
select id,ename,salary,salary/2 as emppp_salary from employee;
#equal
select*from employee where salary=13300;
#not equal
select*from employee where salary!=13300;
#greater than
select*from employee where id>3;
#lessthan
select*from employee where age>23;

create table student_details(rollno int not null auto_increment,
sname varchar(18) not null,
age int not null,
city varchar(20)not null,
dob date null,
totalmarks int not null,
primary key(rollno));

insert into student_details values(null,'gayathri',20,'chennai','2000-12-13',388),
(null,'sandh',23,'madurai','2000-12-07',399),
(null,'sowmya',25,'chennai','1990-01-04',345),(null,'ranji',19,'dharmaburi','2000-11-21',432),
(null,'sri',24,'namakkal','1999-11-08',412),(null,'deva',22,'salem','2001-07-07',456),
(null,'madhu',23,'madurai','2001-06-22',486),
(null,'kavya',27,'salem','2002-06-11',435);

select*from student_details;
#numeric
select*from student_details where totalmarks /2 > 200;
select current_timestamp();





