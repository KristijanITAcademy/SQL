USE store;
-- underscore
-- zelimo kupca cije je prezime sastavljeno od 6 karaktera
-- prvih 5 nas ne zanima al zadnje mora biti y
SELECT *
FROM customers
WHERE last_name LIKE '_____y'