-- UNION
-- kombiniranje preko kolona iz vise tabela REDOVE koji imaju
-- zajednicku vrijednost spajajuce kolone
-- kombiniranje i redova sa vise tabela i da je to vrlo mocno
-- alter
-- npr. izvjestaj koji kreira sve narudzbe i uz svaku narudzbu
-- dodati tabelu i to na sljedeci nacin
-- ako je u trenutnoj godini - > active
-- ako je u prethodnim -> archived
-- prvi dio daj mi sve aktivne
SELECT 
	order_id,
    order_date,
    'Active' AS status
FROM orders
WHERE order_date = '2026-06-05'
UNION
SELECT 
	order_id,
    order_date,
    'Archived' AS status
FROM orders
WHERE order_date < '2026-01-01';
-- daj mi sve archived
-- Kako kombinirati redove archive i active
-- UNION - unija rezultata 
-- Zakljucak : koristenjem UNION mozemo kombinirati redove iz dva
-- ili vise upita