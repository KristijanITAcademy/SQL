-- JOINING rows from 3 or more tables, multiple
-- Primjer : orders -> order_id,customer_id,
-- 			customers: customer_id
-- 			order_statuses - > order_status_id, name
-- REZULTAT : order_id(orders), first name(customers), 
-- 							status_name (order_statuses)
-- ZAKLJUCAK : spajamo povezane redove iz 3 tabele
SELECT DISTINCT
	o.order_id  'Broj narudzbe',
    c.first_name 'Ime',
    os.name 'Status posiljke'
FROM orders o
JOIN customers c
	ON c.customer_id = o.customer_id
JOIN order_statuses os
	ON os.order_status_id = o.status;
    

		 
