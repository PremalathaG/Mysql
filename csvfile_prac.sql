select*from employees1;

select count(employee_id) as total,department_id from
employees1 group by department_id;

select*from employees1 order by salary;

select employee_id,first_name from employees1 where EMPLOYEE_ID
between 110 and 170;

/*select*from employees1 where salary between 35000 and 55000
order by salary;
*/
select*from employees1 where 
hire_date between '01-jan-00' and '31-dec-07';
select*from employees1 where salary<5000 and DEPARTMENT_ID=30;

update employees1 set salary =10000 where employee_id=116;
select*from employees1 where EMPLOYEE_ID=116;

#HAVING
select department_id, avg(salary), count(employee_id) 
from employees1 
group by DEPARTMENT_ID having avg(salary)>5000;

select*from employees1 where salary<(select avg(salary)
from employees1);

#insert
use trail;
create table employee_new (
id int not null  auto_increment primary key,
ename varchar(10) null,
age varchar(20) null,
city varchar(20) null,
salary int not null);
select*from employee;
select*from employee_new;

insert into employee_new select id,ename,age,city,salary from
employee where salary in (select salary from
employee where salary > 11000);
select*from employee_new;
#truncate table employee_new;
drop function bonusstatus;

delimiter $$
create function bonusstatus(salary char(20))
 returns varchar(20)deterministic begin
if salary>12500 then return('eligible for bonus');
else
return('not eligible');
end if;
end$$
delimiter $$
select bonusstatus(12000);


select*from employee;
select*from orders

select id,ename,salary,bonusstatus(salary) from employee;

#cast function
select cast(45.68 as signed);

select cast('22,10,24'as datetime);

select*from employees1;

/* select item_name,price,cast(price as signed) as new_price from
restuarant_orders;*/

#convert()
select convert(25.677,decimal(9,2));
select convert('072335',time);


select*from employees1 where first_name like 'n%';
select*from employees1 where first_name like '____';





