## 1. Queries in MySQL Workbench.
# create new tab CMD + T /* a */
USE sakila; /* b */
SELECT * FROM actor; /* c */
SELECT * FROM actor WHERE last_name = "CAGE"; /* d */
SELECT * FROM actor WHERE first_name NOT IN ("ZERO" AND "NICK"); /* e */
SELECT * FROM actor WHERE first_name IN ("NICK" AND "JOHNNY"AND "JAMES" AND "MORGAN" OR "WHOOPI"); /* f */
SELECT * FROM actor WHERE actor_id BETWEEN 50 AND 100; /* g */
SELECT * FROM actor WHERE first_name LIKE "C%"; /* h */
SELECT * FROM actor ORDER BY first_name; /* i */
SELECT * FROM actor ORDER BY last_name DESC; /* j */
SELECT COUNT(*) FROM actor; /* k */
SELECT DISTINCT COUNT(first_name) FROM actor; /* l */
SELECT * FROM category WHERE category_id IN (11); /* m */
SELECT * FROM category WHERE category_id = 11; /* n */


## 2. More queries
INSERT INTO actor SET first_name = "Daniel", last_name = "Pedersen"; /* a */
INSERT INTO film_actor SET film_id = 205; /* b */
UPDATE actor SET first_name = "dannyboy", last_name = "yo" WHERE actor_id = "201"; /* c */
DELETE FROM actor WHERE actor_id = 201; /* d */


## 3. JOINS
SELECT * FROM category WHERE category_id = 11; /* a */
SELECT * FROM film INNER JOIN film_category ON film_id INNER JOIN category ON category_id WHERE category_id = 11; /* b */
