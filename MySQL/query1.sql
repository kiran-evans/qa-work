CREATE DATABASE cinema;
USE cinema;
CREATE TABLE shows (
	film_id INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    film_title VARCHAR(30) DEFAULT 'Film Title' NOT NULL,
    film_rating VARCHAR(3) DEFAULT 'TBC' NOT NULL,
    show_date_time DATETIME NOT NULL,
    is_3D BOOL DEFAULT FALSE NOT NULL,
    tickets_available TINYINT DEFAULT 0 NOT NULL,
    ticket_price FLOAT DEFAULT 0.00 NOT NULL
);

CREATE TABLE snacks (
	snack_id INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    snack_name VARCHAR(30) DEFAULT 'Snack' NOT NULL,
    snack_price FLOAT DEFAULT 0.00 NOT NULL,
    snack_calories INT DEFAULT 0 NOT NULL,
    snack_ingredients VARCHAR(150) DEFAULT 'Ingredients' NOT NULL
);

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    customer_title VARCHAR(4) DEFAULT 'Mr.' NOT NULL,
    customer_fname VARCHAR(30) DEFAULT 'Joe' NOT NULL,
    customer_sname VARCHAR(30) DEFAULT 'Bloggs' NOT NULL
);

CREATE TABLE orders (
	order_id INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    film_id INT NOT NULL,
    FOREIGN KEY (film_id) REFERENCES shows(film_id),
    snack_id INT NOT NULL,
    FOREIGN KEY (snack_id) REFERENCES snacks(snack_id)
);

# DROP TABLE customers;

DESCRIBE orders;