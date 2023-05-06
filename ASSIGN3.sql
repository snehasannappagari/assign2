create database customer2; --  creating database as customer2
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

