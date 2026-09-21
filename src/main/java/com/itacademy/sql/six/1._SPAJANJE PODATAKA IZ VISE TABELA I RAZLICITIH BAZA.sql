-- spajanje podataka iz vise tabela
-- Baza : store, inventory...
-- JOINING accros DBs. Spajanej podatakka koji se nalaze u tabelama
-- a pri tome su tabele  u razlicitim bazama
-- JOIN store.order_items i  inventory.products
-- JOIN -> INNER JOIN
-- LEFT I RIGHT - > OUTER JOIN 
-- 

USE store;
SELECT *
FROM order_items; 

USE inventory;
SELECT *
FROM products; 

-- spajanje podataka izmedu tabela koje se nalaze u razlicitim bazama
-- mora se navesti prefiks baze 
SELECT 
	oi.order_id,
    oi.quantity,
    oi.unit_price 'Cijena po kojoj smo kupili',
    p.unit_price 'Trenutna cijena',
    p.name
FROM store.order_items oi
JOIN inventory.products p
	ON oi.product_id = p.product_id;