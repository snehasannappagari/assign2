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