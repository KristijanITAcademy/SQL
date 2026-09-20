-- IS NULL
-- kako dohvatiti sve kupce cija vrijednost neke kolone nedostaje
-- npr. phone number

SELECT *
FROM customers
WHERE phone IS NULL;