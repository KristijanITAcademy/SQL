-- VJEZBA 2
-- dohvati mi top 3 lojalna kupca
-- parametar lojalnosti je broj poena koje su ostvarili
-- u nasem shop-u
USE store;
SELECT 
	first_name, 
    points
FROM customers
ORDER BY points DESC
LIMIT 3;