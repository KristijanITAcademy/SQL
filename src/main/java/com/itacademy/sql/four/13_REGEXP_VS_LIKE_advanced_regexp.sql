-- LIKE
-- REGEXP
-- dohvati sve kupce koji imaju rijec field i svom prezimenu
-- rezultat nekog naseg querya jest uvijek neki result set
-- contains "field" with LIKE and REGEXP
SELECT *
FROM customers 
-- WHERE last_name LIKE '%field%'
WHERE last_name REGEXP 'field';

-- zelimo da pocinje sa field
SELECT *
FROM customers
WHERE last_name REGEXP '^field';

-- zavrsava da field

SELECT *
FROM customers
WHERE last_name REGEXP 'field$';

-- Sto nam to treba regexp
-- Like ne moze :
-- Daj mi primjer
-- zelimo dohvatiti kupce cije prezime sadrzi field ili mac ili rose

SELECT *
FROM customers
WHERE last_name REGEXP 'field |mac |rose';

