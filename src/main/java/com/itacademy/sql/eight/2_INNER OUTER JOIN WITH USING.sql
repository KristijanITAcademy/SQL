-- USING CLAUSE
-- lista narudybi i svih koji su kreirali narudzbu
USE store;
SELECT 
	o.order_id,
    c.first_name,
    sh.name 'Dostavljac'
FROM orders o 
JOIN customers c
	USING (customer_id)
LEFT JOIN shippers sh
	USING (shipper_id);
-- 	ON o.customer_id = c.customer_id;
-- ne mozemo imati dvije kolone sa istim nazivom u jednoj tabeli
-- postizemo isti rezultat
-- isti customer se pojavljuje u dva reda
-- veza one to many - jedan customer vise narudzbi
-- kolona preko koje je uradeno spajanje se isto zove u obe kolone
-- 
