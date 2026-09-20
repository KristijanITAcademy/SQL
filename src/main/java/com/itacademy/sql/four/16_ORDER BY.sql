-- order by clause
-- sortiranje
-- default je sortirano po PK
USE store;
SELECT *
FROM customers
ORDER BY first_name;


SELECT *
FROM customers
ORDER BY first_name DESC;

-- sortiranje po vise kolona
SELECT *
FROM customers
ORDER BY state, first_name;

SELECT *
FROM customers
ORDER BY state DESC, first_name DESC;







