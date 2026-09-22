-- using and composite PK
-- kombinacija dva PK je kompozitni primarni kljuc
-- posebno se mogu pojaviti u vise redova, ali kao kombinacija ne

SELECT*
FROM order_items oi
JOIN order_item_notes oin
	USING (order_id, product_id);
-- 	ON oi.order_id = oin.order_id;