drop database triggerss;
create database triggerss;

use triggers;
show tables;

#before insert triger
create table customers(cust_id int, age int, name varchar(30));
delimiter //
create trigger age_verify
before insert on customers
for each row if new.age<0 then set new.age=0;
end if;//

insert into customers values(101,27,'priya'),(102,-45,'prem'),(103,23,'indhu'),
(104,-25,'vel');

select *from customers;
#after insert trigger
create table customers1(
id int auto_increment primary key,
name varchar(40) not null,
email varchar(30),
birthdate date);

create table msg(id int not null auto_increment,
msgid int, msg varchar(300) not null,
primary key(id, msgid));
delimiter//
create trigger check_null_dob after insert on customers1 for each row
 begin if new.birthdate is null then insert into msg(msgid,msg)
 values(new.id, concat('hi ', new.name,', please update your dob'));
end if;
end//
delimiter ;

insert into customers1(name, email, birthdate)
values ('yash','yash123@abs.com',null),
('ronald','ornalad@err.com','1998-11-07'),
('chand','chand@qwe.com','1999-09-02');

select*from msg;

#before update
create table emp(emp_id int primary key,
ename varchar(25),age int, salary float);

insert into emp values(101,'ji',32,70000),
(102,'sha',30,55000),(103,'ass',23,61111),(104,'add',29,40000),
(105,'zzz',25,9999);

delimiter //
create trigger upd_trigger before update
on emp for each row begin if new.salary=10000 then
 set new.salary=85000;
 elseif new.salary<10000 then
 set new.salary =72000;
 end if;
 end //
 delimiter ;
 
 update emp set salary=8000;
 
 select *from emp;
 
#before delete
create table salary(eid int primary key,
validfrom date not null,
amount float not null);

insert into salary (eid,validfrom,amount) values
(101,'2004-05-01',55000),(102,'2006-08-01',68000),(103,'2006-09-01',75000);
 select *from salary;
 create table salarydel(id int primary key auto_increment,
 eid int, validfrom date not null,amount float not null,
 deletedat timestamp default now());
 
 delimiter $$
 create trigger salary_del
 before delete on salary
 for each row begin insert into salarydel(eid,validfrom,amount)
 value (old.eid,old.validfrom, old.amount);
 end$$
 delimiter ;
 delete from salary where eid=103;
 select*from salarydel;
 






