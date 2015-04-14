create database if not exists test;
use test;
create table if not exists employee(
	employee_id INT not null auto_increment
)engine = InnoDB