-- film  
-- inventory
-- zadatak : sum zaradu od rentanja filmova i da prikazem sum zaradu
USE sakila;
SELECT 
	f.title,
    SUM(p.amount) AS Zarada
FROM film f
JOIN inventory i ON i.film_id = f.film_id
JOIN rental r ON r.inventory_id = i.inventory_id 
JOIN payment p ON p.rental_id = r.rental_id
GROUP BY f.title, f.film_id
ORDER BY zarada DESC;


