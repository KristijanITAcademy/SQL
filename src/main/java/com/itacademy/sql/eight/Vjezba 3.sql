-- VJEZBA 3
-- napraviti upite na tabelu customers i izvuci sljedece podatke:
-- customer_id,  first_name, points, 
-- type - ova kolona ne postoji u tabeli ali ce postojati u rez
-- KOLONA : type kolona -> definira kakav ste vi customer
-- Title kolone u rez treba biti type
-- Vrijednosti u rez koje cemo povezati sa razliciti redovima
-- ovise od iducih parametara:
-- 1. -> kupac ima < 2000 poena vrijednost, type- > bronze
-- 2. -> kupac ima <=2000 poena, type -> silver
-- 3. -> kupaci ima >= 30000 poena.. .gold
-- Potrebno je sortirati po first_name
-- 


USE store;
SELECT 
	customer_id,
    first_name,
    points,
	'Bronze' AS Type
FROM customers
WHERE points < 2000 
UNION
SELECT 
	customer_id,
    first_name,
    points,
	'SILVER' AS Type
FROM customers
WHERE points >= 2000 AND points < 3000
UNION
SELECT 
	customer_id,
    first_name,
    points,
	'GOLD' AS Type 
FROM customers
WHERE points >= 3000;
