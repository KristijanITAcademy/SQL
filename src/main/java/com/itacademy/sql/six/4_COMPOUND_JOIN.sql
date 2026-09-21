-- Compound Join condition 
-- u svim primjerima do sad koristili imai smo
-- samo jednu kolonu da jedinstveno predstavimo redove u nekoj tabeli 
-- orders, customers => customer_id
-- orders, order_statuses => status, order_status_id
-- medutim, postoje situacije kada to nije dovoljno, kada ne mozemo
-- koristit jednu kolonu za jedinstvenu IDENTIFIKACIJU reda u tabeli
 
 SELECT *
 FROM  order_items;
 -- sta ovdje predstavlja jedinstvenost reda ??
 -- nije unique order_id
 -- nije unique product_id
 -- njihova kombinacija jeste .. ne mozete pronaci 2 reda sa
 -- kombinacijom vrijednosti order_id = 8, product_d = 5
 -- ne smije postojati ova kombinacija u drugom redu 
 -- kompozitni primarni kljucevi COMPOSITE PK  
 
 -- kakve ovo ima veze sa JOIN clause ?
 -- tabela : order_items(PK - kombinacija order_id & product_id),
 -- order_item_notes(order_id, product_id)
 -- COMPOUND JOIN --- time se vrsi optimizacija
 SELECT *
 FROM order_items oi
 JOIN order_item_notes oin
		ON oi.order_id = oin.order_id
        AND oi.product_id = oin.product_id;
 
 
 