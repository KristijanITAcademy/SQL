-- UNION ERRORS
SELECT 
	first_name,
    last_name
FROM customers
UNION
SELECT 
	name
FROM shippers

-- Ima smisla kombinirati rezultate vise upita ako svi upiti traze isti broj kolona
-- nema smisla raditi to ako nije isti broj kolona