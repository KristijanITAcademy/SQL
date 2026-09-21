-- JOIN
-- do sada SELECT iz jedne tabele
-- u realnom svijetu RB mi select redove iz vise tabela
-- relationship
-- orders <-> customers
-- kolona : customer_id postoji u orders = FK
-- kolona : customer_id postoji u customers = PK
USE store;
SELECT *
FROM orders;

-- JOIN CROSS
-- svaki sa svakim redom
SELECT *
FROM orders
JOIN customers;

-- JOIN ON
-- join bez ona ne, nego sa ON, povezi one koje mi trebaju

SELECT order_id, 
customers.customer_id, first_name, last_name
FROM orders
JOIN customers
 ON orders.customer_id = customers.customer_id;
-- MySQL - > RDBMS 
-- RDBMS izvrsava query.. query spaja podatke iz dvije tabel
-- spaka ih  na nacin da prikazuje u rezultatu redove spojene 
-- kroz customer_id
-- 1. pronadi customer_id  =2 u tabeli customers
-- 2. pronadi customer_id = 2  u tabeli orders(order_id = 4, customer_id = 2)
-- (order_id = 7, customer_id = 2)
-- customer_id = 2, order_id = 11



