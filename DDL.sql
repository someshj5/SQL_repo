SHOW DATABASES;

CREATE DATABASE coffee_store;
USE coffee_store;

CREATE TABLE products(
id INT auto_increment primary key,
name varchar(30),
price decimal(3,2) 
);

create table customers(
id INT auto_increment primary key,
first_name varchar(30),
last_name varchar(30),
gender enum('M','F'),
phone_number varchar(11)
);

create table orders(

id INT auto_increment primary key,
product_id int,
customer_id int,
order_time datetime,
foreign key(product_id) references products(id),
foreign key(customer_id) references customers(id)
);

alter table products 
add column coffee_origin varchar(30);

alter table products
drop column coffee_origin;

SHOW tables;

select * from products;
select * from customers;


create database test;
use test;

CREATE TABLE addresses (
	id INT,
    house_number INT,
	city VARCHAR(20),
    postcode VARCHAR(7)
);

CREATE TABLE people (

	id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address_id INT
); 

alter table addresses
add primary key (id);

alter table addresses
add column id int;

alter table addresses
drop column id;

describe addresses;

alter table addresses
drop primary key;

alter table people
add primary key (id);

alter table pets
add primary key (id);

CREATE TABLE pets (

	id INT,
    name VARCHAR(20),
    species VARCHAR(20), 
    owner_id INT
); 

SHOW TABLES;
use test;

describe people;
describe addresses;


alter table people
add constraint FK_PeopleAddress
foreign key (address_id) references addresses(id);

alter table people
drop foreign key FK_PeopleAddress;

alter table pets
add constraint FK_ownerId
foreign key (owner_id) references people(id);

alter table people
add column email varchar(20);

alter table people
add constraint u_email unique(email);

alter table pets
change `name` `first_name`varchar(20);

describe pets;
describe people;
describe addresses;

alter table addresses
modify postcode char(7);

alter table pets
change `animal_type` `species` varchar(20);

alter table addresses
modify house_number int;

alter table pets
add constraint u_species unique(species);

alter table pets
drop index u_species;

alter table pets
add primary key (id);

alter table pets
add column pet_id int;

alter table pets
add primary key (pet_id);

alter table pets
change `p-id` `p_id` int;

alter table pets
modify p_id varchar(20);

alter table pets
drop column pet_id;

alter table pets
drop primary key;

alter table pets
add constraint u_species unique(species);

alter table pets
drop index u_species;

alter table pets
add constraint fk_owner
foreign key (owner_id) references people(id);

alter table pets
drop foreign key fk_owner;

describe pets;