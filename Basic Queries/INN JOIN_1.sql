/*
Escribe una consulta SQL que seleccione todos los campos de las tablas Series y Episodios donde el serie_id coincida entre ambas tablas,
 utiliza un INNER JOIN para realizar el join entre ambas tablas.
*/
SELECT * FROM series 
INNER JOIN episodios 
ON series.serie_id = episodios.serie_id
LIMIT 10