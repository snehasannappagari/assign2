-- 1.creating database as consultation
create database consultation;  
-- creating table as doctor
create table doctor(
id int primary key not null,name varchar(30),specialization varchar(30)
);
--  inserting values into doctor table
insert into doctor values(201,"Sneha","cardiology"),(202,"Sahithi","pathology"),
(203,"Sunny","anesthesiology"),(204,"Surya","neurologist");
select * from doctor;
-- creating table as Appointments 
create table Appointments(
id int primary key not null,specialization varchar(30)
);
-- inserting values into appointments table 
insert into Appointments values(201,"cCrdiology"),(202,"Pathology"),
(203,"Anesthesiology"),(204,"Neurologist");
select * from Appointments;
--  creating table name as patient
create table patient(
patinet_id int ,name varchar(20),gender varchar(30)
);

-- inserting values into patient table 
insert into patient values(201,"Charan","M"),(202,"Cherry","F"),(203,"Bhavya","F"),
(204,"Baswanth","M"),(205,"Vedha","F");
select * from patient;

-- 3.creata database as details 
create database details;
create table contact(
id int,Email varchar(20),fname varchar(30),lname varchar(32),company varchar(10),
Active_flag int,opt_out int
);
insert into contact values(123,"a@a.com","Kian","Seth","ABC",1,1),(133,"b@b.com","Neha","Seth","ABC",1,0),
(234,"c@c.com","Puru","Malik","CDF",0,0),(342,"d@d.com","Sid","Maan","TEG",1,0);
select * from contact;
--  it will select all columns from contact table where active flag=1
select * from contact where Active_flag=1;
-- deactivate contacts who are opted out
update contact set active_flag=0 where opt_out=1;
select * from contact;
-- delete all the contacts who have the copmany name ABC
delete from contact where company="ABC";
select * from contact;
-- insert a new row with id as 658,name as "mili",email as milli@gmail.com,
-- the company has DGH ,active falg as 1,opt_out falg as 1 
insert into contact values(658,"milli@gmail.com","Mili","Malik","DGH",1,1);
select * from contact;

-- pull out the unique values of the company name
select distinct company from contact;

-- update name "mili", to "niti" 
update contact set fname="Niti" where fname="mili";
select * from contact;



-- creating a table name as review 
create table review(
patient_name varchar(30),patient_review int
);
-- inserting values into review table 
insert into review values("Charan",10),("Cherry",9),("Bhavya",7),("Baswanth",8),("Vedha",9);
select * from review;



-- 2. creating database as customer2
create database customer2; 
-- create table name as customers_1 
create table customers_1(
customer_id int,cust_name varchar(20),city varchar(30),grade int,salesman_id int
);
-- inserting values into customers_1 table 
insert into customers_1 values(3002,"Nick Rimando","New york",100,5001),
(3007,"Brad Davis","New york",200,5001),(3005,"Graham Zusi","California",1200,5002),
(3008,"Julian Green","London",300,5002),(3004,"Fabian Johnson","Paris",300,5006),
(3009,"Geoff Cameron","Berlin",100,5003),(3003,"Jozy Altidor","Mocow",200,5005),
(3001,"Brad Guzan","London",100,5005);
select * from customers_1;
create table salesman1(
salesman_id int,sales_name varchar(20),sales_city varchar(30),commission varchar(30)
);
insert into salesman1 values(5001,"James Hoog","New York",0.15),(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),(5006,"Mc Lyon","Paris",0.14),(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);
select * from salesman1;
SELECT * FROM CUSTOMERS_1;
-- sql query to find those customers with grade less than 100.it reshoul return cust_name,city,grade,
--  salesman and salesman city
SELECT CUSTOMERS_1.CUST_NAME,CUSTOMERS_1.CITY,CUSTOMERS_1.GRADE,SALESMAN1.SALES_CITY
FROM SALESMAN1  LEFT JOIN CUSTOMERS_1 ON CUSTOMERS_1.GRADE<=100;
