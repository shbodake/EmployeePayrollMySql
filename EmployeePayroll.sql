#UC1
show databases;
create database payroll_service;
use payroll_service;
use payroll_service;

#UC2
create table payroll_service (id int not null auto_increment, name varchar(150)not null, salary double not null, start date not null, primary key(id));
desc payroll_service;

#UC3
insert into payroll_service values (1,'Sayali Bodake', 200000.0, '2018-12-01');
insert into payroll_service values (2,'Shruti Patil', 250000.0, '2019-02-01');
insert into payroll_service values (3,'Anuja ', 350000.0, '2020-02-01');

#UC4
select * from payroll_service;

#UC5_AbilityToRetrieveParticularData
insert into payroll_service(name,salary,start) values ('Puja',420000.0,'2017-06-04');
select * from payroll_service;
select salary from payroll_service where name ='Anuja';
select salary from payroll_service where start between cast('2018-01-01' as date) and date(now());
select* from payroll_service where start between cast('2018-01-01' as date) and date(now());
select* from payroll_service where start between cast('2020-01-01' as date) and date(now());

#UC6 
alter table payroll_service add gender char(1) after name;
desc payroll_service;
update payroll_service set gender='F' where name = 'Sayali Bodake';
select* from payroll_service;
update payroll_service set gender = 'F' where name = 'Shruti Patil' or name = 'Anuja' or name = 'Puja';
select* from payroll_service;

#UC7
select sum(salary) from payroll_service where gender ="F" group by gender;
select avg(salary) from payroll_service where gender ="F" group by gender;
select gender,count(salary) from payroll_service group by gender;
select gender,min(salary) from payroll_service group by gender;
select name, gender,min(salary) from payroll_service group by gender;
select name, gender,max(salary) from payroll_service group by gender;

#UC8
alter table payroll_service add phone_num varchar(15) after name;
alter table payroll_service add address varchar(100) after phone_num;
alter table payroll_service add department varchar(100) after address;
 desc payroll_service;
 select* from payroll_service;
 
 #UC9
 alter table payroll_service rename column salary to basic_pay;
 alter table payroll_service add deductions double not null after basic_pay;
 alter table payroll_service add taxable_pay double not null after deductions;
  alter table payroll_service add tax double not null after taxable_pay;
  alter table payroll_service add net_pay double not null after tax;
  desc payroll_service;
  select* from payroll_service;
  
  #UC10
  insert into payroll_service (name,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,start) values
   ('Sayali Bodake','Marketing','F','4000000','1000000','2000000','60000','8000000','2018-01-03');
	select* from payroll_service where name ='Sayali Bodake';
    
    #UC11
    create table Department(department varchar(150) not null,primary key(department));
    insert into Department (department) values ('sales'),('Marketing');
    select* from department;
    create table Employee (id int, phone_num BIGINT(15),address varchar(25),gender char(1),primary key(id));
    select*from Employee;
    insert into Employee(id,phone_num,address,gender) values(1,7894561230,'Goa','F'),(2,7418529602,'Assam','F');
    select*from Employee;
    create table Emp_Department (empID int, Depart varchar(250) NOT NULL, FOREIGN KEY (empID) REFERENCES Employee (id),
    FOREIGN KEY (Depart) REFERENCES Department (department), PRIMARY KEY (empID, Depart));
	select*from Emp_Department;
    desc Emp_Department;
    insert into Emp_Department (empID, Depart) VALUES (1, 'Marketing');
    select* from Emp_Department;
    
    #UC12
    select * from Emp_Department where empId = 1;
    insert into Emp_Department (empID, Depart) VALUES (2, 'Sales');
    select * from Emp_Department where empId = 1;
    select * from Emp_Department where empId = 'Sales';
    select * from Emp_Department where Depart= 'Sales';
    
 





