-- VJEZBA 1
-- Direktor ude u kancelariju i kaze:
-- zelim znati na koji datum i ko je uradio uplatu i pomocu koje metode ?

USE invoicing;
SELECT 
    p.date 'Datum placanja',
    c.name 'Ime Klijenta',
    pm.name 'Naziv metode placanja'
FROM payments p 
JOIN clients c 
	USING (client_id)
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;