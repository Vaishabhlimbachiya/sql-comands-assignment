-- 1 ---
select count(*) from rental;

-- 2 ---
select avg(rental_duration) from film;

-- 3 ---
select upper(concat(first_name,last_name)) as name from customer;

-- 4 ---
select rental_id , month(rental_date) from rental;

-- 5 ---
select customer_id,count(rental_id) from rental group by customer_id;

-- 6 ---
SELECT 
    store_id, SUM(amount)
FROM
    customer
        JOIN
    payment ON customer.customer_id = payment.customer_id
GROUP BY store_id;


-- 7 ---
SELECT 
    first_name, last_name, title
FROM
    customer
        INNER JOIN
    rental ON customer.customer_id = rental.customer_id
        INNER JOIN
    inventory ON rental.inventory_id = inventory.inventory_id
        INNER JOIN
    film ON inventory.film_id = film.film_id;
    
    -- 8 ---
SELECT 
    first_name, last_name
FROM
    actor
        JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
        JOIN
    film ON film_actor.film_id = film.film_id
WHERE
    title = 'GONE WITH THE WIND';
    
    -- JOINS QUESTION  1 ---
    
SELECT 
    name, SUM(rental_id) AS total_number_of_rental
FROM
    rental
        JOIN
    inventory ON rental.inventory_id = inventory.inventory_id
        JOIN
    film_category ON inventory.film_id = film_category.film_id
        JOIN
    category ON film_category.category_id = category.category_id
GROUP BY name;

-- 2 ---
SELECT NAME,avg(RENTAL_RATE) FROM FILM JOIN language ON FILM.LANGUAGE_ID = language.language_id group by name;

-- 3 --
SELECT 
    CONCAT(first_name, last_name) AS customer_name, SUM(amount)
FROM
    customer
        INNER JOIN
    payment ON customer.customer_id = payment.customer_id
GROUP BY customer_name;

-- 4 ---
SELECT 
    title, COUNT(city)
FROM
    film
        JOIN
    inventory ON film.film_id = inventory.film_id
        JOIN
    rental ON inventory.inventory_id = rental.inventory_id
        JOIN
    customer ON rental.customer_id = customer.customer_id
        JOIN
    address ON customer.address_id = address.address_id
        JOIN
    city ON address.city_id = city.city_id
GROUP BY title;


-- 5 ---
SELECT 
    title,
    rental_id,
    MAX(DATE(return_date) - DATE(rental_date)) AS rental_diff
FROM
    film
        JOIN
    inventory ON film.film_id = inventory.film_id
        JOIN
    rental ON inventory.inventory_id = rental.inventory_id
GROUP BY rental_id
HAVING rental_diff >= 79
LIMIT 5;



