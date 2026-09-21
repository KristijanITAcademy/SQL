-- OUTER JOINS
-- Ranije smo govorili 
-- INNER JOIN
-- OUTER JOIN 

-- koje probleme nama rijesava outer join ?

SELECT 
	o.order_id,
    c.customer_id,
    c.first_name
FROM orders o
JOIN customers c 
	ON o.customer_id=c.customer_id;
    
-- Pogledajte result upita iznad,sto nedostaje ? 
-- nedostaju svi kupci
-- Primjer: Zelim vidjeti sve kupce, i ukoliko 
-- su kupci kreirali narudzbe i njihov order id
-- odgovor je OUTER JOIN 
-- left i outer su jednaki samo drugacije posmatranje
-- nekako logicnije sa lijeva na desno 
    
SELECT 
	o.order_id,
    c.customer_id,
    c.first_name
FROM orders o
RIGHT JOIN customers c 
	ON o.customer_id=c.customer_id;
    
    