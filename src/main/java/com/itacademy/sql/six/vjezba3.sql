-- vjezba 3
-- Baza : Invoicing
-- Menadzer: kreiraj mi izvjestaj koji prikazuje fakture sa imenom klijenta
-- i imenom payment metode
-- Rezultat izvjestaja: Payment dayte,  Invoice ID, iznos, 
-- ime klijenta, ime metode placanja
-- client ima name, client_id, 
USE invoicing; 
SELECT 
	i. invoice_date 'Datum fakturiranja',
    i.payment_date 'Datum placanja',
    i.number 'Broj fakture',
    i.invoice_total 'Iznos fakture',
    p.amount 'Uplaceni iznos',
    c.name 'Ime klijenta',
    pm.name 'Naziv metode placanja'
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN invoices i
	ON p.invoice_id = i.invoice_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;
