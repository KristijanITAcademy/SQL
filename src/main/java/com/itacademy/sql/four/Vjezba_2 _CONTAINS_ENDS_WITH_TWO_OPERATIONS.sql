-- Vjezba2
-- dohvati sve kupce koji su skladisteni u tabeli customers
-- cija adresa sadrzi : 
 -- trial ili avenue
 -- i ciji phone number ends with 9
 
 USE store;
 SELECT *
 FROM customers
 WHERE (address LIKE '%trail%' OR address LIKE '%avenue%') 
 AND phone LIKE '%4';
 