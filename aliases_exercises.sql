# use employees;
#
# select CONCAT(emp_no,': ', last_name, ', ', first_name) as full_name, birth_date as DOB
# from employees limit 10;
#
# show databases ;
# use codeup_test_db;
# show tables;
# describe albums;
#
# select * from albums;
#
# # // ADD CONSTRAINT
# alter table albums
# add constraint unique_arn_aln
#     unique (artist_name, album_name);
#
#
drop database pets;
show databases;
create database if not exists pets;
use pets;

create table if not exists owners
(
    id            int not null auto_increment,
    owner_name    varchar(50),
    owner_address varchar(50),
    primary key (id),
    unique (owner_name, owner_address)
);


create table if not exists animals
(
    id       int unsigned not null auto_increment,
    pet_name varchar(50)  not null,
    owner_id int default null,
    primary key (id),
    foreign key (owner_id) references owners (id),
    unique (pet_name, owner_id)
);


show databases;
use pets;

insert into owners
    (owner_name, owner_address)
values ('Amber', '1288 Hammy Dr'),
       ('Cami', '123 Phone Ln');
insert into animals
    (pet_name, owner_id)
values ('Punkin', 1),
       ('Shelby', 1);

# insert into animals
#     (pet_name, owner_id)
# values ('Punkin', 1); ## DUPLICATE ENTRY

select *
from animals as a
         join owners as o
              on a.owner_id = o.id;




