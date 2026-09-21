-- kako spajamo tabele, redove, 
-- spajamo ih najcesce po zajednickom sadrziocu, imaju istu vrijednost itd ....
-- spajamo redove koji imaju istu vrijednost customer_id.. to je samo p
-- ON kaze preko ceg se radi spajanje podataka 
-- INNER JOIN
USE store;
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
 JOIN orders o
		ON c.customer_id = o.customer_id;