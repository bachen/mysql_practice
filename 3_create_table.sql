create database if not exists test;
use test;

create table if not exists employee(
	employee_id INT not null auto_increment,
    first_name varchar(40) default null,
    last_name varchar(40) default null,
    salary INT default null,
    shop_id INT default null,
    primary key(employee_id)
)engine = InnoDB;
insert into employee(first_name,last_name,salary,shop_id)
values('lucy','lee',10500,0010),
('harry','snape',11300,0010),
('lucis','vencent',11000,0030),
('emma','stone',10000,0020),
('penny','wan',11300,0010),
('cesis','eva',11500,0030),
('chris','vedo',13000,0020),
('victor','eric',11300,0010),
('ben','frank',11000,0030),
('clarie','lin',12500,0020),
('mars','ada',12000,0020);

create table if not exists shop(
	shop_id INT default null,
    shop_name varchar(40) default null,
    total_income INT default null,
    primary key(shop_id)
)engine = InnoDB;
insert into shop(shop_id,shop_name,total_income)
values(0010,'new york',1050000),
(0020,'washington',1001000),
(0030,'mamie',1300020);

create table if not exists employee_shop(
   employee_id INT NOT NULL,
   shop_id INT NOT NULL,
   PRIMARY KEY(employee_id,shop_id),
   FOREIGN KEY(employee_id) REFERENCES employee(employee_id),
   FOREIGN KEY(shop_id) REFERENCES shop(shop_id)
)engine = InnoDB;