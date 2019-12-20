drop database join_test_db;
create database if not exists join_test_db;
use join_test_db;


CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

select users.name as user_name, roles.name as role_name
from users join roles
on users.role_id = roles.id; ## DOES NOT JOIN NULLS

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;
## LEFT JOIN WILL SHOW NULL

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;
## shows all the roles

######----------

insert into users(name, email, role_id)
values ('amber', 'amberlovescats14@gmail.com', 2),
       ('yael', 'yaellovespugs14@gmail.com', 2),
       ('cami', 'camilovescats14@gmail.com', 2),
       ('mom', 'momlovesdogs14@gmail.com', 2);

update users set role_id=null where name='mom';
select * from users;

select * from roles right join users on roles.id = users.role_id;

select  users.name, count(*)
from roles right join users on roles.id =users.role_id
group by name;

### EMPLOYEES DB

use employees;
show tables;
select * from dept_manager;

select d.dept_name as department,
       concat(e.first_name, ' ', e.last_name) as manager
from employees as e
join dept_manager as dm
    on e.emp_no = dm.emp_no
join departments as d
on dm.dept_no = d.dept_no
where dm.to_date > now();


select d.dept_name as 'Department Name',
       concat(e.first_name, ' ', e.last_name) as 'Mangaer Name'
from employees as e
join dept_manager as dm
    on e.emp_no = dm.emp_no
join departments as d
    on dm.dept_no = d.dept_no
where e.gender = 'F' and
      dm.to_date > now();

select * from departments;


select t.title as Title, count(t.title)
from employees as e
join titles as t
    on e.emp_no = t.emp_no
join dept_emp as de
    on t.emp_no = de.emp_no
join departments as d
    on de.dept_no = d.dept_no
where d.dept_name = 'Customer Service'
group by t.title;



select d.dept_name as 'Department Name',
       concat(e.first_name, ' ', e.last_name) as 'Name',
       s.salary as 'Salary'
from employees as e
join dept_manager as dm
    on e.emp_no = dm.emp_no
join salaries as s
    on dm.emp_no = s.emp_no
join departments as d
    on d.dept_no = dm.dept_no
where dm.to_date > now()
and s.to_date > now()
order by d.dept_name ;

##bonus

select concat(e.first_name, ' ', e.last_name) as 'Employee Name',
       d.dept_name as 'Department Name',
       concat(e.first_name, ' ', e.last_name) as 'Manager Name'
from employees as e
join dept_emp as de
    on e.emp_no = de.emp_no
join departments as d
    on de.dept_no = d.dept_no
join dept_manager as dm
    on d.dept_no = dm.dept_no
where dm.to_date > now()
order by 'Manager Name';
#
# select concat(e.first_name, ' ', e.last_name) as 'Employee Name',
#        d.dept_name as 'Department Name' from
# (select *
#     from employees as e
#     join dept_emp as de
#          on e.emp_no = de.emp_no),





