-- vjezba 1
-- izlistaj sve proizvode iz tabele products
-- name,unit pric, new price (unit price * 1.1)


SELECT  name, unit_price, unit_price * 1.1 AS new_price 
FROM products;