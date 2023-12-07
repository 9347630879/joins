create schema employee;

create table employee.employ(
id int primary key auto_increment,
name varchar(20) not null,
email varchar(20) not null,
phonenumber bigint not null,
address varchar(20) not null 
);

select * from employee.employ;


create table employee.manager(
id int primary key auto_increment,
name varchar(20) not null,
email varchar(20) not null,
phonenumber bigint not null,
empid int not null,
constraint  foreign key manager_employ_empid (empid) references employee.employ (id)
);

select * from employee.manager;

alter table employee.employ add column gender varchar(8);

alter table employee.manager add constraint chk_phonenumber_10 check(length(phonenumber)>=10);

insert into employee.employ (id,name,email,phonenumber,gender) 
values (3,'Dhanunjai','d@gmail.com','8520917978','b-camp','Male');

insert into employee.manager (id,name,email,phonenumber,empid) 
values (1,'HCL','hcl@gmail.com','8956445645',1);

select * from employee.employ as e 
join employee.manager as m on e.id = m.empid;

select * from employee.employ as e
left join employee.manager as m on e.id = m.empid;

select * from employee.employ as e
right join employee.manager as m on e.id = m.empid;
