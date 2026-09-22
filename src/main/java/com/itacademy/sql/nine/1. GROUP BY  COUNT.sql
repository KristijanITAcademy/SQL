-- Agregatne funkcije
-- SUM, AVERAGE, COUNT, MIN, MAX - > dobro idu uz GROUPING BY
 USE sakila;
 SELECT *
 FROM film;
 
 -- zelimo prebrojati sve filmove
 -- odaberemo nesto sto jedinstveno predstavlja film
 SELECT count(film_id) 'Ukupan broj filmova'
 FROM film;
 
 -- izbrojati koliko ima filmova rejtinga PG, koliko ih ima PG = 13 /... itd
 -- koliko prebrojati koliko specificnih rejtinga 
 SELECT 
	f.rating,
    COUNT(*) AS film_count 
 FROM film f
 GROUP BY f.rating
 ORDER BY film_count;
 
 