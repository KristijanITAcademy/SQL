-- VJEZBA 2
-- izmedu shippers i products
-- eksplicit pa implicit

USE store;
SELECT *
FROM shippers s
CROSS JOIN products p;

SELECT *
FROM shippers s, products p;