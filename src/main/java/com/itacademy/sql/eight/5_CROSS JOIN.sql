-- Cross JOIN
-- kada zelimo kombinirati svaki red sa svakim iz druge tabele

USE store;
SELECT 
	c.first_name,
    o.order_id
FROM customers c -- eksplicitna sintaksa za cross
CROSS JOIN orders o;

USE store;
SELECT 
	c.first_name,
    o.order_id
FROM customers c, orders o; -- implicitna sintaksa za cross

