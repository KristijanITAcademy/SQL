-- self join
-- tabelu mozemo povezati samu sa sobom
-- redove  u tabeli A koje povezivamo sa drugim redovima u tabeli A
-- u nekakvoj su korelaciji
-- redovi u istoj tabeli imaju neku poveznicu 
SELECT 
	e.employee_id,
    e.first_name 'Uposlenik',
    m.first_name 'Rukovodioc',
    m.employee_id
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id
    ORDER BY m.first_name;

-- da li je korisno spajati redove koji su povezani i nalaze se
-- u istoj tabeli
-- moramo uvoditi aliase, da znamo iz koje tabele vuce
-- podaci iz dva reda matching u jedan red
