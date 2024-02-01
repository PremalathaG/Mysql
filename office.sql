show databases;
drop database office;
create database office;
use office;

create table students(
id INT NOT NULL AUTO_INCREMENT, 
ename VARCHAR(50) NOT NULL, 
age INT NOT NULL,
primary key(id));

drop table emplo;#whole
truncate table emplo;#only 

#alter table students rename to user;
ALTER TABLE students ADD gender VARCHAR(10) NOT NULL AFTER AGE;

/* To add multiple columns to a table:*/
ALTER TABLE students ADD city VARCHAR(50) NOT NULL, ADD contact VARCHAR(50) NOT NULL;

describe students;

INSERT INTO students(ename,age,gender,city,contact) VALUES
('priya',25,'feMale','Salem','8967563210'),
('indhu',23,'feMale','hosur','9871111210'),
('kumar',27,'Male','Namakkal','980003210'),
('chand',20,'Male','Namakkal','7867543210'),
('ravee',22,'feMale','salem','9876543555'),
('ram',24,'Male','hosur','9000543210'),
('vasanth',26,'Male','Namakkal','9871234210'),
('dhaya',21,'Male','Namakkal','983333210'),
('aaaa',19,'feMale','salem','9879993210'),
('sandhya',27,'feMale','dharmaburi','7832143210'),
('madhu',23,'feMale','salem','7776543210'),
('surya',24,'Male','Namakkal','987659999'),
('kavya',22,'feMale','Namakkal','9874443210'),
('sathya',24,'Male','erode','922229999'),
('gayathri',25,'feMale','salem','9874443111'),
('pavani',23,'feMale','hosur','987650000'),
('pavithra',21,'feMale','hosur','9874443210');

select*from students;
delete from students where id=17;

SELECT ename,age,city FROM students WHERE city='erode';

/* Select recoords with multiple criteria:*/
SELECT ename,age,city FROM students WHERE city='Hosur' AND age >= 23;

SELECT ename,age,city FROM students WHERE city='Namakkal' OR city='Hosur';

SELECT ename,age,city FROM students WHERE (city='Namakkal' OR city='Hosur') AND age >= 23;
SELECT ename,age,city FROM students WHERE (city='Namakkal' OR city='Hosur') AND age >= 23 order by city;

select  max(age) from students;
select  min(age) from students;
select  sum(age) from students;
select gender, count(id) from students group by gender;

select city from students;
#remove duplicates
select distinct city from students;
#count city
select count(city) from students;
#different city
select count(distinct(city)) from students;
#header name
select count(distinct(city)) as total from students;

select *from students limit 4,5;
select *from students order by id desc limit 0,1; 

select *from students;


create table emploe(
id int not null auto_increment primary key,
ename varchar(25),
designation varchar(25),
doj date not null);
insert into emploe values(null,'priya','hr','2020-02-01'),(null,'riya','manager','2020-09-04'),
(null,'ram','sales','2020-02-03'),(null,'raj','sales','2020-02-07'),(null,'tom','acc','2020-03-02');
select *from emploe;

#truncate table emploe;

create table salary(
sid int not null auto_increment primary key,
id int not null,
sdate date not null,
amount int not null); 

insert into salary values(null,1,'2020-03-01',10000),(null,3,'2020-03-01',9000),(null,4,'2020-03-01',9000),
(null,2,'2020-03-01',8000),(null,7,'2020-03-01',5000);
select *from salary;
show tables;
describe salary;

truncate table salary;

#joining
select emploe.ename,emploe.designation,salary.sdate,salary.amount from
emploe inner join salary on emploe.id = salary.id;

select emploe.ename,emploe.designation,salary.sdate,salary.amount from
emploe left join salary on emploe.id = salary.id;

select emploe.ename,emploe.designation,salary.sdate,salary.amount from
emploe right join salary on emploe.id = salary.id;











