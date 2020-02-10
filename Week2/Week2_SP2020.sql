-- DATA607 | Assignment2 | SQL-R connection | Ait elmouden Abdellah

DROP SCHEMA IF EXISTS moviedb;
CREATE SCHEMA `moviedb` ; -- Create the moviedb Database
USE moviedb;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS reviewer;
DROP TABLE IF EXISTS rating;

select database(); -- to verify the name of the currently connected database

CREATE TABLE movie (
	  `mov_id` INT NOT NULL,
      `mov_title` VARCHAR(100) NOT NULL,
      `mov_year` INT NOT NULL,
      `mov_time` INT NOT NULL,
      `mov_Lang` VARCHAR(100) NOT NULL,
      `mov_country` VARCHAR(100) NOT NULL,
	   PRIMARY KEY (`mov_id`));
      
create table reviewer (
	   `rev_id` INT NOT NULL,
       `rev_name` VARCHAR(100) NOT NULL,
       primary key (`rev_id`));

create table rating (
		`mov_id` VARCHAR(100) NOT NULL,
        `rev_id` VARCHAR(100) NOT NULL,
        `rating` INT, -- ( Scale from 1 to 5)
	primary key (`mov_id`));

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (900, 'The Godfather', 1972, 168, 'English', 'US');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (901, 'Vertigo', 1958, 128, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (902, 'The Innocents', 1961, 100, 'English', 'SW');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (903, 'Lawrence of Arabia', 1962, 216, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (904, 'The Deer Hunter', 1978, 183, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (906, 'Blade Runner', 1982, 117, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (907, 'Eyes Wide Shut', 1999, 159, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (908, 'The Usual Suspects', 1995, 106, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (909, 'Chinatown', 1974, 130, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (910, 'Boogie Nights', 1997, 155, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (911, 'Annie Hall', 1977, 93, 'English', 'USA');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (912, 'Princess Mononoke', 1997, 134, 'Japanese' , 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (913, 'The Shawshank Redemption', 1994, 142, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (914, 'American Beauty', 1999, 122, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (915, 'Titanic', 1997, 194, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (916, 'Good Will Hunting', 1997, 126, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (917, 'Deliverance', 1972, 109, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (918, 'Trainspotting', 1996, 94, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (919, 'The Prestige', 2006, 130, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (920, 'Donnie Darko', 2001, 113, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (921, 'Slumdog Millionaire', 2008, 120, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (922, 'Aliens', 1986, 137, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (923, 'Beyond the Sea', 2004, 118, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (924, 'Avatar', 2009, 162, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (926, 'Seven Samurai', 1954, 207, 'Japanese', 'JP');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (927, 'Spirited Away', 2001 , 125, 'Japanese', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (928, 'Back to the Future', 1985, 116, 'English', 'UK');

INSERT INTO movie(mov_id, mov_title, mov_year, mov_time, mov_Lang, mov_country)
VALUES (925, 'Braveheart', 1995, 178, 'English', 'UK');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9001, 'Christoper Sock');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9002, 'Bailey Malvern');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9003, 'Raina Baronessa');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9004, 'AlecShaw');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9005, 'Caroyln Secord');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9006, 'Meagan Woeltjen');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9007, 'Simon Wright');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9008, 'Neal Wruck');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9009, 'Paul Monks');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9010, 'Mike Salvati');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9011, 'Luna');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9012, 'Wesley S.Walker');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9013, 'SashaGoldshtein');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9014, 'JoshCates');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9015, 'Krug Stillo');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9016, 'Scott LeBrun');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9017, 'Hannah Steele');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9018, 'Vincent Cadena');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9019, 'Brandt Sponseller');

INSERT INTO reviewer(rev_id, rev_name)
VALUES (9020, 'Richard Adams');

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (901, 9001, 8);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (902, 9002, 7);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (903, 9003, 8);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (906, 9005, 8);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (924, 9006, 7);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (908, 9007, 8);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (909, 9008, 5);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (910, 9009, 3);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (911, 9010, 8);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (912, 9011, 8);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (914, 9013, 7);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (915, 9001, 7);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (916, 9014, 4);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (925, 9015, 7);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (920, 9017, 8);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (921, 9018, 8);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (922, 9019, 8);

INSERT INTO rating(mov_id, rev_id, rating)
VALUES (923, 9020, 6);

SELECT * FROM movie;
SELECT * FROM reviewer;
SELECT * FROM rating;
