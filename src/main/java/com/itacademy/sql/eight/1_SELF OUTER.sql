-- SELF OUTER JOIN
-- svaki left je i outer
-- uposlenici i koji imaju i koji nemaju rukovodioca

USE hr;
SELECT 
	e.employee_id,
    e.first_name,
    e.reports_to,
	m.first_name 'Nadredeni'
FROM employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id;