USE cinema;

INSERT INTO customers (customer_title, customer_fname, customer_sname) VALUES ('Mr.', 'Greg', 'Johnson'), ('Lord', 'Chav', 'Poshman');

INSERT INTO shows (film_title, film_rating, show_date_time, is_3D, tickets_available, ticket_price) VALUES ('Lego Saving Private Ryan', 'PG', '2022-01-24 10:45:00.00000', true, 55, 12.00), ('Life of Pie: The Crust Years', '18', '2022-01-30 12:00:00.00000', false, 62, 15.00);

INSERT INTO snacks (snack_name, snack_price, snack_calories, snack_ingredients) VALUES ('Chocolate Giraffes', 7.50, 320, 'Sugar, cocoa, glucose syrup, milk, giraffe derivatives, preservatives, flavourings'), ('Woker-Cola', 3.00, 170, 'Carbonated water, sugar, woke flavouring, preservatives');

INSERT INTO orders (customer_id, film_id, snack_id) VALUES (2, 3, 4), (1, 2, 3);

DELETE FROM orders;

SELECT * FROM customers;

UPDATE customers SET customer_fname = 'Harry' WHERE customer_fname = 'John';

SHOW DATABASES;