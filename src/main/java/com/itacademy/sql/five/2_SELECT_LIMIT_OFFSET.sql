-- LIMIT operator
-- vrati mi result set ali ga limitiraj na 3 reda 
-- pagable
-- LIMIT ali postoji i OFFSET
-- pagination 
-- PAGE 1, PAGE_SIZE => 3 OFFEST=0, LIMIT = 3 ... 1 2 3
-- PAGE 2, PAGE_SIZE -> 3 OFFEST= PREVIOUS PAGE* PAGE_SIZE =3 LIMIT = 3
-- PAGE 3, PAGE_SIZE -> 3 OFFEST - PREVIOUS PAGEE *PAGE_SIZE= 6, LIMIT 3
-- .... 
USE store;
SELECT *
FROM customers
LIMIT 6, 3;
-- PRESKOCI PRVIH 6 I DAJ MI SLJEDECA 3 ELEMENTA 
 -- LIMIT OFFSET, SIZE
-- GUI BROWSER ---> Java Backend - > DB
-- Korisnik klikne na page = 4 page _size = 10
-- Reakcija GUI/frontend posalje OFFSET =(4-1)*10 = 30 LIMIT 10
-- Java Backend (Web service) OFFSET = 30 LIMIT 10
-- Java Backend query na DB  i RDBMS vrati rezultat upita
-- Java Backend spakuje tja rezultat od RDBMS i vrati na frontend
