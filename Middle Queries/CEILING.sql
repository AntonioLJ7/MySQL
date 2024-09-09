/*
Escribe una consulta SQL que utilice la función CEILING para redondear hacia arriba los números de la columna rating_imdb 
en la tabla Episodios.
Asigna un alias rating_redondeado al resultado
*/
SELECT CEILING(rating_imdb) AS rating_redondeado
FROM episodios