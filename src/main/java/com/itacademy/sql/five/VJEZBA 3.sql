-- VJEZBA 3
-- tabele : order_items(kolone : order_id, product_id...)
-- 			products
-- ZADATAK : - napravite prikaz proizvoda u order_items ali i da dodatno
-- prikazete naziv proizvoda

SELECT
	oi.order_id,
	p.product_id,
    p.name,
    oi.quantity,
    p.unit_price
FROM order_items oi
JOIN products p 
	ON p.product_id = oi.product_id;
    
-- products : unit price
-- jedinicna cijena proizvoda na neki datum, opcenito
-- order_items: unit price
-- cijena po kojoj je product prodan
    
    