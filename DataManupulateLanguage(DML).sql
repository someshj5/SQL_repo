use coffee_store;
use test;
create database example;
use example;
select * from products;
describe products;

insert into products(name, price,coffee_origin) values("mocha",9.0,"ghana");
insert into products(name, price,coffee_origin) values("Espresso",2.0,"Brazil");
insert into products(name, price,coffee_origin) values("Machiato",2.0,"Brazil"),('Cappuccino',2.90,'Costa-rica');
insert into products(name, price,coffee_origin) values("Latte",3.50,"Indonesia"),('Americano',3.50,'Brazil'),('Flat white',3.50,'Indonesia'),('filter',3.00,'India');

update products set	coffee_origin = 'Sri Lanka' where id =8;
update products set	name = 'Filter' where id =8;

update products set coffee_origin='Ethiopiaa',price=3.35 where name='Americano';

update products set coffee_origin='Colombia' where coffee_origin='Brazil';
set sql_safe_updates=0;

create table people(
ind int auto_increment primary key,
name varchar(30),
age int,
gender enum('M','F')
);

insert into people(name,age,gender)values('John',23,'M'),('Thomas',27,'M'),('Chris',44,'M'),('Sally',21,'F'),('Frank',55,'M');
set sql_safe_updates=0;
delete from people where name= 'Thomas';
select * from people;
describe people;
-- insert into people(first_name,last_name,address_id,email),values(0,0,0,0);


alter table people 
drop constraint FK_PeopleAddress;
