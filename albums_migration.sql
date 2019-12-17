create database if not exists codeup_test_db;
use codeup_test_db;

drop table if exists albums;

create table if not exists albums (
    id int unsigned unique auto_increment,
    artist_name varchar(50) not null,
    album_name varchar(50) not null,
    release_date int unsigned not null,
    sales decimal,
    genre varchar(20) not null,
    primary key(id)
);

use codeup_test_db;
describe albums;