drop database test;
create database if not exists test;
use test;
CREATE TABLE IF NOT EXISTS test1(
  id int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(id)
);
 
CREATE TABLE IF NOT EXISTS test2 LIKE test1;
CREATE TABLE IF NOT EXISTS test3 LIKE test1;
CREATE TABLE IF NOT EXISTS test4 LIKE test1;

-- set table schema and pattern matching for tables
SET @schema = 'classicmodels';
SET @pattern = 'test%';