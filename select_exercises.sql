create database if not exists codeup_test_db;
use codeup_test_db;

-- select 'all albums by Pink Floyd' as 'message'
select column album_name from albums where artist_name='Pink Floyd';

-- select 'the year sgt peppers lonely hearts club band was released' as 'message';
select column release_date from albums where album_name='Sgt. Peppers lonely Hearts Club Band';