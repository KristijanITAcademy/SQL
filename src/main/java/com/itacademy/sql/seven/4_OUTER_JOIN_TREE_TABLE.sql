-- spajanje 3 i vise tabela
-- zelimo spojit podatke
-- neke narudzbe imaju shipper_id null dok druge obratno !null
use store;
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    s.name 'Shipper Name'
FROM customers c
LEFT JOIN orders o 
	ON c.customer_id = o.customer_id
LEFT JOIN shippers s
	ON o.shipper_id= s.shipper_id;