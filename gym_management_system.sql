create database gym_management_system;
use gym_management_system;
CREATE TABLE USERS (
  USERID int NOT NULL AUTO_INCREMENT,
  UNAME varchar(25) NOT NULL,
  UPWD varchar(25) NOT NULL,
  PRIMARY KEY (USERID)
);
insert into users (userid,uname,upwd)values (null,'prem','4567');
 select *from users;
 
 CREATE TABLE WORKOUT_PLAN(
WID INT(10) NOT NULL AUTO_INCREMENT,
WORKOUT_NAME VARCHAR(50) NOT NULL,
PRICE_PER_MONTH VARCHAR (50) NOT NULL,
DURATION VARCHAR(50) NOT NULL,
PRIMARY KEY(WID)
);

insert into workout_plan values(wid,workout_name,price_per_month,duration);
select*from workout_plan;
#truncate TABLE workout_plan;

CREATE TABLE CUSTOMER_DETAILS(
CUST_ID INT NOT NULL AUTO_INCREMENT,
CUST_NAME VARCHAR(50) NOT NULL,
MOBILE VARCHAR(50) NOT NULL,
DOB DATE NOT NULL,
WID1 INT  NOT NULL,
WID2 INT NOT NULL,
WID3 INT NOT NULL,
GENDER VARCHAR(50) NOT NULL,
ADDRESS VARCHAR(50) NOT NULL,
WEIGHT INT NOT NULL,
HEIGHT INT  NOT NULL,
DOJ DATE NOT NULL,
PRIMARY KEY(CUST_ID)
);
insert into customer_details values(cust_name,mobile,dob,wid1,wid2,wid3,gender,address,weight,height,doj);
select*from customer_details;
#drop table  customer_details;

CREATE TABLE PAYMENT_DETAILS (
PAID_ID INT NOT NULL AUTO_INCREMENT,
CUST_ID INT NOT NULL ,
AMOUNT INT NOT null,
PAID_DATE DATE NOT NULL,
PRIMARY KEY(PAID_ID)
);
insert into payment_details values(cust_id,amount,paid_date);
select*from payment_details;
#truncate table payment_details;

CREATE TABLE ATTENDANCE(
    ATAN_ID INT NOT NULL AUTO_INCREMENT,
	CUST_ID int NOT NULL,
	CUR_DATE DATE NOT NULL,
   	ASTATUS VARCHAR(10) NOT NULL,
	PRIMARY KEY (ATAN_ID)
);
insert into attendance values (atan_id, cust_id, cur_date, astatus); 
select*from attendance;
#truncate table attendance;
select CUST_ID,ASTATUS from attendance where astatus='a';

CREATE TABLE MACHINE_STATUS(
MACHINE_ID INT AUTO_INCREMENT,
MACHINE_NAME VARCHAR(50) NOT NULL,
PURCHASE_DATE DATE NOT NULL,
MACHINE_STATUS VARCHAR(50) NOT NULL,
COMPANY_NAME VARCHAR(50) NOT NULL,
PRIMARY KEY(MACHINE_ID)
);
insert into machine_status values(machine_id,machine_name,purchase_date,machine_status,company_name);
select*from machine_status;
#truncate table machine_status;
#drop table machine_status;

