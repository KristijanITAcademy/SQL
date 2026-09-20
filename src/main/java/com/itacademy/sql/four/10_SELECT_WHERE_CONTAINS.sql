USE store;
-- dohvati cije ime sadrzava  'y'
SELECT *
FROM customers
WHERE last_name LIKE '%y%';
-- ne mora biti na kraju
-- moze na pocetku