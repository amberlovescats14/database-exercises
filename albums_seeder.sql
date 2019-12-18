create database if not exists codeup_test_db;
use codeup_test_db;

insert into albums (artist_name, album_name, release_date, sales, genre) values
('michael jackson', 'bat out of hell', 1977, 21.7, 'hard rock'),
('bee gees', 'saturday night fever', 1977, 21.6, 'disco'),
('pink floyd', 'the dark side of the moon', 1973, 24.2, 'progressive rock'),
('ac/dc', 'back in black', 1980, 26.4, 'hard rock'),
('whitney houston', 'the body gaurd', 1992, 28.4, 'soul'),
('fleetwood mac', 'rumors', 1977, 27.9, 'soft rock'),
('shania twain', 'come on over', 1997, 29.6, 'country pop'),
('eagles', 'the greatest hits', 1976, 41.2, 'soft rock'),
('michael jackson', 'thriller', 1982, 47.3, 'rock'),
('michael jackson', 'bad', 1987, 22.2, 'pop'),
('led zeppelin', 'led zeppelin iv', 1971, 29.0, 'heavy metal'),
('adele', '21', 2011, 25.3, 'pop'),
('alanis morissette', 'jagged little pill', 1995, 24.4, 'alternative rock'),
('the beatles', '1', 2000, 23.4, 'rock'),
('abba', 'gold: greatest hits', 1992, 23.0, 'disco'),
('guns n roses', 'appetite for destruction', 1987, 21.9, 'hard rock'),
('eagles', 'hotel california', 1976, 31.5, 'soft rock');



select * from albums;

