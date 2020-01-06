show databases ;
create database db_design;
use db_design;

create table user (
    id integer unsigned not null auto_increment,
    email varchar(40) not null,
    password varchar(20) not null,
    primary key (id)
);

drop table ads;
create table if not exists ads (
    id integer unsigned not null auto_increment,
    user_id integer unsigned not null ,
    description varchar(50) not null ,
    primary key (id),
    foreign key (user_id) references user (id)
);

# //JOIN TABLE
create table ads_catg (
    ads_id integer unsigned not null,
    catg_id integer unsigned not null,
    foreign key (ads_id) references ads (id),
    foreign key (catg_id) references catg (id)
);

create table catg (
    id integer unsigned not null auto_increment,
    name varchar(20) not null ,
    primary key (id)
);

insert into user (email, password) values
    ('amberlovescats', 'passy'),
    ('ccJones', 'juice'),
    ('puppy', 'cowJuice');
select * from user;

insert into ads (user_id, description) values
    (1, 'I need a cat'),
    (1, 'lipstick is awesome'),
    (2, 'Im hungry');

select * from ads;

insert into catg (name) values
    ('need'),
    ('want');

select * from catg;

insert into ads_catg (ads_id, catg_id) values
    (1, 2), (2, 2), (3, 1) ;
select * from ads_catg;


#users and description of ads with catg need
select u.email as 'username', a.description as 'description'
from user as u
join ads as a
    on u.id = a.user_id
join ads_catg as ag
    on a.id = ag.ads_id
where ag.catg_id = 1;


# email address of who created ads
select u.email as 'username', a.description as 'description'
from user as u
join ads as a
    on u.id = a.user_id;

# select category and add
select c.name as 'catg', a.description as 'description'
from ads as a
join ads_catg as ac
    on a.id = ac.ads_id
join catg as c
    on ac.catg_id = c.id;

#query the adds with a certain category
select a.description as 'description'
from ads as a
         join ads_catg ac
              on a.id = ac.ads_id
where ac.catg_id = 1;


# all ads posted by a certain user
select u.email as 'username', a.description as 'ad'
from user as u
join ads as a
    on u.id = a.user_id
where u.email = 'amberlovescats';
