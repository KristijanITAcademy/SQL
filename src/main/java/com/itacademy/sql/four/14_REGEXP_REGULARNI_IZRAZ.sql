-- npr pocetak + kraj + struktura
-- phone : slovo, 3 cifre, crtica, 3 cifre, crtica 4 cifre
-- xxx-xxx-xxxx -> sve x su cifre
SELECT *
FROM customers
WHERE phone REGEXP '[0-9]{3}-[0-9]{3}-[0-9]{4}$';


-- zelimo sve kupce ciji last_name npr prije slova 'e' mora 
-- imati g ili 'i' ili 'm'

SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';

-- zelimo sve kupce cije last_name sadrzi e ali nakonslova e ide ili flush
-- ili m ili q

SELECT *
FROM customers
WHERE last_name REGEXP 'e[fmq]';

-- ^ pocetak
-- $ kraj
-- | logicko or
-- [abcd]
-- [a-f]