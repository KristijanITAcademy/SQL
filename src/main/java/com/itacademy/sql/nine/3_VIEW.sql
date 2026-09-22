-- view
-- ovaj rezultat mozemo skladistit u nesto sto se zove
-- view 
-- akop postoji cak mozemo napisati ovako


-- CREATE OR REPLACE VIEW


CREATE VIEW popularni_zanrovi_prije_2017
AS
SELECT	
	c.name AS castegory_name,
    COUNT(*) AS film_count
FROM category c
JOIN film_category fc ON fc.category_id = c.category_id
JOIN film f ON f.film_id = fc.film_id
WHERE f.release_year < 2017
GROUP BY c.name
ORDER BY film_count DESC;