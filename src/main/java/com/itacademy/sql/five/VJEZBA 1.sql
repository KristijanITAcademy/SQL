-- VJEZBA 1
-- uradi upit na tebelu oreder_items, dohvat sve stavke narudzbe 2 i sortiraj
-- po total price
-- sortirati stavke po total price DESC
USE store;
SELECT 
	order_id,
    (quantity)* unit_price AS Total_price
FROM order_items
WHERE order_id = 2 
ORDER BY Total_price DESC;
