-- LIKE operator 
USE store;
-- zadatak: dohvati  sve kupce cije prezime pocinje sa 'b'

SELECT *
FROM customers
WHERE last_name LIKE 'b%';