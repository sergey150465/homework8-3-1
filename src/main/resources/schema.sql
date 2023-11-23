create schema netology;

create table netology.CUSTOMERS(
id int not null primary key,
name varchar(255) not null,
surname varchar(255) not null,
age int check (age > 0),
phone_number varchar(255)
);

create table netology.ORDERS(
id int not null primary key,
date varchar(255) not null,
customer_id int not null,
product_name varchar(255),
amount int,
foreign key (customer_id) references netology.CUSTOMERS (id)
);

insert into netology.customers (id, name, surname, age, phone_number) values (1, 'Ivan', 'Ivanow', 33, '3-22-2-33');
insert into netology.customers (id, name, surname, age, phone_number) values (2, 'Petr', 'Petrov', 44, '3-22-2-44');
insert into netology.customers (id, name, surname, age, phone_number) values (3, 'Sidor', 'Sidorov', 55, '3-22-2-55');
insert into netology.customers (id, name, surname, age, phone_number) values (4, 'Vasya', 'Vasiliev', 66, '3-22-2-66');
insert into netology.customers (id, name, surname, age, phone_number) values (5, 'Vova', 'Pupkin', 38, '3-22-2-77');
insert into netology.customers (id, name, surname, age, phone_number) values (6, 'Vova', 'Zuzin', 38, '3-22-2-77');

insert into netology.orders (id, date, customer_id, product_name, amount)  values (1, '01.01.2023', 2, 'iPhone1', 2);
insert into netology.orders (id, date, customer_id, product_name, amount)  values (2, '01.01.2023', 3, 'iPhone2', 3);
insert into netology.orders (id, date, customer_id, product_name, amount)  values (3, '01.01.2023', 1, 'iPhone3', 4);
insert into netology.orders (id, date, customer_id, product_name, amount)  values (4, '01.01.2023', 5, 'iPhone4', 5);

insert into netology.orders (id, date, customer_id, product_name, amount)  values (5, '01.01.2023', 6, 'iPhone5', 5);
