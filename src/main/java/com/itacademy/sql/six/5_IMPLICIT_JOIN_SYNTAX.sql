-- IMPLICIT join syntax
-- explicit
SELECT 
	o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
    
-- implicit syntax - samo ako se kolone isto zovu
SELECT 
	o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;
-- ne preporucuje
