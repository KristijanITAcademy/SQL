-- ona strana od koje pocinjemo je lijeva strana
-- Vjezba 1
-- tabele products i order_items
-- Prikazi sve proizvode i kolicine(quantity) na stavkama narudzbi
-- a ukoliko neki proizvod nikad nije narucne quantity treba biti null

SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;

