
USE MAVENMOVIES;
-- 1-- 
-- major diffrence of primary key and foreign key is that primary key is unique of the table and foreign key is identify the link of another table --

-- 2--
SELECT * FROM ACTOR;

-- 3--
SELECT * FROM customer;

-- 4--
SELECT COUNTRY FROM country group by country;

-- 5-- 
select customer_id, first_name, email,active from customer where active=1;

-- 6--
select rental_id,customer_id from rental where customer_id=1;

-- 7--
select film_id, title, description, rental_duration from film where rental_duration >5;

-- 8--
select count(film_id) from film where replacement_cost >15 and replacement_cost <20;

-- 9--
select count(distinct(first_name)) from actor;

-- 10--
select * FROM customer limit 10;

-- 11--
SELECT * FROM CUSTOMER where FIRST_NAME LIKE 'b%' limit 3;

-- 12--
select TITLE from film where rating ='G' LIMIT 5;

-- 13--
SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE 'a%';

-- 14--
SELECT FIRST_NAME FROM CUSTOMER WHERE FIRST_NAME LIKE '%a';

-- 15--
select CITY from city where city like 'a%a' limit 5;

-- 16--
select FIRST_NAME from customer where first_name like '%NI%';

-- 17--
SELECT FIRST_NAME FROM CUSTOMER WHERE FIRST_NAME LIKE '_R%';

-- 18--
SELECT FIRST_NAME FROM CUSTOMER WHERE FIRST_NAME LIKE 'A%' AND length(FIRST_NAME)>=5;

-- 19--
SELECT FIRST_NAME FROM CUSTOMER WHERE FIRST_NAME LIKE 'A%O';

-- 20--
SELECT * FROM FILM where rating in('PG','PG-13');

-- 21--
SELECT *FROM film where length between 50 and 100;

-- 22--
select* from actor limit 50;

-- 23--
select distinct(film_id) from inventory;

