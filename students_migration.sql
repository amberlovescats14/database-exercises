create database if not exists deimos_db;
USE deimos_db;

CREATE TABLE if not exists students (
id INT unsigned not null auto_increment,
first_name VARCHAR(50) not null ,
last_name varchar(50) not null,
birthday date,
projects  text not null,
is_hired tinyint not null,
primary key(id)
);

