-- asterisk nije nekada dobro koristit
-- vraca sve kolon, a nas svi ti podaci ne zanimaju
-- drugi je razlog ako je BIG TABLE, ima milion redova  *, zna biti ne efikasan
-- najbolje bi bilo select one podatke koje nam samo trebaju

SELECT
	first_name, 
    last_name, 
    points, 
    (points+10)*100 AS 'discount points'
FROM customers; 