-- Vjezba 2
-- koliko filmova ima svaki zanr
USE sakila;
SELECT	
	c.name AS castegory_name,
    COUNT(*) AS film_count
FROM category c
JOIN film_category fc 
	ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY film_count DESC;

-- najpopularniji zanrovi prije 2000 godine

SELECT	
	c.name AS castegory_name,
    COUNT(*) AS film_count
FROM category c
JOIN film_category fc ON fc.category_id = c.category_id
JOIN film f ON f.film_id = fc.film_id
WHERE f.release_year < 2007
GROUP BY c.name
ORDER BY film_count DESC;