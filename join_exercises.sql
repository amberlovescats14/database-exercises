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


