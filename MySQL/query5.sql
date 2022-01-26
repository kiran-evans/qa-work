USE sakila;

SELECT last_name, COUNT(last_name) FROM actor GROUP BY last_name ORDER BY COUNT(last_name) DESC;
SELECT first_name, last_name FROM actor WHERE actor_id = (
	SELECT actor_id FROM film_actor GROUP BY actor_id ORDER BY COUNT(actor_id) DESC LIMIT 1);
SELECT AVG(length) FROM film;

SELECT category_id, film_id FROM film_category ORDER BY category_id;