create schema product;

create table product.pro(
id int primary key auto_increment,
name varchar(20) not null,
price int not null
);

select * from product.pro;

create table product.spec(
id int primary key auto_increment,
name varchar(20) not null,
storage varchar(20) not null,
proid int,
constraint foreign key spec_pro_proid (proid) references product.pro(id)
);

alter table product.pro add column phonenumber varchar(256);

alter table product.pro add constraint chk_phonenumber_10 check(length(phonenumber)>=10);

alter table product.spec modify storage varchar(15);

select * from product.spec;

insert into product.pro (name,price) values ('lenovo','50000') ,('axis','55000');

delete from product.pro where id = 2;

insert into product.spec (id,name,storage,proid) values (1,'croma','8gb',1);


select * from product.pro as p
join product.spec as sp on p.id = sp.proid;

select * from product.pro as p
right join product.spec as sp on p.id = sp.proid;

select * from product.pro as p
left join product.spec as sp on p.id =sp.proid;

select * from product.pro
cross join product.spec;

select * from product.pro as p
join product.spec e2 on p.id = e2.proid; 


