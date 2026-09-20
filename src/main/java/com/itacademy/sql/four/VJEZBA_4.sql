-- vjezba 4
-- analiziraj bazu store i tabelu orders i dohvati mi sve narudzbe
-- koji nisu isporucene

SELECT *
FROM orders
WHERE shipper_id IS NULL;
