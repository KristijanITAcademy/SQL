-- Primjer : zelimo kupce samo one koji su kreirali narudzbu

USE store;
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id;

-- zelimo sve kupce, i one koji su kreirali ali i one koji nisu
-- ponavljamo iste primjere ali ponavljanje je majka znanja

USE store;
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id;