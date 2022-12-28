-- Modulo uno
INSERT INTO genres (name, ranking, active )
VALUE ('investigacion',13,1);

UPDATE movies_db . genres 
SET name = 'investigacion cientifica' 
WHERE (`id` = '13');

DELETE FROM genres where id=13;

-- modulo dos
SELECT first_name, last_name, rating
FROM actors;

SELECT title AS titulo FROM movies_db.series;

SELECT first_name, last_name
FROM actors
WHERE rating >7.5;

-- modulo tres

SELECT title, rating, awards
FROM movies
WHERE rating >7.5 AND awards > 2;

SELECT title, rating FROM movies
order by rating asc;

select title from movies limit 3;

select title, rating from movies 
order by rating desc 
limit 5;

-- modulo cuatro
select title, rating from movies 
order by rating desc 
limit 5
offset 5;

SELECT first_name, last_name
FROM actors
ORDER BY id DESC
LIMIT 10;

SELECT id, first_name, last_name FROM movies_db.actors ORDER by id desc limit 10 offset 20;

select title, rating 
from movies 
where title like '%Harry Potter%';

select first_name, last_name 
from actors 
where first_name like '%Sam';

SELECT title FROM `movies` WHERE release_date BETWEEN '2004-01-01' AND '2008-01-01';