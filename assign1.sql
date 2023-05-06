create database consultation;  -- creating database 
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

-- creating a table name as review 
create table review(
patient_name varchar(30),patient_review int
);
-- inserting values into review table 
insert into review values("Charan",10),("Cherry",9),("Bhavya",7),("Baswanth",8),("Vedha",9);
select * from review;