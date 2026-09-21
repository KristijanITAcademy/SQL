
-- aliasi
SELECT 
		order_id,
        c.customer_id,-- 
        first_name, -- ode nema c jer postoji samo u customers
        last_name
FROM orders o
JOIN customers c
	ON c.customer_id = o.customer_id;
    
-- kada se koriste aliasi moraju se koristit do kraja,
-- onda nema koristenja naziva tabela 
-- ako imamo istoimene nazive u obje tabele, moramo izbjeci dvosmislenosti
-- RDBM mora znati od kud cupa podatke
    
    
    
    
    