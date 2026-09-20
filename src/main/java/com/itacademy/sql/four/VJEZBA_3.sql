-- vjezba 3
-- Dohvati sve kupce cije
-- 1. first name su like elkaor ambur
-- 2. last name ends with ey ili on
-- 3. last name starts with my ili sadrzi se
-- 4. last name sadrzi b praceno sa r ili u

-- 1. 
SELECT *
FROM customers
WHERE first_name LIKE "%elka%" OR first_name LIKE "%ambur%";

SELECT *
FROM customers
WHERE last_name REGEXP 'ey$ | on$';


SELECT *
FROM customers
WHERE last_name REGEXP '^my | se';

SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';