USE sakila;

SHOW TABLES;

SELECT * FROM film;

DESCRIBE film;

SELECT title, length, rating FROM film;


SELECT * FROM actor;
SELECT * FROM actor WHERE first_name = 'John';
SELECT * FROM actor WHERE last_name = 'Neeson';
SELECT * FROM actor WHERE actor_id % 10 = 0;
SELECT description FROM film WHERE film_id = 100;
SELECT * FROM film WHERE rating = 'R';
SELECT * FROM film WHERE rating != 'R';
SELECT * FROM film ORDER BY length ASC LIMIT 10;
SELECT title FROM film;
SELECT * FROM film WHERE special_features LIKE '%Deleted Scenes%';
SELECT DISTINCT last_name FROM actor;
SELECT film_id FROM film WHERE title = 'Academy Dinosaur';
SELECT * FROM inventory;
SELECT * FROM rental;
SELECT inventory_id FROM inventory WHERE film_id = 1 AND store_id = 1;
SELECT return_date FROM rental WHERE inventory_id = 1;