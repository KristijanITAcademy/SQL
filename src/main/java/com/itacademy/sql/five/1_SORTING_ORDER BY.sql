-- PK su najcesce clustered index
-- pa je taj default select zapravo raden po tom clustered index tj PK

USE store;
SELECT*
FROM customers
ORDER BY first_name DESC;

SELECT*
FROM customers
ORDER BY state DESC,first_name ASC;