-- OUTER JOIN : LEFT I RIGHT 
-- LEFT JOIN
-- u resultu dobijemo i presjek skupova i nesto sto nije presjek
-- daje i one kupce koji nemaju narudzbu
USE store;
SELECT *
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id;