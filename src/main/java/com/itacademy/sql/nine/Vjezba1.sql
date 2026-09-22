-- Vjezba 1 
-- koliko ima filmova u nekoj godini, tj koliko je filmova izaslo
-- po godinama

USE sakila;
SELECT *
FROM film;

SELECT 
    COUNT(*) AS 'Godine',
    f.release_year
FROM film f
GROUP BY f.release_year;
